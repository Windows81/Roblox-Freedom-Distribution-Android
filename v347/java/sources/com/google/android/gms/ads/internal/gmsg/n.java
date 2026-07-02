package com.google.android.gms.ads.internal.gmsg;

import android.text.TextUtils;
import com.google.android.gms.ads.internal.aw;
import com.google.android.gms.internal.ads.asb;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.jd;
import com.google.android.gms.internal.ads.qd;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class n implements ae<qd> {
    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(qd qdVar, Map map) {
        qd qdVar2 = qdVar;
        String str = (String) map.get("action");
        if ("tick".equals(str)) {
            String str2 = (String) map.get("label");
            String str3 = (String) map.get("start_label");
            String str4 = (String) map.get("timestamp");
            if (TextUtils.isEmpty(str2)) {
                jd.e("No label given for CSI tick.");
                return;
            }
            if (TextUtils.isEmpty(str4)) {
                jd.e("No timestamp given for CSI tick.");
                return;
            }
            try {
                long j = (Long.parseLong(str4) - aw.l().a()) + aw.l().b();
                if (TextUtils.isEmpty(str3)) {
                    str3 = "native:view_load";
                }
                qdVar2.j().a(str2, str3, j);
                return;
            } catch (NumberFormatException e) {
                jd.c("Malformed timestamp for CSI tick.", e);
                return;
            }
        }
        if ("experiment".equals(str)) {
            String str5 = (String) map.get("value");
            if (TextUtils.isEmpty(str5)) {
                jd.e("No value given for CSI experiment.");
                return;
            }
            asb asbVarA = qdVar2.j().a();
            if (asbVarA == null) {
                jd.e("No ticker for WebView, dropping experiment ID.");
                return;
            } else {
                asbVarA.a("e", str5);
                return;
            }
        }
        if ("extra".equals(str)) {
            String str6 = (String) map.get("name");
            String str7 = (String) map.get("value");
            if (TextUtils.isEmpty(str7)) {
                jd.e("No value given for CSI extra.");
                return;
            }
            if (TextUtils.isEmpty(str6)) {
                jd.e("No name given for CSI extra.");
                return;
            }
            asb asbVarA2 = qdVar2.j().a();
            if (asbVarA2 == null) {
                jd.e("No ticker for WebView, dropping extra parameter.");
            } else {
                asbVarA2.a(str6, str7);
            }
        }
    }
}
