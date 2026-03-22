package c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final byte[] f2162a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2163b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2164c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f2165d;
    boolean e;
    o f;
    o g;

    o() {
        this.f2162a = new byte[8192];
        this.e = true;
        this.f2165d = false;
    }

    o(o oVar) {
        this(oVar.f2162a, oVar.f2163b, oVar.f2164c);
        oVar.f2165d = true;
    }

    o(byte[] bArr, int i, int i2) {
        this.f2162a = bArr;
        this.f2163b = i;
        this.f2164c = i2;
        this.e = false;
        this.f2165d = true;
    }

    public o a() {
        o oVar = this.f != this ? this.f : null;
        this.g.f = this.f;
        this.f.g = this.g;
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
        if (i <= 0 || i > this.f2164c - this.f2163b) {
            throw new IllegalArgumentException();
        }
        if (i >= 1024) {
            oVarA = new o(this);
        } else {
            oVarA = p.a();
            System.arraycopy(this.f2162a, this.f2163b, oVarA.f2162a, 0, i);
        }
        oVarA.f2164c = oVarA.f2163b + i;
        this.f2163b += i;
        this.g.a(oVarA);
        return oVarA;
    }

    public void b() {
        if (this.g == this) {
            throw new IllegalStateException();
        }
        if (this.g.e) {
            int i = this.f2164c - this.f2163b;
            if (i <= (this.g.f2165d ? 0 : this.g.f2163b) + (8192 - this.g.f2164c)) {
                a(this.g, i);
                a();
                p.a(this);
            }
        }
    }

    public void a(o oVar, int i) {
        if (!oVar.e) {
            throw new IllegalArgumentException();
        }
        if (oVar.f2164c + i > 8192) {
            if (oVar.f2165d) {
                throw new IllegalArgumentException();
            }
            if ((oVar.f2164c + i) - oVar.f2163b > 8192) {
                throw new IllegalArgumentException();
            }
            System.arraycopy(oVar.f2162a, oVar.f2163b, oVar.f2162a, 0, oVar.f2164c - oVar.f2163b);
            oVar.f2164c -= oVar.f2163b;
            oVar.f2163b = 0;
        }
        System.arraycopy(this.f2162a, this.f2163b, oVar.f2162a, oVar.f2164c, i);
        oVar.f2164c += i;
        this.f2163b += i;
    }
}
