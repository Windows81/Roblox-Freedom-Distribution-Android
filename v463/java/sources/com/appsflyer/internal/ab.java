package com.appsflyer.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.appsflyer.AFDeepLinkManager;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ab extends OneLinkHttpTask {

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static List<String> f164 = Arrays.asList("onelink.me", "onelnk.com", "app.aflink.com");

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private String f165;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private String f166;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public b f167;

    public interface b {
        /* JADX INFO: renamed from: ı */
        void mo108(String str);

        /* JADX INFO: renamed from: ɩ */
        void mo109(Map<String, String> map);
    }

    public ab(Uri uri, AppsFlyerLibCore appsFlyerLibCore) {
        super(appsFlyerLibCore);
        if (TextUtils.isEmpty(uri.getHost()) || TextUtils.isEmpty(uri.getPath())) {
            return;
        }
        Iterator<String> it = f164.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (uri.getHost().contains(it.next())) {
                z = true;
            }
        }
        if (AFDeepLinkManager.f0 != null) {
            StringBuilder sb = new StringBuilder("Validate custom domain URLs: ");
            sb.append(Arrays.asList(AFDeepLinkManager.f0));
            AFLogger.afRDLog(sb.toString());
            for (String str : AFDeepLinkManager.f0) {
                if (uri.getHost().contains(str) && str != "") {
                    StringBuilder sb2 = new StringBuilder("DeepLink matches customDomain: ");
                    sb2.append(uri.toString());
                    AFLogger.afDebugLog(sb2.toString());
                    z = true;
                }
            }
        }
        String[] strArrSplit = uri.getPath().split("/");
        if (z && strArrSplit.length == 3) {
            this.oneLinkId = strArrSplit[1];
            this.f165 = strArrSplit[2];
            this.f166 = uri.toString();
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public final boolean m120() {
        return (TextUtils.isEmpty(this.oneLinkId) || TextUtils.isEmpty(this.f165) || this.oneLinkId.equals("app")) ? false : true;
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void initRequest(HttpsURLConnection httpsURLConnection) throws JSONException, IOException {
        httpsURLConnection.setRequestMethod("GET");
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final String getOneLinkUrl() {
        StringBuilder sb = new StringBuilder();
        sb.append(ServerConfigHandler.getUrl("https://%sonelink.%s/shortlink-sdk/v1"));
        sb.append("/");
        sb.append(this.oneLinkId);
        sb.append("?id=");
        sb.append(this.f165);
        return sb.toString();
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void handleResponse(String str) {
        try {
            HashMap map = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                map.put(next, jSONObject.optString(next));
            }
            this.f167.mo109(map);
        } catch (JSONException e2) {
            this.f167.mo108("Can't parse one link data");
            AFLogger.afErrorLog("Error while parsing to json ".concat(String.valueOf(str)), e2);
        }
    }

    @Override // com.appsflyer.OneLinkHttpTask
    public final void onErrorResponse() {
        String str = this.f166;
        if (str == null) {
            str = "Can't get one link data";
        }
        this.f167.mo108(str);
    }
}
