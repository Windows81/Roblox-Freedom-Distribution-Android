package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abe extends zp<Integer> implements abi<Integer>, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final abe f3751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f3752b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3753c;

    static {
        abe abeVar = new abe();
        f3751a = abeVar;
        abeVar.b();
    }

    abe() {
        this(new int[10], 0);
    }

    private abe(int[] iArr, int i) {
        this.f3752b = iArr;
        this.f3753c = i;
    }

    private final void a(int i, int i2) {
        c();
        if (i < 0 || i > this.f3753c) {
            throw new IndexOutOfBoundsException(e(i));
        }
        if (this.f3753c < this.f3752b.length) {
            System.arraycopy(this.f3752b, i, this.f3752b, i + 1, this.f3753c - i);
        } else {
            int[] iArr = new int[((this.f3753c * 3) / 2) + 1];
            System.arraycopy(this.f3752b, 0, iArr, 0, i);
            System.arraycopy(this.f3752b, i, iArr, i + 1, this.f3753c - i);
            this.f3752b = iArr;
        }
        this.f3752b[i] = i2;
        this.f3753c++;
        this.modCount++;
    }

    private final void d(int i) {
        if (i < 0 || i >= this.f3753c) {
            throw new IndexOutOfBoundsException(e(i));
        }
    }

    private final String e(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f3753c).toString();
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi<Integer> a(int i) {
        if (i < this.f3753c) {
            throw new IllegalArgumentException();
        }
        return new abe(Arrays.copyOf(this.f3752b, i), this.f3753c);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a(i, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        abf.a(collection);
        if (!(collection instanceof abe)) {
            return super.addAll(collection);
        }
        abe abeVar = (abe) collection;
        if (abeVar.f3753c == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.f3753c < abeVar.f3753c) {
            throw new OutOfMemoryError();
        }
        int i = this.f3753c + abeVar.f3753c;
        if (i > this.f3752b.length) {
            this.f3752b = Arrays.copyOf(this.f3752b, i);
        }
        System.arraycopy(abeVar.f3752b, 0, this.f3752b, this.f3753c, abeVar.f3753c);
        this.f3753c = i;
        this.modCount++;
        return true;
    }

    public final int b(int i) {
        d(i);
        return this.f3752b[i];
    }

    public final void c(int i) {
        a(this.f3753c, i);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof abe)) {
            return super.equals(obj);
        }
        abe abeVar = (abe) obj;
        if (this.f3753c != abeVar.f3753c) {
            return false;
        }
        int[] iArr = abeVar.f3752b;
        for (int i = 0; i < this.f3753c; i++) {
            if (this.f3752b[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(b(i));
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f3753c; i2++) {
            i = (i * 31) + this.f3752b[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        d(i);
        int i2 = this.f3752b[i];
        if (i < this.f3753c - 1) {
            System.arraycopy(this.f3752b, i + 1, this.f3752b, i, this.f3753c - i);
        }
        this.f3753c--;
        this.modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i = 0; i < this.f3753c; i++) {
            if (obj.equals(Integer.valueOf(this.f3752b[i]))) {
                System.arraycopy(this.f3752b, i + 1, this.f3752b, i, this.f3753c - i);
                this.f3753c--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        c();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        System.arraycopy(this.f3752b, i2, this.f3752b, i, this.f3753c - i2);
        this.f3753c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        d(i);
        int i2 = this.f3752b[i];
        this.f3752b[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3753c;
    }
}
