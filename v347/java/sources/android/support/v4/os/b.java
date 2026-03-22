package android.support.v4.os;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f1034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f1035c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1036d;

    public interface a {
        void a();
    }

    public boolean a() {
        boolean z;
        synchronized (this) {
            z = this.f1033a;
        }
        return z;
    }

    public void b() {
        if (a()) {
            throw new d();
        }
    }

    public void c() {
        synchronized (this) {
            if (!this.f1033a) {
                this.f1033a = true;
                this.f1036d = true;
                a aVar = this.f1034b;
                Object obj = this.f1035c;
                if (aVar != null) {
                    try {
                        aVar.a();
                    } catch (Throwable th) {
                        synchronized (this) {
                            this.f1036d = false;
                            notifyAll();
                            throw th;
                        }
                    }
                }
                if (obj != null && Build.VERSION.SDK_INT >= 16) {
                    ((CancellationSignal) obj).cancel();
                }
                synchronized (this) {
                    this.f1036d = false;
                    notifyAll();
                }
            }
        }
    }

    public Object d() {
        Object obj;
        if (Build.VERSION.SDK_INT < 16) {
            return null;
        }
        synchronized (this) {
            if (this.f1035c == null) {
                this.f1035c = new CancellationSignal();
                if (this.f1033a) {
                    ((CancellationSignal) this.f1035c).cancel();
                }
            }
            obj = this.f1035c;
        }
        return obj;
    }
}
