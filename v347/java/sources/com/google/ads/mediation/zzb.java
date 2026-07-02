package com.google.ads.mediation;

import com.google.android.gms.ads.reward.c;

/* JADX INFO: loaded from: classes.dex */
final class zzb extends c {
    private final /* synthetic */ AbstractAdViewAdapter zzhd;

    zzb(AbstractAdViewAdapter abstractAdViewAdapter) {
        this.zzhd = abstractAdViewAdapter;
    }

    @Override // com.google.android.gms.ads.reward.c
    public final void zzt() {
        if (this.zzhd.zzha == null || this.zzhd.zzhb == null) {
            return;
        }
        this.zzhd.zzhb.a(this.zzhd.zzha.b());
    }
}
