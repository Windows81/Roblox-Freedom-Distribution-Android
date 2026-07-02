package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ayt {
    public static void a(ays aysVar, String str, String str2) {
        aysVar.b(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append("(").append(str2).append(");").toString());
    }

    public static void a(ays aysVar, String str, Map map) {
        try {
            aysVar.a(str, com.google.android.gms.ads.internal.aw.e().a((Map<String, ?>) map));
        } catch (JSONException e) {
            jd.e("Could not convert parameters to JSON.");
        }
    }

    public static void a(ays aysVar, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        aysVar.a(str, jSONObject.toString());
    }

    public static void b(ays aysVar, String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(string);
        sb.append(");");
        String strValueOf = String.valueOf(sb.toString());
        jd.b(strValueOf.length() != 0 ? "Dispatching AFMA event: ".concat(strValueOf) : new String("Dispatching AFMA event: "));
        aysVar.b(sb.toString());
    }
}
