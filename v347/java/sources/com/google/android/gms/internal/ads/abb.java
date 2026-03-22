package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abb extends zp<Float> implements abi<Float>, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final abb f3739a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f3740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f3741c;

    static {
        abb abbVar = new abb();
        f3739a = abbVar;
        abbVar.b();
    }

    abb() {
        this(new float[10], 0);
    }

    private abb(float[] fArr, int i) {
        this.f3740b = fArr;
        this.f3741c = i;
    }

    private final void a(int i, float f) {
        c();
        if (i < 0 || i > this.f3741c) {
            throw new IndexOutOfBoundsException(c(i));
        }
        if (this.f3741c < this.f3740b.length) {
            System.arraycopy(this.f3740b, i, this.f3740b, i + 1, this.f3741c - i);
        } else {
            float[] fArr = new float[((this.f3741c * 3) / 2) + 1];
            System.arraycopy(this.f3740b, 0, fArr, 0, i);
            System.arraycopy(this.f3740b, i, fArr, i + 1, this.f3741c - i);
            this.f3740b = fArr;
        }
        this.f3740b[i] = f;
        this.f3741c++;
        this.modCount++;
    }

    private final void b(int i) {
        if (i < 0 || i >= this.f3741c) {
            throw new IndexOutOfBoundsException(c(i));
        }
    }

    private final String c(int i) {
        return new StringBuilder(35).append("Index:").append(i).append(", Size:").append(this.f3741c).toString();
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi<Float> a(int i) {
        if (i < this.f3741c) {
            throw new IllegalArgumentException();
        }
        return new abb(Arrays.copyOf(this.f3740b, i), this.f3741c);
    }

    public final void a(float f) {
        a(this.f3741c, f);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        a(i, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        abf.a(collection);
        if (!(collection instanceof abb)) {
            return super.addAll(collection);
        }
        abb abbVar = (abb) collection;
        if (abbVar.f3741c == 0) {
            return false;
        }
        if (Integer.MAX_VALUE - this.f3741c < abbVar.f3741c) {
            throw new OutOfMemoryError();
        }
        int i = this.f3741c + abbVar.f3741c;
        if (i > this.f3740b.length) {
            this.f3740b = Arrays.copyOf(this.f3740b, i);
        }
        System.arraycopy(abbVar.f3740b, 0, this.f3740b, this.f3741c, abbVar.f3741c);
        this.f3741c = i;
        this.modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof abb)) {
            return super.equals(obj);
        }
        abb abbVar = (abb) obj;
        if (this.f3741c != abbVar.f3741c) {
            return false;
        }
        float[] fArr = abbVar.f3740b;
        for (int i = 0; i < this.f3741c; i++) {
            if (this.f3740b[i] != fArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        b(i);
        return Float.valueOf(this.f3740b[i]);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i = 0; i < this.f3741c; i++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f3740b[i]);
        }
        return iFloatToIntBits;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        b(i);
        float f = this.f3740b[i];
        if (i < this.f3741c - 1) {
            System.arraycopy(this.f3740b, i + 1, this.f3740b, i, this.f3741c - i);
        }
        this.f3741c--;
        this.modCount++;
        return Float.valueOf(f);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i = 0; i < this.f3741c; i++) {
            if (obj.equals(Float.valueOf(this.f3740b[i]))) {
                System.arraycopy(this.f3740b, i + 1, this.f3740b, i, this.f3741c - i);
                this.f3741c--;
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
        System.arraycopy(this.f3740b, i2, this.f3740b, i, this.f3741c - i2);
        this.f3741c -= i2 - i;
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        b(i);
        float f = this.f3740b[i];
        this.f3740b[i] = fFloatValue;
        return Float.valueOf(f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3741c;
    }
}
