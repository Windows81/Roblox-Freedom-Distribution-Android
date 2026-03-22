package com.appsflyer;

import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppsFlyer2dXConversionCallback implements AppsFlyerConversionListener {
    public native void onAppOpenAttributionNative(Object obj);

    public native void onAttributionFailureNative(Object obj);

    public native void onInstallConversionDataLoadedNative(Object obj);

    public native void onInstallConversionFailureNative(Object obj);

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onConversionDataSuccess(Map<String, Object> map) {
        onInstallConversionDataLoadedNative(map);
    }

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onConversionDataFail(String str) {
        m35("onAttributionFailure", str);
    }

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onAppOpenAttribution(Map<String, String> map) {
        onAppOpenAttributionNative(map);
    }

    @Override // com.appsflyer.AppsFlyerConversionListener
    public void onAttributionFailure(String str) {
        m35("onInstallConversionFailure", str);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private void m35(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("status", "failure");
            jSONObject.put("data", str2);
            byte b2 = -1;
            int iHashCode = str.hashCode();
            if (iHashCode != -1390007222) {
                if (iHashCode == 1050716216 && str.equals("onInstallConversionFailure")) {
                    b2 = 0;
                }
            } else if (str.equals("onAttributionFailure")) {
                b2 = 1;
            }
            if (b2 == 0) {
                onInstallConversionFailureNative(jSONObject);
            } else {
                if (b2 != 1) {
                    return;
                }
                onAttributionFailureNative(jSONObject);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
