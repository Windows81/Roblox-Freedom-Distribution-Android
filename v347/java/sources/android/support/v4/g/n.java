package android.support.v4.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n<E> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f964a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f965b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f966c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f967d;
    private int e;

    public n() {
        this(10);
    }

    public n(int i) {
        this.f965b = false;
        if (i == 0) {
            this.f966c = c.f929a;
            this.f967d = c.f931c;
        } else {
            int iA = c.a(i);
            this.f966c = new int[iA];
            this.f967d = new Object[iA];
        }
        this.e = 0;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public n<E> clone() {
        try {
            n<E> nVar = (n) super.clone();
            try {
                nVar.f966c = (int[]) this.f966c.clone();
                nVar.f967d = (Object[]) this.f967d.clone();
                return nVar;
            } catch (CloneNotSupportedException e) {
                return nVar;
            }
        } catch (CloneNotSupportedException e2) {
            return null;
        }
    }

    public E a(int i) {
        return a(i, null);
    }

    public E a(int i, E e) {
        int iA = c.a(this.f966c, this.e, i);
        return (iA < 0 || this.f967d[iA] == f964a) ? e : (E) this.f967d[iA];
    }

    public void b(int i) {
        int iA = c.a(this.f966c, this.e, i);
        if (iA >= 0 && this.f967d[iA] != f964a) {
            this.f967d[iA] = f964a;
            this.f965b = true;
        }
    }

    public void c(int i) {
        b(i);
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.f966c;
        Object[] objArr = this.f967d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f964a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f965b = false;
        this.e = i2;
    }

    public void b(int i, E e) {
        int iA = c.a(this.f966c, this.e, i);
        if (iA >= 0) {
            this.f967d[iA] = e;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.e && this.f967d[iA2] == f964a) {
            this.f966c[iA2] = i;
            this.f967d[iA2] = e;
            return;
        }
        if (this.f965b && this.e >= this.f966c.length) {
            d();
            iA2 = c.a(this.f966c, this.e, i) ^ (-1);
        }
        if (this.e >= this.f966c.length) {
            int iA3 = c.a(this.e + 1);
            int[] iArr = new int[iA3];
            Object[] objArr = new Object[iA3];
            System.arraycopy(this.f966c, 0, iArr, 0, this.f966c.length);
            System.arraycopy(this.f967d, 0, objArr, 0, this.f967d.length);
            this.f966c = iArr;
            this.f967d = objArr;
        }
        if (this.e - iA2 != 0) {
            System.arraycopy(this.f966c, iA2, this.f966c, iA2 + 1, this.e - iA2);
            System.arraycopy(this.f967d, iA2, this.f967d, iA2 + 1, this.e - iA2);
        }
        this.f966c[iA2] = i;
        this.f967d[iA2] = e;
        this.e++;
    }

    public int b() {
        if (this.f965b) {
            d();
        }
        return this.e;
    }

    public int d(int i) {
        if (this.f965b) {
            d();
        }
        return this.f966c[i];
    }

    public E e(int i) {
        if (this.f965b) {
            d();
        }
        return (E) this.f967d[i];
    }

    public int f(int i) {
        if (this.f965b) {
            d();
        }
        return c.a(this.f966c, this.e, i);
    }

    public void c() {
        int i = this.e;
        Object[] objArr = this.f967d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f965b = false;
    }

    public void c(int i, E e) {
        if (this.e != 0 && i <= this.f966c[this.e - 1]) {
            b(i, e);
            return;
        }
        if (this.f965b && this.e >= this.f966c.length) {
            d();
        }
        int i2 = this.e;
        if (i2 >= this.f966c.length) {
            int iA = c.a(i2 + 1);
            int[] iArr = new int[iA];
            Object[] objArr = new Object[iA];
            System.arraycopy(this.f966c, 0, iArr, 0, this.f966c.length);
            System.arraycopy(this.f967d, 0, objArr, 0, this.f967d.length);
            this.f966c = iArr;
            this.f967d = objArr;
        }
        this.f966c[i2] = i;
        this.f967d[i2] = e;
        this.e = i2 + 1;
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
            sb.append(d(i));
            sb.append('=');
            E e = e(i);
            if (e != this) {
                sb.append(e);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
