package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aby extends zp<Long> implements abi<Long>, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aby f3779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f3780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3781c;

    static {
        aby abyVar = new aby();
        f3779a = abyVar;
        abyVar.b();
    }

    aby() {
        this(new long[10], 0);
    }

    private aby(long[] jArr, int i) {
        this.f3780b = jArr;
        this.f3781c = i;
    }

    private final void a(int i, long j) {
        c();
        if (i < 0 || i > this.f3781c) {
            throw new IndexOutOfBoundsException(d(i));
        }
        if (this.f3781c < this.f3780b.length) {
            System.arraycopy(this.f3780b, i, this.f3780b, i + 1, this.f3781c - i);
        } else {
            long[] jArr = new long[((this.f3781c * 3) / 2) + 1];
            System.arraycopy(this.f3780b, 0, jArr, 0, i);
            System.arraycopy(this.f3780b, i, jArr, i + 1, this.f3781c - i);
            this.f3780b = jArr;
        }
        this.f3780b[i] = j;
        this.f3781c++;
        this.modCount++;
    }

    private final void c(int i) {
        if (i < 0 || i >= this.f3781c) {
            throw new IndexOutOfBoundsException(d(i));
        }
    }

    private final String d(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f3781c).toString();
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi<Long> a(int i) {
        if (i < this.f3781c) {
            throw new IllegalArgumentException();
        }
        return new aby(Arrays.copyOf(this.f3780b, i), this.f3781c);
    }

    public final void a(long j) {
        a(this.f3781c, j);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        abf.a(collection);
        if (!(collection instanceof aby)) {
            return super.addAll(collection);
        }
        aby abyVar = (aby) collection;
        if (abyVar.f3781c == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.f3781c < abyVar.f3781c) {
            throw new OutOfMemoryError();
        }
        int i = this.f3781c + abyVar.f3781c;
        if (i > this.f3780b.length) {
            this.f3780b = Arrays.copyOf(this.f3780b, i);
        }
        System.arraycopy(abyVar.f3780b, 0, this.f3780b, this.f3781c, abyVar.f3781c);
        this.f3781c = i;
        this.modCount++;
        return true;
    }

    public final long b(int i) {
        c(i);
        return this.f3780b[i];
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aby)) {
            return super.equals(obj);
        }
        aby abyVar = (aby) obj;
        if (this.f3781c != abyVar.f3781c) {
            return false;
        }
        long[] jArr = abyVar.f3780b;
        for (int i = 0; i < this.f3781c; i++) {
            if (this.f3780b[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(b(i));
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i = 0; i < this.f3781c; i++) {
            iA = (iA * 31) + abf.a(this.f3780b[i]);
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        c(i);
        long j = this.f3780b[i];
        if (i < this.f3781c - 1) {
            System.arraycopy(this.f3780b, i + 1, this.f3780b, i, this.f3781c - i);
        }
        this.f3781c--;
        this.modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i = 0; i < this.f3781c; i++) {
            if (obj.equals(Long.valueOf(this.f3780b[i]))) {
                System.arraycopy(this.f3780b, i + 1, this.f3780b, i, this.f3781c - i);
                this.f3781c--;
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
        System.arraycopy(this.f3780b, i2, this.f3780b, i, this.f3781c - i2);
        this.f3781c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        c(i);
        long j = this.f3780b[i];
        this.f3780b[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3781c;
    }
}
