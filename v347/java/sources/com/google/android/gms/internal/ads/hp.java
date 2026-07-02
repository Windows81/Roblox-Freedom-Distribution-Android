package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class hp implements hu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private hv f5090a;

    public hp(hv hvVar) {
        this.f5090a = hvVar;
    }

    @Override // com.google.android.gms.internal.ads.hu
    public final ht a(Context context, zzang zzangVar, zzaej zzaejVar) {
        if (zzaejVar.K == null) {
            return null;
        }
        return new hj(context, zzangVar, zzaejVar.K, zzaejVar.f5762a, this.f5090a);
    }
}
