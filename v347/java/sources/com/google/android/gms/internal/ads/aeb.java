package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aeb implements Iterator<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Iterator<String> f3858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ adz f3859b;

    aeb(adz adzVar) {
        this.f3859b = adzVar;
        this.f3858a = this.f3859b.f3854a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3858a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f3858a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
