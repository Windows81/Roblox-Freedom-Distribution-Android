package androidx.core.d;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f1363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1364d;

    public interface a {
        void a();
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f1361a;
        }
        return z;
    }

    public void b() {
        if (a()) {
            throw new c();
        }
    }

    public void c() {
        synchronized (this) {
            if (this.f1361a) {
                return;
            }
            this.f1361a = true;
            this.f1364d = true;
            a aVar = this.f1362b;
            Object obj = this.f1363c;
            if (aVar != null) {
                try {
                    aVar.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f1364d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f1364d = false;
                notifyAll();
            }
        }
    }

    public Object d() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f1363c == null) {
                CancellationSignal cancellationSignal = new CancellationSignal();
                this.f1363c = cancellationSignal;
                if (this.f1361a) {
                    cancellationSignal.cancel();
                }
            }
            obj = this.f1363c;
        }
        return obj;
    }
}
