package com.appsflyer;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class l {
    static JSONObject a(String str) {
        JSONObject jSONObject;
        Throwable th;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException e) {
            jSONObject = null;
        } catch (Throwable th2) {
            jSONObject = null;
            th = th2;
        }
        try {
            if (jSONObject.optBoolean("monitor", false)) {
                y.a().b();
            } else {
                y.a().e();
                y.a().c();
            }
        } catch (JSONException e2) {
            y.a().e();
            y.a().c();
        } catch (Throwable th3) {
            th = th3;
            c.a(th.getMessage(), th);
            y.a().e();
            y.a().c();
        }
        return jSONObject;
    }

    public static String b(String str) {
        return String.format(str, f.c().f());
    }
}
