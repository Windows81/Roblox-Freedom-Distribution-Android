package androidx.constraintlayout.a.a;

import androidx.constraintlayout.a.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final f f1118a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f1119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f1120c;
    androidx.constraintlayout.a.h f;
    private m g = new m(this);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1121d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f1122e = -1;
    private b h = b.NONE;
    private a i = a.RELAXED;
    private int j = 0;

    public enum a {
        RELAXED,
        STRICT
    }

    public enum b {
        NONE,
        STRONG,
        WEAK
    }

    public enum c {
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public m a() {
        return this.g;
    }

    public e(f fVar, c cVar) {
        this.f1118a = fVar;
        this.f1119b = cVar;
    }

    public androidx.constraintlayout.a.h b() {
        return this.f;
    }

    public void a(androidx.constraintlayout.a.c cVar) {
        androidx.constraintlayout.a.h hVar = this.f;
        if (hVar == null) {
            this.f = new androidx.constraintlayout.a.h(h.a.UNRESTRICTED, null);
        } else {
            hVar.b();
        }
    }

    public f c() {
        return this.f1118a;
    }

    public c d() {
        return this.f1119b;
    }

    public int e() {
        e eVar;
        if (this.f1118a.l() == 8) {
            return 0;
        }
        if (this.f1122e > -1 && (eVar = this.f1120c) != null && eVar.f1118a.l() == 8) {
            return this.f1122e;
        }
        return this.f1121d;
    }

    public b f() {
        return this.h;
    }

    public e g() {
        return this.f1120c;
    }

    public int h() {
        return this.j;
    }

    public void i() {
        this.f1120c = null;
        this.f1121d = 0;
        this.f1122e = -1;
        this.h = b.STRONG;
        this.j = 0;
        this.i = a.RELAXED;
        this.g.b();
    }

    public boolean a(e eVar, int i, b bVar, int i2) {
        return a(eVar, i, -1, bVar, i2, false);
    }

    public boolean a(e eVar, int i, int i2, b bVar, int i3, boolean z) {
        if (eVar == null) {
            this.f1120c = null;
            this.f1121d = 0;
            this.f1122e = -1;
            this.h = b.NONE;
            this.j = 2;
            return true;
        }
        if (!z && !a(eVar)) {
            return false;
        }
        this.f1120c = eVar;
        if (i > 0) {
            this.f1121d = i;
        } else {
            this.f1121d = 0;
        }
        this.f1122e = i2;
        this.h = bVar;
        this.j = i3;
        return true;
    }

    public boolean j() {
        return this.f1120c != null;
    }

    public boolean a(e eVar) {
        if (eVar == null) {
            return false;
        }
        c cVarD = eVar.d();
        c cVar = this.f1119b;
        if (cVarD == cVar) {
            return cVar != c.BASELINE || (eVar.c().z() && c().z());
        }
        switch (AnonymousClass1.f1123a[this.f1119b.ordinal()]) {
            case 1:
                return (cVarD == c.BASELINE || cVarD == c.CENTER_X || cVarD == c.CENTER_Y) ? false : true;
            case 2:
            case 3:
                boolean z = cVarD == c.LEFT || cVarD == c.RIGHT;
                if (eVar.c() instanceof i) {
                    return z || cVarD == c.CENTER_X;
                }
                return z;
            case 4:
            case 5:
                boolean z2 = cVarD == c.TOP || cVarD == c.BOTTOM;
                if (eVar.c() instanceof i) {
                    return z2 || cVarD == c.CENTER_Y;
                }
                return z2;
            case 6:
            case 7:
            case 8:
            case 9:
                return false;
            default:
                throw new AssertionError(this.f1119b.name());
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.a.a.e$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1123a;

        static {
            int[] iArr = new int[c.values().length];
            f1123a = iArr;
            try {
                iArr[c.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1123a[c.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1123a[c.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1123a[c.TOP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1123a[c.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f1123a[c.BASELINE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f1123a[c.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f1123a[c.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f1123a[c.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public String toString() {
        return this.f1118a.m() + ":" + this.f1119b.toString();
    }
}
