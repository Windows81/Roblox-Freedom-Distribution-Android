package d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f7797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f7798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f7799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f7801e;
    o f;
    o g;

    o() {
        this.f7797a = new byte[8192];
        this.f7801e = true;
        this.f7800d = false;
    }

    o(o oVar) {
        this(oVar.f7797a, oVar.f7798b, oVar.f7799c);
        oVar.f7800d = true;
    }

    o(byte[] bArr, int i, int i2) {
        this.f7797a = bArr;
        this.f7798b = i;
        this.f7799c = i2;
        this.f7801e = false;
        this.f7800d = true;
    }

    public o a() {
        o oVar = this.f;
        if (oVar == this) {
            oVar = null;
        }
        o oVar2 = this.g;
        oVar2.f = this.f;
        this.f.g = oVar2;
        this.f = null;
        this.g = null;
        return oVar;
    }

    public o a(o oVar) {
        oVar.g = this;
        oVar.f = this.f;
        this.f.g = oVar;
        this.f = oVar;
        return oVar;
    }

    public o a(int i) {
        o oVarA;
        if (i <= 0 || i > this.f7799c - this.f7798b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            oVarA = new o(this);
        } else {
            oVarA = p.a();
            System.arraycopy(this.f7797a, this.f7798b, oVarA.f7797a, 0, i);
        }
        oVarA.f7799c = oVarA.f7798b + i;
        this.f7798b += i;
        this.g.a(oVarA);
        return oVarA;
    }

    public void b() {
        o oVar = this.g;
        if (oVar == this) {
            throw new IllegalStateException();
        }
        if (oVar.f7801e) {
            int i = this.f7799c - this.f7798b;
            if (i > (8192 - oVar.f7799c) + (oVar.f7800d ? 0 : oVar.f7798b)) {
                return;
            }
            a(this.g, i);
            a();
            p.a(this);
        }
    }

    public void a(o oVar, int i) {
        if (!oVar.f7801e) {
            throw new IllegalArgumentException();
        }
        int i2 = oVar.f7799c;
        if (i2 + i > 8192) {
            if (oVar.f7800d) {
                throw new IllegalArgumentException();
            }
            int i3 = oVar.f7798b;
            if ((i2 + i) - i3 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = oVar.f7797a;
            System.arraycopy(bArr, i3, bArr, 0, i2 - i3);
            oVar.f7799c -= oVar.f7798b;
            oVar.f7798b = 0;
        }
        System.arraycopy(this.f7797a, this.f7798b, oVar.f7797a, oVar.f7799c, i);
        oVar.f7799c += i;
        this.f7798b += i;
    }
}
