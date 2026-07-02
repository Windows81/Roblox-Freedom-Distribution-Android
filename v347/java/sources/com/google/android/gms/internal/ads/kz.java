package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
final class kz<T> implements mo<atf, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ lc f5239a;

    kz(kw kwVar, lc lcVar) {
        this.f5239a = lcVar;
    }

    @Override // com.google.android.gms.internal.ads.mo
    public final /* synthetic */ Object a(atf atfVar) {
        return this.f5239a.a(new ByteArrayInputStream(atfVar.f4476b));
    }
}
