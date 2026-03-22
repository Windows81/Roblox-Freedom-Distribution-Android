package android.support.v4.view;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewParent f1086a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewParent f1087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f1088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1089d;
    private int[] e;

    public k(View view) {
        this.f1088c = view;
    }

    public void a(boolean z) {
        if (this.f1089d) {
            s.u(this.f1088c);
        }
        this.f1089d = z;
    }

    public boolean a() {
        return this.f1089d;
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
        if (a()) {
            View view = this.f1088c;
            for (ViewParent parent = this.f1088c.getParent(); parent != null; parent = parent.getParent()) {
                if (v.a(parent, view, this.f1088c, i, i2)) {
                    a(i2, parent);
                    v.b(parent, view, this.f1088c, i, i2);
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
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
            v.a(viewParentD, this.f1088c, i);
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
        if (i != 0 || i2 != 0 || i3 != 0 || i4 != 0) {
            if (iArr == null) {
                i6 = 0;
                i7 = 0;
            } else {
                this.f1088c.getLocationInWindow(iArr);
                int i8 = iArr[0];
                i6 = iArr[1];
                i7 = i8;
            }
            v.a(viewParentD, this.f1088c, i, i2, i3, i4, i5);
            if (iArr != null) {
                this.f1088c.getLocationInWindow(iArr);
                iArr[0] = iArr[0] - i7;
                iArr[1] = iArr[1] - i6;
            }
            return true;
        }
        if (iArr != null) {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        return false;
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2) {
        return a(i, i2, iArr, iArr2, 0);
    }

    public boolean a(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent viewParentD;
        int i4;
        int i5;
        int[] iArr3;
        if (!a() || (viewParentD = d(i3)) == null) {
            return false;
        }
        if (i != 0 || i2 != 0) {
            if (iArr2 != null) {
                this.f1088c.getLocationInWindow(iArr2);
                int i6 = iArr2[0];
                i4 = iArr2[1];
                i5 = i6;
            } else {
                i4 = 0;
                i5 = 0;
            }
            if (iArr == null) {
                if (this.e == null) {
                    this.e = new int[2];
                }
                iArr3 = this.e;
            } else {
                iArr3 = iArr;
            }
            iArr3[0] = 0;
            iArr3[1] = 0;
            v.a(viewParentD, this.f1088c, i, i2, iArr3, i3);
            if (iArr2 != null) {
                this.f1088c.getLocationInWindow(iArr2);
                iArr2[0] = iArr2[0] - i5;
                iArr2[1] = iArr2[1] - i4;
            }
            return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
        }
        if (iArr2 == null) {
            return false;
        }
        iArr2[0] = 0;
        iArr2[1] = 0;
        return false;
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent viewParentD;
        if (!a() || (viewParentD = d(0)) == null) {
            return false;
        }
        return v.a(viewParentD, this.f1088c, f, f2, z);
    }

    public boolean a(float f, float f2) {
        ViewParent viewParentD;
        if (!a() || (viewParentD = d(0)) == null) {
            return false;
        }
        return v.a(viewParentD, this.f1088c, f, f2);
    }

    private ViewParent d(int i) {
        switch (i) {
            case 0:
                return this.f1086a;
            case 1:
                return this.f1087b;
            default:
                return null;
        }
    }

    private void a(int i, ViewParent viewParent) {
        switch (i) {
            case 0:
                this.f1086a = viewParent;
                break;
            case 1:
                this.f1087b = viewParent;
                break;
        }
    }
}
