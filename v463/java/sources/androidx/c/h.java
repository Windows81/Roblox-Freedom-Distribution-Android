package androidx.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h<E> implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f1103a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1104b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f1105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f1106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1107e;

    public h() {
        this(10);
    }

    public h(int i) {
        this.f1104b = false;
        if (i == 0) {
            this.f1105c = c.f1071a;
            this.f1106d = c.f1073c;
        } else {
            int iA = c.a(i);
            this.f1105c = new int[iA];
            this.f1106d = new Object[iA];
        }
        this.f1107e = 0;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f1105c = (int[]) this.f1105c.clone();
            hVar.f1106d = (Object[]) this.f1106d.clone();
            return hVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E a(int i) {
        return a(i, null);
    }

    public E a(int i, E e2) {
        int iA = c.a(this.f1105c, this.f1107e, i);
        if (iA >= 0) {
            Object[] objArr = this.f1106d;
            if (objArr[iA] != f1103a) {
                return (E) objArr[iA];
            }
        }
        return e2;
    }

    public void b(int i) {
        int iA = c.a(this.f1105c, this.f1107e, i);
        if (iA >= 0) {
            Object[] objArr = this.f1106d;
            Object obj = objArr[iA];
            Object obj2 = f1103a;
            if (obj != obj2) {
                objArr[iA] = obj2;
                this.f1104b = true;
            }
        }
    }

    public void c(int i) {
        b(i);
    }

    private void d() {
        int i = this.f1107e;
        int[] iArr = this.f1105c;
        Object[] objArr = this.f1106d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f1103a) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1104b = false;
        this.f1107e = i2;
    }

    public void b(int i, E e2) {
        int iA = c.a(this.f1105c, this.f1107e, i);
        if (iA >= 0) {
            this.f1106d[iA] = e2;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.f1107e) {
            Object[] objArr = this.f1106d;
            if (objArr[iA2] == f1103a) {
                this.f1105c[iA2] = i;
                objArr[iA2] = e2;
                return;
            }
        }
        if (this.f1104b && this.f1107e >= this.f1105c.length) {
            d();
            iA2 = c.a(this.f1105c, this.f1107e, i) ^ (-1);
        }
        int i2 = this.f1107e;
        if (i2 >= this.f1105c.length) {
            int iA3 = c.a(i2 + 1);
            int[] iArr = new int[iA3];
            Object[] objArr2 = new Object[iA3];
            int[] iArr2 = this.f1105c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1106d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1105c = iArr;
            this.f1106d = objArr2;
        }
        int i3 = this.f1107e;
        if (i3 - iA2 != 0) {
            int[] iArr3 = this.f1105c;
            int i4 = iA2 + 1;
            System.arraycopy(iArr3, iA2, iArr3, i4, i3 - iA2);
            Object[] objArr4 = this.f1106d;
            System.arraycopy(objArr4, iA2, objArr4, i4, this.f1107e - iA2);
        }
        this.f1105c[iA2] = i;
        this.f1106d[iA2] = e2;
        this.f1107e++;
    }

    public int b() {
        if (this.f1104b) {
            d();
        }
        return this.f1107e;
    }

    public int d(int i) {
        if (this.f1104b) {
            d();
        }
        return this.f1105c[i];
    }

    public E e(int i) {
        if (this.f1104b) {
            d();
        }
        return (E) this.f1106d[i];
    }

    public int f(int i) {
        if (this.f1104b) {
            d();
        }
        return c.a(this.f1105c, this.f1107e, i);
    }

    public void c() {
        int i = this.f1107e;
        Object[] objArr = this.f1106d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f1107e = 0;
        this.f1104b = false;
    }

    public void c(int i, E e2) {
        int i2 = this.f1107e;
        if (i2 != 0 && i <= this.f1105c[i2 - 1]) {
            b(i, e2);
            return;
        }
        if (this.f1104b && this.f1107e >= this.f1105c.length) {
            d();
        }
        int i3 = this.f1107e;
        if (i3 >= this.f1105c.length) {
            int iA = c.a(i3 + 1);
            int[] iArr = new int[iA];
            Object[] objArr = new Object[iA];
            int[] iArr2 = this.f1105c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f1106d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1105c = iArr;
            this.f1106d = objArr;
        }
        this.f1105c[i3] = i;
        this.f1106d[i3] = e2;
        this.f1107e = i3 + 1;
    }

    public String toString() {
        if (b() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1107e * 28);
        sb.append('{');
        for (int i = 0; i < this.f1107e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(d(i));
            sb.append('=');
            E e2 = e(i);
            if (e2 != this) {
                sb.append(e2);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
