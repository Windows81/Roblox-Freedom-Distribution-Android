package com.google.android.gms.ads.internal.gmsg;

import android.text.TextUtils;
import com.google.android.gms.internal.ads.aoo;
import com.google.android.gms.internal.ads.aro;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.zzaig;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class i implements ae<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f3120a;

    public i(j jVar) {
        this.f3120a = jVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final void zza(Object obj, Map<String, String> map) {
        int i;
        String str;
        String str2 = map.get("action");
        if ("grant".equals(str2)) {
            try {
                i = Integer.parseInt(map.get("amount"));
                str = map.get("type");
            } catch (NumberFormatException e) {
                jd.c("Unable to parse reward amount.", e);
            }
            zzaig zzaigVar = !TextUtils.isEmpty(str) ? new zzaig(str, i) : null;
            this.f3120a.a(zzaigVar);
            return;
        }
        if ("video_start".equals(str2)) {
            this.f3120a.c_();
            return;
        }
        if ("video_complete".equals(str2)) {
            if (((Boolean) aoo.f().a(aro.ax)).booleanValue()) {
                if (((Boolean) aoo.f().a(aro.ax)).booleanValue()) {
                    this.f3120a.d_();
                }
            }
        }
    }
}
