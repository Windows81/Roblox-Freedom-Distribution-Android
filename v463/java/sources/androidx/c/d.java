package androidx.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d<E> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1074a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f1076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f1077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1078e;

    public d() {
        this(10);
    }

    public d(int i) {
        this.f1075b = false;
        if (i == 0) {
            this.f1076c = c.f1072b;
            this.f1077d = c.f1073c;
        } else {
            int iB = c.b(i);
            this.f1076c = new long[iB];
            this.f1077d = new Object[iB];
        }
        this.f1078e = 0;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f1076c = (long[]) this.f1076c.clone();
            dVar.f1077d = (Object[]) this.f1077d.clone();
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E a(long j) {
        return a(j, null);
    }

    public E a(long j, E e2) {
        int iA = c.a(this.f1076c, this.f1078e, j);
        if (iA >= 0) {
            Object[] objArr = this.f1077d;
            if (objArr[iA] != f1074a) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public void b(long j) {
        int iA = c.a(this.f1076c, this.f1078e, j);
        if (iA >= 0) {
            Object[] objArr = this.f1077d;
            Object obj = objArr[iA];
            Object obj2 = f1074a;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f1075b = true;
            }
        }
    }

    public void a(int i) {
        Object[] objArr = this.f1077d;
        Object obj = objArr[i];
        Object obj2 = f1074a;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1075b = true;
        }
    }

    private void d() {
        int i = this.f1078e;
        long[] jArr = this.f1076c;
        Object[] objArr = this.f1077d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f1074a) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1075b = false;
        this.f1078e = i2;
    }

    public void b(long j, E e2) {
        int iA = c.a(this.f1076c, this.f1078e, j);
        if (iA >= 0) {
            this.f1077d[iA] = e2;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.f1078e) {
            Object[] objArr = this.f1077d;
            if (objArr[iA2] == f1074a) {
                this.f1076c[iA2] = j;
                objArr[iA2] = e2;
                return;
            }
        }
        if (this.f1075b && this.f1078e >= this.f1076c.length) {
            d();
            iA2 = c.a(this.f1076c, this.f1078e, j) ^ (-1);
        }
        int i = this.f1078e;
        if (i >= this.f1076c.length) {
            int iB = c.b(i + 1);
            long[] jArr = new long[iB];
            Object[] objArr2 = new Object[iB];
            long[] jArr2 = this.f1076c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1077d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1076c = jArr;
            this.f1077d = objArr2;
        }
        int i2 = this.f1078e;
        if (i2 - iA2 != 0) {
            long[] jArr3 = this.f1076c;
            int i3 = iA2 + 1;
            System.arraycopy(jArr3, iA2, jArr3, i3, i2 - iA2);
            Object[] objArr4 = this.f1077d;
            System.arraycopy(objArr4, iA2, objArr4, i3, this.f1078e - iA2);
        }
        this.f1076c[iA2] = j;
        this.f1077d[iA2] = e2;
        this.f1078e++;
    }

    public int b() {
        if (this.f1075b) {
            d();
        }
        return this.f1078e;
    }

    public long b(int i) {
        if (this.f1075b) {
            d();
        }
        return this.f1076c[i];
    }

    public E c(int i) {
        if (this.f1075b) {
            d();
        }
        return (E) this.f1077d[i];
    }

    public int c(long j) {
        if (this.f1075b) {
            d();
        }
        return c.a(this.f1076c, this.f1078e, j);
    }

    public void c() {
        int i = this.f1078e;
        Object[] objArr = this.f1077d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1078e = 0;
        this.f1075b = false;
    }

    public void c(long j, E e2) {
        int i = this.f1078e;
        if (i != 0 && j <= this.f1076c[i - 1]) {
            b(j, e2);
            return;
        }
        if (this.f1075b && this.f1078e >= this.f1076c.length) {
            d();
        }
        int i2 = this.f1078e;
        if (i2 >= this.f1076c.length) {
            int iB = c.b(i2 + 1);
            long[] jArr = new long[iB];
            Object[] objArr = new Object[iB];
            long[] jArr2 = this.f1076c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f1077d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1076c = jArr;
            this.f1077d = objArr;
        }
        this.f1076c[i2] = j;
        this.f1077d[i2] = e2;
        this.f1078e = i2 + 1;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1078e * 28);
        sb.append('{');
        for (int i = 0; i < this.f1078e; i++) {
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
