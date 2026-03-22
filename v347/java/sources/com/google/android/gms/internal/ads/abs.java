package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class abs extends zp<String> implements abt, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final abs f3773a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final abt f3774b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Object> f3775c;

    static {
        abs absVar = new abs();
        f3773a = absVar;
        absVar.b();
        f3774b = f3773a;
    }

    public abs() {
        this(10);
    }

    public abs(int i) {
        this((ArrayList<Object>) new ArrayList(i));
    }

    private abs(ArrayList<Object> arrayList) {
        this.f3775c = arrayList;
    }

    private static String a(Object obj) {
        return obj instanceof String ? (String) obj : obj instanceof zv ? ((zv) obj).c() : abf.b((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.abi
    public final /* synthetic */ abi a(int i) {
        if (i < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(i);
        arrayList.addAll(this.f3775c);
        return new abs((ArrayList<Object>) arrayList);
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final void a(zv zvVar) {
        c();
        this.f3775c.add(zvVar);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, com.google.android.gms.internal.ads.abi
    public final /* bridge */ /* synthetic */ boolean a() {
        return super.a();
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        c();
        this.f3775c.add(i, (String) obj);
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection<? extends String> collection) {
        c();
        if (collection instanceof abt) {
            collection = ((abt) collection).d();
        }
        boolean zAddAll = this.f3775c.addAll(i, collection);
        this.modCount++;
        return zAddAll;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final Object b(int i) {
        return this.f3775c.get(i);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        c();
        this.f3775c.clear();
        this.modCount++;
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final List<?> d() {
        return Collections.unmodifiableList(this.f3775c);
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final abt e() {
        return a() ? new adz(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        Object obj = this.f3775c.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zv) {
            zv zvVar = (zv) obj;
            String strC = zvVar.c();
            if (zvVar.d()) {
                this.f3775c.set(i, strC);
            }
            return strC;
        }
        byte[] bArr = (byte[]) obj;
        String strB = abf.b(bArr);
        if (abf.a(bArr)) {
            this.f3775c.set(i, strB);
        }
        return strB;
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        c();
        Object objRemove = this.f3775c.remove(i);
        this.modCount++;
        return a(objRemove);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.ads.zp, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        c();
        return a(this.f3775c.set(i, (String) obj));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3775c.size();
    }
}
