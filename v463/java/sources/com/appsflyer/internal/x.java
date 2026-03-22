package com.appsflyer.internal;

import android.content.Context;
import android.content.Intent;
import com.appsflyer.AFEvent;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerInAppPurchaseValidatorListener;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.model.event.Purchase;
import com.appsflyer.internal.model.event.SdkServices;
import com.appsflyer.internal.model.event.Validate;
import com.appsflyer.internal.referrer.Payload;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class x implements Runnable {

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static String f310 = null;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String f311 = "https://%ssdk-services.%s/validate-android-signature";

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private WeakReference<Context> f312;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private String f313;

    /* JADX INFO: renamed from: ȷ, reason: contains not printable characters */
    private Map<String, String> f314;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private String f315;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private String f316;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private final Intent f317;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private String f318;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private String f319;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private String f320;

    static {
        StringBuilder sb = new StringBuilder("https://%svalidate.%s/api/v");
        sb.append(AppsFlyerLibCore.f58);
        sb.append("/androidevent?buildnumber=5.4.1&app_id=");
        f310 = sb.toString();
    }

    public x(Context context, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map, Intent intent) {
        this.f312 = new WeakReference<>(context);
        this.f315 = str;
        this.f318 = str2;
        this.f320 = str4;
        this.f313 = str5;
        this.f316 = str6;
        this.f314 = map;
        this.f319 = str3;
        this.f317 = intent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.f315;
        if (str == null || str.length() == 0 || AppsFlyerLib.getInstance().isTrackingStopped()) {
            return;
        }
        HttpURLConnection httpURLConnection = null;
        try {
            Context context = this.f312.get();
            if (context == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("public-key", this.f318);
            map.put("sig-data", this.f320);
            map.put("signature", this.f319);
            final HashMap map2 = new HashMap(map);
            new Thread(new Runnable() { // from class: com.appsflyer.internal.x.3
                @Override // java.lang.Runnable
                public final void run() {
                    x xVar = x.this;
                    x.m203(xVar, map2, xVar.f314, x.this.f312);
                }
            }).start();
            map.put("dev_key", this.f315);
            map.put("app_id", context.getPackageName());
            map.put("uid", AppsFlyerLib.getInstance().getAppsFlyerUID(context));
            map.put(ServerParameters.ADVERTISING_ID_PARAM, AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM));
            String string = new JSONObject(map).toString();
            String url = ServerConfigHandler.getUrl(f311);
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("server_request", url, string);
            HttpURLConnection httpURLConnectionM202 = m202((Purchase) new SdkServices().params(map).urlString(url));
            int responseCode = httpURLConnectionM202 != null ? httpURLConnectionM202.getResponseCode() : -1;
            String strM99 = AppsFlyerLibCore.getInstance().m99(httpURLConnectionM202);
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("server_response", url, String.valueOf(responseCode), strM99);
            JSONObject jSONObject = new JSONObject(strM99);
            jSONObject.put("code", responseCode);
            if (responseCode == 200) {
                StringBuilder sb = new StringBuilder("Validate response 200 ok: ");
                sb.append(jSONObject.toString());
                AFLogger.afInfoLog(sb.toString());
                m205(jSONObject.optBoolean("result"), this.f320, this.f313, this.f316, jSONObject.toString());
            } else {
                AFLogger.afInfoLog("Failed Validate request");
                m205(false, this.f320, this.f313, this.f316, jSONObject.toString());
            }
            if (httpURLConnectionM202 != null) {
                httpURLConnectionM202.disconnect();
            }
        } catch (Throwable th) {
            try {
                if (AppsFlyerLibCore.f60 != null) {
                    AFLogger.afErrorLog("Failed Validate request + ex", th);
                    m205(false, this.f320, this.f313, this.f316, th.getMessage());
                }
                AFLogger.afErrorLog(th.getMessage(), th);
            } finally {
                if (0 != 0) {
                    httpURLConnection.disconnect();
                }
            }
        }
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static HttpURLConnection m202(Purchase purchase) {
        StringBuilder sb = new StringBuilder("Calling ");
        sb.append(purchase.urlString());
        AFLogger.afDebugLog(sb.toString());
        return new ad(purchase.trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped())).m123();
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static void m205(boolean z, String str, String str2, String str3, String str4) {
        if (AppsFlyerLibCore.f60 != null) {
            StringBuilder sb = new StringBuilder("Validate callback parameters: ");
            sb.append(str);
            sb.append(" ");
            sb.append(str2);
            sb.append(" ");
            sb.append(str3);
            AFLogger.afDebugLog(sb.toString());
            if (z) {
                AFLogger.afDebugLog("Validate in app purchase success: ".concat(String.valueOf(str4)));
                AppsFlyerLibCore.f60.onValidateInApp();
                return;
            }
            AFLogger.afDebugLog("Validate in app purchase failed: ".concat(String.valueOf(str4)));
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = AppsFlyerLibCore.f60;
            if (str4 == null) {
                str4 = "Failed validating";
            }
            appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure(str4);
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    static /* synthetic */ void m203(x xVar, Map map, Map map2, WeakReference weakReference) {
        if (weakReference.get() != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(f310));
            sb.append(((Context) weakReference.get()).getPackageName());
            String string = sb.toString();
            String string2 = AppsFlyerLibCore.getSharedPreferences((Context) weakReference.get()).getString(Payload.RFR, "");
            AFEvent aFEventKey = new Validate((Context) weakReference.get()).key(xVar.f315);
            aFEventKey.f8 = string2;
            aFEventKey.f9 = xVar.f317;
            AFEvent aFEvent = (Validate) aFEventKey;
            Map<String, Object> mapM102 = AppsFlyerLibCore.getInstance().m102(aFEvent);
            mapM102.put("price", xVar.f313);
            mapM102.put("currency", xVar.f316);
            mapM102.put("receipt_data", map);
            if (map2 != null) {
                mapM102.put("extra_prms", map2);
            }
            String string3 = new JSONObject(mapM102).toString();
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("server_request", string, string3);
            HttpURLConnection httpURLConnectionM202 = null;
            try {
                httpURLConnectionM202 = m202((Purchase) aFEvent.params(mapM102).urlString(string));
                int responseCode = httpURLConnectionM202 != null ? httpURLConnectionM202.getResponseCode() : -1;
                String strM99 = AppsFlyerLibCore.getInstance().m99(httpURLConnectionM202);
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai.f184.m141("server_response", string, String.valueOf(responseCode), strM99);
                StringBuilder sb2 = new StringBuilder("Validate-WH response - ");
                sb2.append(responseCode);
                sb2.append(": ");
                sb2.append(new JSONObject(strM99).toString());
                AFLogger.afInfoLog(sb2.toString());
            } catch (Throwable th) {
                try {
                    AFLogger.afErrorLog(th.getMessage(), th);
                    if (httpURLConnectionM202 != null) {
                        httpURLConnectionM202.disconnect();
                    }
                } finally {
                    if (httpURLConnectionM202 != null) {
                        httpURLConnectionM202.disconnect();
                    }
                }
            }
        }
    }
}
