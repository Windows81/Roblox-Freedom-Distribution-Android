package androidx.core.h;

import android.os.Build;
import android.view.WindowInsets;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1514a;

    private z(Object obj) {
        this.f1514a = obj;
    }

    public int a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1514a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1514a).getSystemWindowInsetTop();
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1514a).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1514a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public boolean e() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f1514a).isConsumed();
        }
        return false;
    }

    public z a(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new z(((WindowInsets) this.f1514a).replaceSystemWindowInsets(i, i2, i3, i4));
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Object obj2 = this.f1514a;
        Object obj3 = ((z) obj).f1514a;
        return obj2 == null ? obj3 == null : obj2.equals(obj3);
    }

    public int hashCode() {
        Object obj = this.f1514a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    static z a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new z(obj);
    }

    static Object a(z zVar) {
        if (zVar == null) {
            return null;
        }
        return zVar.f1514a;
    }
}
