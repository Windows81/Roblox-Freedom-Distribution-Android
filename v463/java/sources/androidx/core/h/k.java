package androidx.core.h;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewParent f1483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewParent f1484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f1485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int[] f1487e;

    public k(View view) {
        this.f1485c = view;
    }

    public void a(boolean z) {
        if (this.f1486d) {
            r.v(this.f1485c);
        }
        this.f1486d = z;
    }

    public boolean a() {
        return this.f1486d;
    }

    public boolean b() {
        return a(0);
    }

    public boolean a(int i) {
        return d(i) != null;
    }

    public boolean b(int i) {
        return a(i, 0);
    }

    public boolean a(int i, int i2) {
        if (a(i2)) {
            return true;
        }
        if (!a()) {
            return false;
        }
        View view = this.f1485c;
        for (ViewParent parent = this.f1485c.getParent(); parent != null; parent = parent.getParent()) {
            if (u.a(parent, view, this.f1485c, i, i2)) {
                a(i2, parent);
                u.b(parent, view, this.f1485c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public void c() {
        c(0);
    }

    public void c(int i) {
        ViewParent viewParentD = d(i);
        if (viewParentD != null) {
            u.a(viewParentD, this.f1485c, i);
            a(i, (ViewParent) null);
        }
    }

    public boolean a(int i, int i2, int i3, int i4, int[] iArr) {
        return a(i, i2, i3, i4, iArr, 0);
    }

    public boolean a(int i, int i2, int i3, int i4, int[] iArr, int i5) {
        ViewParent viewParentD;
        int i6;
        int i7;
        if (!a() || (viewParentD = d(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f1485c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        u.a(viewParentD, this.f1485c, i, i2, i3, i4, i5);
        if (iArr != null) {
            this.f1485c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2) {
        return a(i, i2, iArr, iArr2, 0);
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent viewParentD;
        int i4;
        int i5;
        if (!a() || (viewParentD = d(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f1485c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            if (this.f1487e == null) {
                this.f1487e = new int[2];
            }
            iArr = this.f1487e;
        }
        iArr[0] = 0;
        iArr[1] = 0;
        u.a(viewParentD, this.f1485c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f1485c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent viewParentD;
        if (!a() || (viewParentD = d(0)) == null) {
            return false;
        }
        return u.a(viewParentD, this.f1485c, f, f2, z);
    }

    public boolean a(float f, float f2) {
        ViewParent viewParentD;
        if (!a() || (viewParentD = d(0)) == null) {
            return false;
        }
        return u.a(viewParentD, this.f1485c, f, f2);
    }

    private ViewParent d(int i) {
        if (i == 0) {
            return this.f1483a;
        }
        if (i != 1) {
            return null;
        }
        return this.f1484b;
    }

    private void a(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f1483a = viewParent;
        } else {
            if (i != 1) {
                return;
            }
            this.f1484b = viewParent;
        }
    }
}
