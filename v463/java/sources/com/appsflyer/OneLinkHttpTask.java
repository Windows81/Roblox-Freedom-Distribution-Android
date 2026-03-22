package com.appsflyer;

import android.text.TextUtils;
import com.appsflyer.internal.z;
import java.io.IOException;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class OneLinkHttpTask implements Runnable {
    static final String BASE_URL = "https://%sonelink.%s/shortlink-sdk/v1";
    static final String NO_CONNECTION_ERROR_MSG = "Can't get one link data";
    private static final int WAIT_TIMEOUT = 3000;
    private AppsFlyerLibCore afLib;
    private HttpsUrlConnectionProvider connectionProvider;
    public String oneLinkId;

    protected abstract String getOneLinkUrl();

    protected abstract void handleResponse(String str);

    protected abstract void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException;

    protected abstract void onErrorResponse();

    public OneLinkHttpTask(AppsFlyerLibCore appsFlyerLibCore) {
        this.afLib = appsFlyerLibCore;
    }

    public void setConnProvider(HttpsUrlConnectionProvider httpsUrlConnectionProvider) {
        this.connectionProvider = httpsUrlConnectionProvider;
    }

    @Override // java.lang.Runnable
    public void run() {
        doRequest();
    }

    private void doRequest() {
        String strM99;
        Throwable th;
        String str = "";
        long jCurrentTimeMillis = System.currentTimeMillis() / 1000;
        String oneLinkUrl = getOneLinkUrl();
        AFLogger.afRDLog("oneLinkUrl: " + oneLinkUrl);
        try {
            HttpsURLConnection httpsURLConnectionM113 = this.connectionProvider.m113(oneLinkUrl);
            httpsURLConnectionM113.addRequestProperty("content-type", "application/json");
            httpsURLConnectionM113.addRequestProperty("authorization", z.m210(jCurrentTimeMillis));
            httpsURLConnectionM113.addRequestProperty("af-timestamp", String.valueOf(jCurrentTimeMillis));
            httpsURLConnectionM113.setReadTimeout(WAIT_TIMEOUT);
            httpsURLConnectionM113.setConnectTimeout(WAIT_TIMEOUT);
            initRequest(httpsURLConnectionM113);
            int responseCode = httpsURLConnectionM113.getResponseCode();
            strM99 = this.afLib.m99(httpsURLConnectionM113);
            try {
                if (responseCode == 200) {
                    AFLogger.afInfoLog("Status 200 ok");
                } else {
                    str = "Response code = " + responseCode + " content = " + strM99;
                }
            } catch (Throwable th2) {
                th = th2;
                AFLogger.afErrorLog("Error while calling " + oneLinkUrl, th);
                str = "Error while calling " + oneLinkUrl + " stacktrace: " + th.toString();
            }
        } catch (Throwable th3) {
            strM99 = "";
            th = th3;
        }
        if (TextUtils.isEmpty(str)) {
            AFLogger.afInfoLog("Connection call succeeded: " + strM99);
            handleResponse(strM99);
            return;
        }
        AFLogger.afWarnLog("Connection error: " + str);
        onErrorResponse();
    }

    public static class HttpsUrlConnectionProvider {
        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        final HttpsURLConnection m113(String str) throws IOException {
            return (HttpsURLConnection) new URL(str).openConnection();
        }
    }
}
