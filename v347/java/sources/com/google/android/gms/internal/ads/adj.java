package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class adj extends adp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ adg f3833a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private adj(adg adgVar) {
        super(adgVar, null);
        this.f3833a = adgVar;
    }

    /* synthetic */ adj(adg adgVar, adh adhVar) {
        this(adgVar);
    }

    @Override // com.google.android.gms.internal.ads.adp, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        return new adi(this.f3833a, null);
    }
}
