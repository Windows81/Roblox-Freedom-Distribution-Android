package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abq<K> implements Iterator<Map.Entry<K, Object>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f3768a;

    public abq(Iterator<Map.Entry<K, Object>> it) {
        this.f3768a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3768a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f3768a.next();
        return next.getValue() instanceof abm ? new abo(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f3768a.remove();
    }
}
