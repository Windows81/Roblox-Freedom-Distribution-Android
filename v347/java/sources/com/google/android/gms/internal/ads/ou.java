package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ou extends on {
    @Override // com.google.android.gms.internal.ads.on
    public final om a(Context context, pc pcVar, int i, boolean z, asb asbVar, pb pbVar) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (com.google.android.gms.common.util.n.b() && (applicationInfo == null || applicationInfo.targetSdkVersion >= 11)) {
            return new oa(context, z, pcVar.t().d(), pbVar, new pd(context, pcVar.k(), pcVar.i(), asbVar, pcVar.c()));
        }
        return null;
    }
}
