package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
final class db implements dd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ Context f4925a;

    db(Context context) {
        this.f4925a = context;
    }

    @Override // com.google.android.gms.internal.ads.dd
    public final boolean a(zzang zzangVar) {
        aoo.a();
        boolean zC = ly.c(this.f4925a);
        boolean z = ((Boolean) aoo.f().a(aro.dd)).booleanValue() && zzangVar.f5787d;
        if (da.b(this.f4925a, zzangVar.f5787d) && zC && !z) {
            if (!com.google.android.gms.common.util.h.c(this.f4925a)) {
                return false;
            }
            if (((Boolean) aoo.f().a(aro.H)).booleanValue()) {
                return false;
            }
        }
        return true;
    }
}
