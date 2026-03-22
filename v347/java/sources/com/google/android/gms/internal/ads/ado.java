package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ado<K, V> implements Iterator<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3840b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Iterator<Map.Entry<K, V>> f3841c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ adg f3842d;

    private ado(adg adgVar) {
        this.f3842d = adgVar;
        this.f3839a = -1;
    }

    /* synthetic */ ado(adg adgVar, adh adhVar) {
        this(adgVar);
    }

    private final Iterator<Map.Entry<K, V>> a() {
        if (this.f3841c == null) {
            this.f3841c = this.f3842d.f3828c.entrySet().iterator();
        }
        return this.f3841c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3839a + 1 < this.f3842d.f3827b.size() || (!this.f3842d.f3828c.isEmpty() && a().hasNext());
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f3840b = true;
        int i = this.f3839a + 1;
        this.f3839a = i;
        return i < this.f3842d.f3827b.size() ? (Map.Entry) this.f3842d.f3827b.get(this.f3839a) : a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f3840b) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f3840b = false;
        this.f3842d.f();
        if (this.f3839a >= this.f3842d.f3827b.size()) {
            a().remove();
            return;
        }
        adg adgVar = this.f3842d;
        int i = this.f3839a;
        this.f3839a = i - 1;
        adgVar.c(i);
    }
}
