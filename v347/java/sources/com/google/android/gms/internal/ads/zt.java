package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zt extends zp<Boolean> implements abi<Boolean>, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final zt f5747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean[] f5748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5749c;

    static {
        zt ztVar = new zt();
        f5747a = ztVar;
        ztVar.b();
    }

    zt() {
        this(new boolean[10], 0);
    }

    private zt(boolean[] zArr, int i) {
        this.f5748b = zArr;
        this.f5749c = i;
    }

    private final void a(int i, boolean z) {
        c();
        if (i < 0 || i > this.f5749c) {
            throw new IndexOutOfBoundsException(c(i));
        }
        if (this.f5749c < this.f5748b.length) {
            System.arraycopy(this.f5748b, i, this.f5748b, i + 1, this.f5749c - i);
        } else {
            boolean[] zArr = new boolean[((this.f5749c * 3) / 2) + 1];
            System.arraycopy(this.f5748b, 0, zArr, 0, i);
            System.arraycopy(this.f5748b, i, zArr, i + 1, this.f5749c - i);
            this.f5748b = zArr;
        }
        this.f5748b[i] = z;
        this.f5749c++;
        this.modCount++;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f5749c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f5749c).toString();
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi<Boolean> a(int i) {
        if (i < this.f5749c) {
            throw new IllegalArgumentException();
        }
        return new zt(Arrays.copyOf(this.f5748b, i), this.f5749c);
    }

    public final void a(boolean z) {
        a(this.f5749c, z);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        abf.a(collection);
        if (!(collection instanceof zt)) {
            return super.addAll(collection);
        }
        zt ztVar = (zt) collection;
        if (ztVar.f5749c == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.f5749c < ztVar.f5749c) {
            throw new OutOfMemoryError();
        }
        int i = this.f5749c + ztVar.f5749c;
        if (i > this.f5748b.length) {
            this.f5748b = Arrays.copyOf(this.f5748b, i);
        }
        System.arraycopy(ztVar.f5748b, 0, this.f5748b, this.f5749c, ztVar.f5749c);
        this.f5749c = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zt)) {
            return super.equals(obj);
        }
        zt ztVar = (zt) obj;
        if (this.f5749c != ztVar.f5749c) {
            return false;
        }
        boolean[] zArr = ztVar.f5748b;
        for (int i = 0; i < this.f5749c; i++) {
            if (this.f5748b[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Boolean.valueOf(this.f5748b[i]);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i = 0; i < this.f5749c; i++) {
            iA = (iA * 31) + abf.a(this.f5748b[i]);
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        boolean z = this.f5748b[i];
        if (i < this.f5749c - 1) {
            System.arraycopy(this.f5748b, i + 1, this.f5748b, i, this.f5749c - i);
        }
        this.f5749c--;
        this.modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i = 0; i < this.f5749c; i++) {
            if (obj.equals(Boolean.valueOf(this.f5748b[i]))) {
                System.arraycopy(this.f5748b, i + 1, this.f5748b, i, this.f5749c - i);
                this.f5749c--;
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
        System.arraycopy(this.f5748b, i2, this.f5748b, i, this.f5749c - i2);
        this.f5749c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        b(i);
        boolean z = this.f5748b[i];
        this.f5748b[i] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f5749c;
    }
}
