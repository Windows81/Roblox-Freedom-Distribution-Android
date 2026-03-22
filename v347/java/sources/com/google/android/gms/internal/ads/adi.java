package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class adi<K, V> implements Iterator<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3830a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f3831b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ adg f3832c;

    private adi(adg adgVar) {
        this.f3832c = adgVar;
        this.f3830a = this.f3832c.f3827b.size();
    }

    /* synthetic */ adi(adg adgVar, adh adhVar) {
        this(adgVar);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        if (this.f3831b == null) {
            this.f3831b = this.f3832c.f.entrySet().iterator();
        }
        return this.f3831b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return (this.f3830a > 0 && this.f3830a <= this.f3832c.f3827b.size()) || a().hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        if (a().hasNext()) {
            return a().next();
        }
        List list = this.f3832c.f3827b;
        int i = this.f3830a - 1;
        this.f3830a = i;
        return (Map.Entry) list.get(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
