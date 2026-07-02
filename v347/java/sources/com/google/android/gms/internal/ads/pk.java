package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pk implements com.google.android.gms.ads.internal.gmsg.ae<pc> {
    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(pc pcVar, Map map) {
        qt qtVar;
        pc pcVar2 = pcVar;
        if (((Boolean) aoo.f().a(aro.bu)).booleanValue()) {
            qt qtVarB = pcVar2.b();
            if (qtVarB == null) {
                try {
                    qt qtVar2 = new qt(pcVar2, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                    pcVar2.a(qtVar2);
                    qtVar = qtVar2;
                } catch (NullPointerException | NumberFormatException e) {
                    jd.b("Unable to parse videoMeta message.", e);
                    com.google.android.gms.ads.internal.aw.i().a(e, "VideoMetaGmsgHandler.onGmsg");
                    return;
                }
            } else {
                qtVar = qtVarB;
            }
            boolean zEquals = "1".equals(map.get("muted"));
            float f = Float.parseFloat((String) map.get("currentTime"));
            int i = Integer.parseInt((String) map.get("playbackState"));
            int i2 = (i < 0 || 3 < i) ? 0 : i;
            String str = (String) map.get("aspectRatio");
            float f2 = TextUtils.isEmpty(str) ? 0.0f : Float.parseFloat(str);
            if (jd.a(3)) {
                jd.b(new StringBuilder(String.valueOf(str).length() + 79).append("Video Meta GMSG: isMuted : ").append(zEquals).append(" , playbackState : ").append(i2).append(" , aspectRatio : ").append(str).toString());
            }
            qtVar.a(f, i2, zEquals, f2);
        }
    }
}
