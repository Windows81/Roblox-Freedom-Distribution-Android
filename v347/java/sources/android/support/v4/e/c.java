package android.support.v4.e;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f895c;
    private final int f;
    private final int g;
    private final String h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f893a = new Object();
    private Handler.Callback e = new Handler.Callback() { // from class: android.support.v4.e.c.1
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    c.this.a();
                    return true;
                case 1:
                    c.this.b((Runnable) message.obj);
                    return true;
                default:
                    return true;
            }
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f896d = 0;

    public interface a<T> {
        void a(T t);
    }

    public c(String str, int i, int i2) {
        this.h = str;
        this.g = i;
        this.f = i2;
    }

    private void a(Runnable runnable) {
        synchronized (this.f893a) {
            if (this.f894b == null) {
                this.f894b = new HandlerThread(this.h, this.g);
                this.f894b.start();
                this.f895c = new Handler(this.f894b.getLooper(), this.e);
                this.f896d++;
            }
            this.f895c.removeMessages(0);
            this.f895c.sendMessage(this.f895c.obtainMessage(1, runnable));
        }
    }

    public <T> void a(final Callable<T> callable, final a<T> aVar) {
        final Handler handler = new Handler();
        a(new Runnable() { // from class: android.support.v4.e.c.2
            @Override // java.lang.Runnable
            public void run() {
                final Object objCall;
                try {
                    objCall = callable.call();
                } catch (Exception e) {
                    objCall = null;
                }
                handler.post(new Runnable() { // from class: android.support.v4.e.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a(objCall);
                    }
                });
            }
        });
    }

    public <T> T a(final Callable<T> callable, int i) throws InterruptedException {
        T t;
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        a(new Runnable() { // from class: android.support.v4.e.c.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception e) {
                }
                reentrantLock.lock();
                try {
                    atomicBoolean.set(false);
                    conditionNewCondition.signal();
                } finally {
                    reentrantLock.unlock();
                }
            }
        });
        reentrantLock.lock();
        try {
            if (!atomicBoolean.get()) {
                t = (T) atomicReference.get();
            } else {
                long nanos = TimeUnit.MILLISECONDS.toNanos(i);
                do {
                    try {
                        nanos = conditionNewCondition.awaitNanos(nanos);
                    } catch (InterruptedException e) {
                    }
                    if (!atomicBoolean.get()) {
                        t = (T) atomicReference.get();
                    }
                } while (nanos > 0);
                throw new InterruptedException("timeout");
            }
            return t;
        } finally {
            reentrantLock.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Runnable runnable) {
        runnable.run();
        synchronized (this.f893a) {
            this.f895c.removeMessages(0);
            this.f895c.sendMessageDelayed(this.f895c.obtainMessage(0), this.f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        synchronized (this.f893a) {
            if (!this.f895c.hasMessages(1)) {
                this.f894b.quit();
                this.f894b = null;
                this.f895c = null;
            }
        }
    }
}
