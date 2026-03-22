package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aam extends zp<Double> implements abi<Double>, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aam f3707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private double[] f3708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3709c;

    static {
        aam aamVar = new aam();
        f3707a = aamVar;
        aamVar.b();
    }

    aam() {
        this(new double[10], 0);
    }

    private aam(double[] dArr, int i) {
        this.f3708b = dArr;
        this.f3709c = i;
    }

    private final void a(int i, double d2) {
        c();
        if (i < 0 || i > this.f3709c) {
            throw new IndexOutOfBoundsException(c(i));
        }
        if (this.f3709c < this.f3708b.length) {
            System.arraycopy(this.f3708b, i, this.f3708b, i + 1, this.f3709c - i);
        } else {
            double[] dArr = new double[((this.f3709c * 3) / 2) + 1];
            System.arraycopy(this.f3708b, 0, dArr, 0, i);
            System.arraycopy(this.f3708b, i, dArr, i + 1, this.f3709c - i);
            this.f3708b = dArr;
        }
        this.f3708b[i] = d2;
        this.f3709c++;
        this.modCount++;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f3709c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f3709c).toString();
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi<Double> a(int i) {
        if (i < this.f3709c) {
            throw new IllegalArgumentException();
        }
        return new aam(Arrays.copyOf(this.f3708b, i), this.f3709c);
    }

    public final void a(double d2) {
        a(this.f3709c, d2);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a(i, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        abf.a(collection);
        if (!(collection instanceof aam)) {
            return super.addAll(collection);
        }
        aam aamVar = (aam) collection;
        if (aamVar.f3709c == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.f3709c < aamVar.f3709c) {
            throw new OutOfMemoryError();
        }
        int i = this.f3709c + aamVar.f3709c;
        if (i > this.f3708b.length) {
            this.f3708b = Arrays.copyOf(this.f3708b, i);
        }
        System.arraycopy(aamVar.f3708b, 0, this.f3708b, this.f3709c, aamVar.f3709c);
        this.f3709c = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aam)) {
            return super.equals(obj);
        }
        aam aamVar = (aam) obj;
        if (this.f3709c != aamVar.f3709c) {
            return false;
        }
        double[] dArr = aamVar.f3708b;
        for (int i = 0; i < this.f3709c; i++) {
            if (this.f3708b[i] != dArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Double.valueOf(this.f3708b[i]);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i = 0; i < this.f3709c; i++) {
            iA = (iA * 31) + abf.a(Double.doubleToLongBits(this.f3708b[i]));
        }
        return iA;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        double d2 = this.f3708b[i];
        if (i < this.f3709c - 1) {
            System.arraycopy(this.f3708b, i + 1, this.f3708b, i, this.f3709c - i);
        }
        this.f3709c--;
        this.modCount++;
        return Double.valueOf(d2);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i = 0; i < this.f3709c; i++) {
            if (obj.equals(Double.valueOf(this.f3708b[i]))) {
                System.arraycopy(this.f3708b, i + 1, this.f3708b, i, this.f3709c - i);
                this.f3709c--;
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
        System.arraycopy(this.f3708b, i2, this.f3708b, i, this.f3709c - i2);
        this.f3709c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        b(i);
        double d2 = this.f3708b[i];
        this.f3708b[i] = dDoubleValue;
        return Double.valueOf(d2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3709c;
    }
}
