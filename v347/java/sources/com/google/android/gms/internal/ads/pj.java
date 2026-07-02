package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pj implements com.google.android.gms.ads.internal.gmsg.ae<pc> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f5431a;

    private static int a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        if (str2 == null) {
            return i;
        }
        try {
            aoo.a();
            return ly.a(context, Integer.parseInt(str2));
        } catch (NumberFormatException e) {
            jd.e(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length()).append("Could not parse ").append(str).append(" in a video GMSG: ").append(str2).toString());
            return i;
        }
    }

    private static void a(oo ooVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        if (str != null) {
            try {
                Integer.parseInt(str);
            } catch (NumberFormatException e) {
                jd.e(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            Integer.parseInt(str2);
        }
        if (str3 != null) {
            Integer.parseInt(str3);
        }
        if (str4 != null) {
            Integer.parseInt(str4);
        }
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(pc pcVar, Map map) {
        int iMin;
        int i;
        pc pcVar2 = pcVar;
        String str = (String) map.get("action");
        if (str == null) {
            jd.e("Action missing from video GMSG.");
            return;
        }
        if (jd.a(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String string = jSONObject.toString();
            jd.b(new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(string).length()).append("Video GMSG: ").append(str).append(" ").append(string).toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                jd.e("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                pcVar2.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException e) {
                jd.e("Invalid color parameter in video GMSG.");
                return;
            }
        }
        if ("decoderProps".equals(str)) {
            String str3 = (String) map.get("mimeTypes");
            if (str3 == null) {
                jd.e("No MIME types specified for decoder properties inspection.");
                oo.a(pcVar2, "missingMimeTypes");
                return;
            }
            if (Build.VERSION.SDK_INT < 16) {
                jd.e("Video decoder properties available on API versions >= 16.");
                oo.a(pcVar2, "deficientApiVersion");
                return;
            }
            HashMap map2 = new HashMap();
            for (String str4 : str3.split(",")) {
                map2.put(str4, lw.a(str4.trim()));
            }
            oo.a(pcVar2, map2);
            return;
        }
        ot otVarA = pcVar2.a();
        if (otVarA == null) {
            jd.e("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean zEquals = "new".equals(str);
        boolean zEquals2 = "position".equals(str);
        if (zEquals || zEquals2) {
            Context context = pcVar2.getContext();
            int iA = a(context, map, "x", 0);
            int iA2 = a(context, map, "y", 0);
            int iA3 = a(context, map, "w", -1);
            int iA4 = a(context, map, "h", -1);
            if (((Boolean) aoo.f().a(aro.cf)).booleanValue()) {
                iMin = Math.min(iA3, pcVar2.m() - iA);
                iA4 = Math.min(iA4, pcVar2.l() - iA2);
            } else {
                iMin = iA3;
            }
            try {
                i = Integer.parseInt((String) map.get("player"));
            } catch (NumberFormatException e2) {
                i = 0;
            }
            boolean z = Boolean.parseBoolean((String) map.get("spherical"));
            if (!zEquals || otVarA.a() != null) {
                otVarA.a(iA, iA2, iMin, iA4);
                return;
            }
            otVarA.a(iA, iA2, iMin, iA4, i, z, new pb((String) map.get("flags")));
            oo ooVarA = otVarA.a();
            if (ooVarA != null) {
                a(ooVarA, map);
                return;
            }
            return;
        }
        oo ooVarA2 = otVarA.a();
        if (ooVarA2 == null) {
            oo.a(pcVar2);
            return;
        }
        if ("click".equals(str)) {
            Context context2 = pcVar2.getContext();
            int iA5 = a(context2, map, "x", 0);
            int iA6 = a(context2, map, "y", 0);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 0, iA5, iA6, 0);
            ooVarA2.a(motionEventObtain);
            motionEventObtain.recycle();
            return;
        }
        if ("currentTime".equals(str)) {
            String str5 = (String) map.get("time");
            if (str5 == null) {
                jd.e("Time parameter missing from currentTime video GMSG.");
                return;
            }
            try {
                ooVarA2.a((int) (Float.parseFloat(str5) * 1000.0f));
                return;
            } catch (NumberFormatException e3) {
                String strValueOf = String.valueOf(str5);
                jd.e(strValueOf.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(strValueOf) : new String("Could not parse time parameter from currentTime video GMSG: "));
                return;
            }
        }
        if ("hide".equals(str)) {
            ooVarA2.setVisibility(4);
            return;
        }
        if ("load".equals(str)) {
            ooVarA2.h();
            return;
        }
        if ("loadControl".equals(str)) {
            a(ooVarA2, map);
            return;
        }
        if ("muted".equals(str)) {
            if (Boolean.parseBoolean((String) map.get("muted"))) {
                ooVarA2.k();
                return;
            } else {
                ooVarA2.l();
                return;
            }
        }
        if ("pause".equals(str)) {
            ooVarA2.i();
            return;
        }
        if ("play".equals(str)) {
            ooVarA2.j();
            return;
        }
        if ("show".equals(str)) {
            ooVarA2.setVisibility(0);
            return;
        }
        if ("src".equals(str)) {
            ooVarA2.a((String) map.get("src"));
            return;
        }
        if ("touchMove".equals(str)) {
            Context context3 = pcVar2.getContext();
            ooVarA2.a(a(context3, map, "dx", 0), a(context3, map, "dy", 0));
            if (this.f5431a) {
                return;
            }
            pcVar2.f();
            this.f5431a = true;
            return;
        }
        if (!"volume".equals(str)) {
            if ("watermark".equals(str)) {
                ooVarA2.m();
                return;
            } else {
                String strValueOf2 = String.valueOf(str);
                jd.e(strValueOf2.length() != 0 ? "Unknown video action: ".concat(strValueOf2) : new String("Unknown video action: "));
                return;
            }
        }
        String str6 = (String) map.get("volume");
        if (str6 == null) {
            jd.e("Level parameter missing from volume video GMSG.");
            return;
        }
        try {
            ooVarA2.setVolume(Float.parseFloat(str6));
        } catch (NumberFormatException e4) {
            String strValueOf3 = String.valueOf(str6);
            jd.e(strValueOf3.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(strValueOf3) : new String("Could not parse volume parameter from volume video GMSG: "));
        }
    }
}
