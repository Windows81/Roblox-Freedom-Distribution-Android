package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.h;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class awe extends avh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h.a f4546a;

    public awe(h.a aVar) {
        this.f4546a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.avf
    public final void a(auu auuVar) {
        this.f4546a.onContentAdLoaded(new aux(auuVar));
    }
}
