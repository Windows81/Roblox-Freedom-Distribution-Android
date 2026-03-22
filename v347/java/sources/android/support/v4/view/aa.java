package android.support.v4.view;

import android.os.Build;
import android.view.WindowInsets;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1069a;

    private aa(Object obj) {
        this.f1069a = obj;
    }

    public int a() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1069a).getSystemWindowInsetLeft();
        }
        return 0;
    }

    public int b() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1069a).getSystemWindowInsetTop();
        }
        return 0;
    }

    public int c() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1069a).getSystemWindowInsetRight();
        }
        return 0;
    }

    public int d() {
        if (Build.VERSION.SDK_INT >= 20) {
            return ((WindowInsets) this.f1069a).getSystemWindowInsetBottom();
        }
        return 0;
    }

    public boolean e() {
        if (Build.VERSION.SDK_INT >= 21) {
            return ((WindowInsets) this.f1069a).isConsumed();
        }
        return false;
    }

    public aa a(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 20) {
            return new aa(((WindowInsets) this.f1069a).replaceSystemWindowInsets(i, i2, i3, i4));
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
        aa aaVar = (aa) obj;
        return this.f1069a == null ? aaVar.f1069a == null : this.f1069a.equals(aaVar.f1069a);
    }

    public int hashCode() {
        if (this.f1069a == null) {
            return 0;
        }
        return this.f1069a.hashCode();
    }

    static aa a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new aa(obj);
    }

    static Object a(aa aaVar) {
        if (aaVar == null) {
            return null;
        }
        return aaVar.f1069a;
    }
}
