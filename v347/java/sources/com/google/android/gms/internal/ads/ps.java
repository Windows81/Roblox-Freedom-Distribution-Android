package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class ps implements com.google.android.gms.ads.internal.gmsg.ae<pc> {
    private static Integer a(Map<String, String> map, String str) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt(map.get(str)));
        } catch (NumberFormatException e) {
            String str2 = map.get(str);
            jd.e(new StringBuilder(String.valueOf(str).length() + 39 + String.valueOf(str2).length()).append("Precache invalid numeric parameter '").append(str).append("': ").append(str2).toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(pc pcVar, Map map) {
        pc pcVar2 = pcVar;
        com.google.android.gms.ads.internal.aw.z();
        if (map.containsKey("abort")) {
            if (pn.a(pcVar2)) {
                return;
            }
            jd.e("Precache abort but no precache task running.");
            return;
        }
        String str = (String) map.get("src");
        if (str != null) {
            if (pn.b(pcVar2) != null) {
                jd.e("Precache task is already running.");
                return;
            }
            if (pcVar2.e() == null) {
                jd.e("Precache requires a dependency provider.");
                return;
            }
            pb pbVar = new pb((String) map.get("flags"));
            Integer numA = a(map, "player");
            if (numA == null) {
                numA = 0;
            }
            new pl(pcVar2, pcVar2.e().f3069a.a(pcVar2, numA.intValue(), null, pbVar), str).c();
        } else if (pn.b(pcVar2) == null) {
            jd.e("Precache must specify a source.");
            return;
        }
        Integer numA2 = a(map, "minBufferMs");
        if (numA2 != null) {
            numA2.intValue();
        }
        Integer numA3 = a(map, "maxBufferMs");
        if (numA3 != null) {
            numA3.intValue();
        }
        Integer numA4 = a(map, "bufferForPlaybackMs");
        if (numA4 != null) {
            numA4.intValue();
        }
        Integer numA5 = a(map, "bufferForPlaybackAfterRebufferMs");
        if (numA5 != null) {
            numA5.intValue();
        }
    }
}
