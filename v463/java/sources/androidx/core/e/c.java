package androidx.core.e;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HandlerThread f1392b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Handler f1393c;
    private final int f;
    private final int g;
    private final String h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1391a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler.Callback f1395e = new Handler.Callback() { // from class: androidx.core.e.c.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                c.this.a();
                return true;
            }
            if (i != 1) {
                return true;
            }
            c.this.a((Runnable) message.obj);
            return true;
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1394d = 0;

    public interface a<T> {
        void a(T t);
    }

    public c(String str, int i, int i2) {
        this.h = str;
        this.g = i;
        this.f = i2;
    }

    private void b(Runnable runnable) {
        synchronized (this.f1391a) {
            if (this.f1392b == null) {
                HandlerThread handlerThread = new HandlerThread(this.h, this.g);
                this.f1392b = handlerThread;
                handlerThread.start();
                this.f1393c = new Handler(this.f1392b.getLooper(), this.f1395e);
                this.f1394d++;
            }
            this.f1393c.removeMessages(0);
            this.f1393c.sendMessage(this.f1393c.obtainMessage(1, runnable));
        }
    }

    public <T> void a(final Callable<T> callable, final a<T> aVar) {
        final Handler handler = new Handler();
        b(new Runnable() { // from class: androidx.core.e.c.2
            @Override // java.lang.Runnable
            public void run() {
                final Object objCall;
                try {
                    objCall = callable.call();
                } catch (Exception unused) {
                    objCall = null;
                }
                handler.post(new Runnable() { // from class: androidx.core.e.c.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aVar.a(objCall);
                    }
                });
            }
        });
    }

    public <T> T a(final Callable<T> callable, int i) throws InterruptedException {
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition conditionNewCondition = reentrantLock.newCondition();
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        b(new Runnable() { // from class: androidx.core.e.c.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    atomicReference.set(callable.call());
                } catch (Exception unused) {
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
                return (T) atomicReference.get();
            }
            long nanos = TimeUnit.MILLISECONDS.toNanos(i);
            do {
                try {
                    nanos = conditionNewCondition.awaitNanos(nanos);
                } catch (InterruptedException unused) {
                }
                if (!atomicBoolean.get()) {
                    return (T) atomicReference.get();
                }
            } while (nanos > 0);
            throw new InterruptedException("timeout");
        } finally {
            reentrantLock.unlock();
        }
    }

    void a(Runnable runnable) {
        runnable.run();
        synchronized (this.f1391a) {
            this.f1393c.removeMessages(0);
            this.f1393c.sendMessageDelayed(this.f1393c.obtainMessage(0), this.f);
        }
    }

    void a() {
        synchronized (this.f1391a) {
            if (this.f1393c.hasMessages(1)) {
                return;
            }
            this.f1392b.quit();
            this.f1392b = null;
            this.f1393c = null;
        }
    }
}
