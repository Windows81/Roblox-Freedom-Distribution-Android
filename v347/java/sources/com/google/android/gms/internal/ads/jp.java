package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class jp implements mb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f5193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5194b;

    jp(jm jmVar, Context context, String str) {
        this.f5193a = context;
        this.f5194b = str;
    }

    @Override // com.google.android.gms.internal.ads.mb
    public final void a(String str) {
        com.google.android.gms.ads.internal.aw.e();
        jm.a(this.f5193a, this.f5194b, str);
    }
}
