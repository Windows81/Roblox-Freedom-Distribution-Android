package com.appsflyer;

import com.appsflyer.internal.ai;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ServerConfigHandler {
    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    static JSONObject m114(String str) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
        } catch (Throwable th) {
            th = th;
        }
        try {
            boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
            if (jSONObject.optBoolean("monitor", false) && !z) {
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai.f184.m142();
            } else {
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai.f184.m140();
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai.f184.m147();
            }
            if (!jSONObject.has("ol_id")) {
                return jSONObject;
            }
            String strOptString = jSONObject.optString("ol_scheme", null);
            String strOptString2 = jSONObject.optString("ol_domain", null);
            String strOptString3 = jSONObject.optString("ol_ver", null);
            if (strOptString != null) {
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_SCHEME, strOptString);
            }
            if (strOptString2 != null) {
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_DOMAIN, strOptString2);
            }
            if (strOptString3 == null) {
                return jSONObject;
            }
            AppsFlyerProperties.getInstance().set("onelinkVersion", strOptString3);
            return jSONObject;
        } catch (JSONException unused2) {
            jSONObject2 = jSONObject;
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m140();
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m147();
            return jSONObject2;
        } catch (Throwable th2) {
            th = th2;
            jSONObject2 = jSONObject;
            AFLogger.afErrorLog(th.getMessage(), th);
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m140();
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m147();
            return jSONObject2;
        }
    }

    public static String getUrl(String str) {
        return String.format(str, AppsFlyerLib.getInstance().getHostPrefix(), AppsFlyerLibCore.getInstance().getHostName());
    }
}
