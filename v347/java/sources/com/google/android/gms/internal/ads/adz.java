package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class adz extends AbstractList<String> implements abt, RandomAccess {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final abt f3854a;

    public adz(abt abtVar) {
        this.f3854a = abtVar;
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final void a(zv zvVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final Object b(int i) {
        return this.f3854a.b(i);
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final List<?> d() {
        return this.f3854a.d();
    }

    @Override // com.google.android.gms.internal.ads.abt
    public final abt e() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return (String) this.f3854a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new aeb(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new aea(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3854a.size();
    }
}
