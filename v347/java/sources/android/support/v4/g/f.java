package android.support.v4.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f<E> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f934a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f937d;
    private int e;

    public f() {
        this(10);
    }

    public f(int i) {
        this.f935b = false;
        if (i == 0) {
            this.f936c = c.f930b;
            this.f937d = c.f931c;
        } else {
            int iB = c.b(i);
            this.f936c = new long[iB];
            this.f937d = new Object[iB];
        }
        this.e = 0;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public f<E> clone() {
        try {
            f<E> fVar = (f) super.clone();
            try {
                fVar.f936c = (long[]) this.f936c.clone();
                fVar.f937d = (Object[]) this.f937d.clone();
                return fVar;
            } catch (CloneNotSupportedException e) {
                return fVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E a(long j) {
        return a(j, null);
    }

    public E a(long j, E e) {
        int iA = c.a(this.f936c, this.e, j);
        return (iA < 0 || this.f937d[iA] == f934a) ? e : (E) this.f937d[iA];
    }

    public void b(long j) {
        int iA = c.a(this.f936c, this.e, j);
        if (iA >= 0 && this.f937d[iA] != f934a) {
            this.f937d[iA] = f934a;
            this.f935b = true;
        }
    }

    public void c(long j) {
        b(j);
    }

    public void a(int i) {
        if (this.f937d[i] != f934a) {
            this.f937d[i] = f934a;
            this.f935b = true;
        }
    }

    private void d() {
        int i = this.e;
        long[] jArr = this.f936c;
        Object[] objArr = this.f937d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f934a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f935b = false;
        this.e = i2;
    }

    public void b(long j, E e) {
        int iA = c.a(this.f936c, this.e, j);
        if (iA >= 0) {
            this.f937d[iA] = e;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.e && this.f937d[iA2] == f934a) {
            this.f936c[iA2] = j;
            this.f937d[iA2] = e;
            return;
        }
        if (this.f935b && this.e >= this.f936c.length) {
            d();
            iA2 = c.a(this.f936c, this.e, j) ^ (-1);
        }
        if (this.e >= this.f936c.length) {
            int iB = c.b(this.e + 1);
            long[] jArr = new long[iB];
            Object[] objArr = new Object[iB];
            System.arraycopy(this.f936c, 0, jArr, 0, this.f936c.length);
            System.arraycopy(this.f937d, 0, objArr, 0, this.f937d.length);
            this.f936c = jArr;
            this.f937d = objArr;
        }
        if (this.e - iA2 != 0) {
            System.arraycopy(this.f936c, iA2, this.f936c, iA2 + 1, this.e - iA2);
            System.arraycopy(this.f937d, iA2, this.f937d, iA2 + 1, this.e - iA2);
        }
        this.f936c[iA2] = j;
        this.f937d[iA2] = e;
        this.e++;
    }

    public int b() {
        if (this.f935b) {
            d();
        }
        return this.e;
    }

    public long b(int i) {
        if (this.f935b) {
            d();
        }
        return this.f936c[i];
    }

    public E c(int i) {
        if (this.f935b) {
            d();
        }
        return (E) this.f937d[i];
    }

    public int d(long j) {
        if (this.f935b) {
            d();
        }
        return c.a(this.f936c, this.e, j);
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.f937d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f935b = false;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(b(i));
            sb.append('=');
            E eC = c(i);
            if (eC != this) {
                sb.append(eC);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
