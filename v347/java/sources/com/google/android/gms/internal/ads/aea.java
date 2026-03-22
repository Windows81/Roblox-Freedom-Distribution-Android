package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aea implements ListIterator<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ListIterator<String> f3855a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ int f3856b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ adz f3857c;

    aea(adz adzVar, int i) {
        this.f3857c = adzVar;
        this.f3856b = i;
        this.f3855a = this.f3857c.f3854a.listIterator(this.f3856b);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3855a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3855a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f3855a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3855a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f3855a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3855a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
