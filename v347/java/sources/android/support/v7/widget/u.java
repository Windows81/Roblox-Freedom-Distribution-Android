package android.support.v7.widget;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1716a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1717b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1718c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1719d = Integer.MIN_VALUE;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    u() {
    }

    public int a() {
        return this.f1716a;
    }

    public int b() {
        return this.f1717b;
    }

    public int c() {
        return this.g ? this.f1717b : this.f1716a;
    }

    public int d() {
        return this.g ? this.f1716a : this.f1717b;
    }

    public void a(int i, int i2) {
        this.f1718c = i;
        this.f1719d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1716a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1717b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1716a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1717b = i2;
        }
    }

    public void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f1716a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f1717b = i2;
        }
    }

    public void a(boolean z) {
        if (z != this.g) {
            this.g = z;
            if (this.h) {
                if (z) {
                    this.f1716a = this.f1719d != Integer.MIN_VALUE ? this.f1719d : this.e;
                    this.f1717b = this.f1718c != Integer.MIN_VALUE ? this.f1718c : this.f;
                    return;
                } else {
                    this.f1716a = this.f1718c != Integer.MIN_VALUE ? this.f1718c : this.e;
                    this.f1717b = this.f1719d != Integer.MIN_VALUE ? this.f1719d : this.f;
                    return;
                }
            }
            this.f1716a = this.e;
            this.f1717b = this.f;
        }
    }
}
