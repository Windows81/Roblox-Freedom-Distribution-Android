package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class acy<E> extends zp<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final acy<Object> f3811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<E> f3812b;

    static {
        acy<Object> acyVar = new acy<>();
        f3811a = acyVar;
        acyVar.b();
    }

    acy() {
        this(new ArrayList(10));
    }

    private acy(List<E> list) {
        this.f3812b = list;
    }

    public static <E> acy<E> d() {
        return (acy<E>) f3811a;
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi a(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f3812b);
        return new acy(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final void add(int i, E e) {
        c();
        this.f3812b.add(i, e);
        this.modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i) {
        return this.f3812b.get(i);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final E remove(int i) {
        c();
        E eRemove = this.f3812b.remove(i);
        this.modCount++;
        return eRemove;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final E set(int i, E e) {
        c();
        E e2 = this.f3812b.set(i, e);
        this.modCount++;
        return e2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3812b.size();
    }
}
