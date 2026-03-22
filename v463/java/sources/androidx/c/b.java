package androidx.c;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[] f1065c = new int[0];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object[] f1066d = new Object[0];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Object[] f1067e;
    private static int f;
    private static Object[] g;
    private static int h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Object[] f1068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1069b;
    private int[] i;
    private f<E, E> j;

    private int a(Object obj, int i) {
        int i2 = this.f1069b;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(this.i, i2, i);
        if (iA < 0 || obj.equals(this.f1068a[iA])) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.i[i3] == i) {
            if (obj.equals(this.f1068a[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.i[i4] == i; i4--) {
            if (obj.equals(this.f1068a[i4])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    private int a() {
        int i = this.f1069b;
        if (i == 0) {
            return -1;
        }
        int iA = c.a(this.i, i, 0);
        if (iA < 0 || this.f1068a[iA] == null) {
            return iA;
        }
        int i2 = iA + 1;
        while (i2 < i && this.i[i2] == 0) {
            if (this.f1068a[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iA - 1; i3 >= 0 && this.i[i3] == 0; i3--) {
            if (this.f1068a[i3] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    private void d(int i) {
        if (i == 8) {
            synchronized (b.class) {
                if (g != null) {
                    Object[] objArr = g;
                    this.f1068a = objArr;
                    g = (Object[]) objArr[0];
                    this.i = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    h--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (b.class) {
                if (f1067e != null) {
                    Object[] objArr2 = f1067e;
                    this.f1068a = objArr2;
                    f1067e = (Object[]) objArr2[0];
                    this.i = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f--;
                    return;
                }
            }
        }
        this.i = new int[i];
        this.f1068a = new Object[i];
    }

    private static void a(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (h < 10) {
                    objArr[0] = g;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    g = objArr;
                    h++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f < 10) {
                    objArr[0] = f1067e;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f1067e = objArr;
                    f++;
                }
            }
        }
    }

    public b() {
        this(0);
    }

    public b(int i) {
        if (i == 0) {
            this.i = f1065c;
            this.f1068a = f1066d;
        } else {
            d(i);
        }
        this.f1069b = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f1069b;
        if (i != 0) {
            a(this.i, this.f1068a, i);
            this.i = f1065c;
            this.f1068a = f1066d;
            this.f1069b = 0;
        }
    }

    public void a(int i) {
        int[] iArr = this.i;
        if (iArr.length < i) {
            Object[] objArr = this.f1068a;
            d(i);
            int i2 = this.f1069b;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.i, 0, i2);
                System.arraycopy(objArr, 0, this.f1068a, 0, this.f1069b);
            }
            a(iArr, objArr, this.f1069b);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return a(obj) >= 0;
    }

    public int a(Object obj) {
        return obj == null ? a() : a(obj, obj.hashCode());
    }

    public E b(int i) {
        return (E) this.f1068a[i];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1069b <= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i;
        int iA;
        if (e2 == null) {
            iA = a();
            i = 0;
        } else {
            int iHashCode = e2.hashCode();
            i = iHashCode;
            iA = a(e2, iHashCode);
        }
        if (iA >= 0) {
            return false;
        }
        int i2 = iA ^ (-1);
        int i3 = this.f1069b;
        if (i3 >= this.i.length) {
            int i4 = 4;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i4 = 8;
            }
            int[] iArr = this.i;
            Object[] objArr = this.f1068a;
            d(i4);
            int[] iArr2 = this.i;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1068a, 0, objArr.length);
            }
            a(iArr, objArr, this.f1069b);
        }
        int i5 = this.f1069b;
        if (i2 < i5) {
            int[] iArr3 = this.i;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f1068a;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f1069b - i2);
        }
        this.i[i2] = i;
        this.f1068a[i2] = e2;
        this.f1069b++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iA = a(obj);
        if (iA < 0) {
            return false;
        }
        c(iA);
        return true;
    }

    public E c(int i) {
        Object[] objArr = this.f1068a;
        E e2 = (E) objArr[i];
        int i2 = this.f1069b;
        if (i2 <= 1) {
            a(this.i, objArr, i2);
            this.i = f1065c;
            this.f1068a = f1066d;
            this.f1069b = 0;
        } else {
            int[] iArr = this.i;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                int i3 = i2 > 8 ? i2 + (i2 >> 1) : 8;
                int[] iArr2 = this.i;
                Object[] objArr2 = this.f1068a;
                d(i3);
                this.f1069b--;
                if (i > 0) {
                    System.arraycopy(iArr2, 0, this.i, 0, i);
                    System.arraycopy(objArr2, 0, this.f1068a, 0, i);
                }
                int i4 = this.f1069b;
                if (i < i4) {
                    int i5 = i + 1;
                    System.arraycopy(iArr2, i5, this.i, i, i4 - i);
                    System.arraycopy(objArr2, i5, this.f1068a, i, this.f1069b - i);
                }
            } else {
                int i6 = this.f1069b - 1;
                this.f1069b = i6;
                if (i < i6) {
                    int[] iArr3 = this.i;
                    int i7 = i + 1;
                    System.arraycopy(iArr3, i7, iArr3, i, i6 - i);
                    Object[] objArr3 = this.f1068a;
                    System.arraycopy(objArr3, i7, objArr3, i, this.f1069b - i);
                }
                this.f1068a[this.f1069b] = null;
            }
        }
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1069b;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f1069b;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f1068a, 0, objArr, 0, i);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f1069b) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1069b));
        }
        System.arraycopy(this.f1068a, 0, tArr, 0, this.f1069b);
        int length = tArr.length;
        int i = this.f1069b;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f1069b; i++) {
                try {
                    if (!set.contains(b(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.i;
        int i = this.f1069b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1069b * 14);
        sb.append('{');
        for (int i = 0; i < this.f1069b; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E eB = b(i);
            if (eB != this) {
                sb.append(eB);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    private f<E, E> b() {
        if (this.j == null) {
            this.j = new f<E, E>() { // from class: androidx.c.b.1
                @Override // androidx.c.f
                protected int a() {
                    return b.this.f1069b;
                }

                @Override // androidx.c.f
                protected Object a(int i, int i2) {
                    return b.this.f1068a[i];
                }

                @Override // androidx.c.f
                protected int a(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.c.f
                protected int b(Object obj) {
                    return b.this.a(obj);
                }

                @Override // androidx.c.f
                protected Map<E, E> b() {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.c.f
                protected void a(E e2, E e3) {
                    b.this.add(e2);
                }

                @Override // androidx.c.f
                protected E a(int i, E e2) {
                    throw new UnsupportedOperationException("not a map");
                }

                @Override // androidx.c.f
                protected void a(int i) {
                    b.this.c(i);
                }

                @Override // androidx.c.f
                protected void c() {
                    b.this.clear();
                }
            };
        }
        return this.j;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return b().e().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        a(this.f1069b + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f1069b - 1; i >= 0; i--) {
            if (!collection.contains(this.f1068a[i])) {
                c(i);
                z = true;
            }
        }
        return z;
    }
}
