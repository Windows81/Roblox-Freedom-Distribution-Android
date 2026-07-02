package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class mr implements mp {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ String f5313a;

    mr(String str) {
        this.f5313a = str;
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final void a(@Nullable Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.mp
    public final void a(Throwable th) {
        com.google.android.gms.ads.internal.aw.i().a(th, this.f5313a);
    }
}
