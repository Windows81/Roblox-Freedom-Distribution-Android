package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.i;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awf extends avk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i.a f4547a;

    public awf(i.a aVar) {
        this.f4547a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.avj
    public final void a(auy auyVar, String str) {
        this.f4547a.onCustomClick(avb.a(auyVar), str);
    }
}
