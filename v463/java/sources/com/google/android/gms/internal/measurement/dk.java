package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class dk implements Iterator<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Iterator<String> f4207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ zzer f4208b;

    dk(zzer zzerVar) {
        this.f4208b = zzerVar;
        this.f4207a = this.f4208b.f4723a.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f4207a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f4207a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
