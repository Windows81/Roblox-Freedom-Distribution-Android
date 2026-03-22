package androidx.appcompat.widget;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f1011a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1012b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1013c = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1014d = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1015e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    m() {
    }

    public int a() {
        return this.f1011a;
    }

    public int b() {
        return this.f1012b;
    }

    public int c() {
        return this.g ? this.f1012b : this.f1011a;
    }

    public int d() {
        return this.g ? this.f1011a : this.f1012b;
    }

    public void a(int i, int i2) {
        this.f1013c = i;
        this.f1014d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1011a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f1012b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1011a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1012b = i2;
        }
    }

    public void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1015e = i;
            this.f1011a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.f1012b = i2;
        }
    }

    public void a(boolean z) {
        if (z == this.g) {
            return;
        }
        this.g = z;
        if (!this.h) {
            this.f1011a = this.f1015e;
            this.f1012b = this.f;
            return;
        }
        if (z) {
            int i = this.f1014d;
            if (i == Integer.MIN_VALUE) {
                i = this.f1015e;
            }
            this.f1011a = i;
            int i2 = this.f1013c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f;
            }
            this.f1012b = i2;
            return;
        }
        int i3 = this.f1013c;
        if (i3 == Integer.MIN_VALUE) {
            i3 = this.f1015e;
        }
        this.f1011a = i3;
        int i4 = this.f1014d;
        if (i4 == Integer.MIN_VALUE) {
            i4 = this.f;
        }
        this.f1012b = i4;
    }
}
