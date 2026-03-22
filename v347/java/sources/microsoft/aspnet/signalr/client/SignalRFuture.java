package microsoft.aspnet.signalr.client;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SignalRFuture<V> implements Future<V> {
    boolean mIsCancelled = false;
    boolean mCancelInProgress = false;
    boolean mIsDone = false;
    private V mResult = null;
    private final List<Runnable> mOnCancelled = new ArrayList();
    private List<Action<V>> mOnDone = new ArrayList();
    private Object mDoneLock = new Object();
    private List<ErrorCallback> mErrorCallback = new ArrayList();
    private Queue<Throwable> mErrorQueue = new ConcurrentLinkedQueue();
    private Object mErrorLock = new Object();
    private Throwable mLastError = null;
    private Semaphore mResultSemaphore = new Semaphore(1);

    public void onCancelled(Runnable runnable) {
        synchronized (this.mOnCancelled) {
            if (!this.mCancelInProgress) {
                this.mOnCancelled.add(runnable);
            }
        }
    }

    public void cancel() {
        synchronized (this.mOnCancelled) {
            this.mIsCancelled = true;
            this.mCancelInProgress = true;
            Iterator<Runnable> it = this.mOnCancelled.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
            this.mCancelInProgress = false;
        }
        this.mResultSemaphore.release();
    }

    public void setResult(V v) {
        synchronized (this.mDoneLock) {
            this.mResult = v;
            this.mIsDone = true;
            if (this.mOnDone.size() > 0) {
                Iterator<Action<V>> it = this.mOnDone.iterator();
                while (it.hasNext()) {
                    try {
                        it.next().run(v);
                    } catch (Exception e) {
                        triggerError(e);
                    }
                }
            }
        }
        this.mResultSemaphore.release();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.mIsCancelled;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        cancel();
        return true;
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        try {
            return get(2147483647L, TimeUnit.MILLISECONDS);
        } catch (TimeoutException e) {
            throw new ExecutionException(e);
        }
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.mResultSemaphore.tryAcquire(j, timeUnit)) {
            if (errorWasTriggered()) {
                throw new ExecutionException(this.mLastError);
            }
            if (isCancelled()) {
                throw new InterruptedException("Operation was cancelled");
            }
            return this.mResult;
        }
        throw new TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.mIsDone;
    }

    public SignalRFuture<V> done(Action<V> action) {
        synchronized (this.mDoneLock) {
            this.mOnDone.add(action);
            if (isDone()) {
                try {
                    action.run(get());
                } catch (Exception e) {
                    triggerError(e);
                }
            }
        }
        return this;
    }

    public SignalRFuture<V> onError(ErrorCallback errorCallback) {
        synchronized (this.mErrorLock) {
            this.mErrorCallback.add(errorCallback);
            while (!this.mErrorQueue.isEmpty()) {
                if (errorCallback != null) {
                    errorCallback.onError(this.mErrorQueue.poll());
                }
            }
        }
        return this;
    }

    public void triggerError(Throwable th) {
        synchronized (this.mErrorLock) {
            this.mLastError = th;
            this.mResultSemaphore.release();
            if (this.mErrorCallback.size() > 0) {
                Iterator<ErrorCallback> it = this.mErrorCallback.iterator();
                while (it.hasNext()) {
                    it.next().onError(th);
                }
            } else {
                this.mErrorQueue.add(th);
            }
        }
    }

    public boolean errorWasTriggered() {
        return this.mLastError != null;
    }
}
