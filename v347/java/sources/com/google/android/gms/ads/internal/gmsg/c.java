package com.google.android.gms.ads.internal.gmsg;

import android.content.Context;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.cm;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class c implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3106a;

    public c(Context context) {
        this.f3106a = context;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        if (aw.B().a(this.f3106a)) {
            aw.B().a(this.f3106a, map.get("eventName"), map.get("eventId"));
        }
    }
}
