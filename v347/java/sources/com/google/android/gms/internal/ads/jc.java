package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class jc extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f5171a;

    jc(Context context) {
        this.f5171a = context;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        boolean zB;
        try {
            zB = com.google.android.gms.ads.a.a.b(this.f5171a);
        } catch (com.google.android.gms.common.h | com.google.android.gms.common.i | IOException | IllegalStateException e) {
            jd.b("Fail to get isAdIdFakeForDebugLogging", e);
            zB = false;
        }
        mc.a(zB);
        jd.e(new StringBuilder(43).append("Update ad debug logging enablement as ").append(zB).toString());
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
