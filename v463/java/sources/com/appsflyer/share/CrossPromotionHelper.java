package com.appsflyer.share;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerConfigHandler;
import com.appsflyer.ServerParameters;
import com.appsflyer.internal.am;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CrossPromotionHelper {

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String f324 = "https://%simpression.%s";

    public static void trackAndOpenStore(Context context, String str, String str2) {
        trackAndOpenStore(context, str, str2, null);
    }

    public static void trackAndOpenStore(Context context, String str, String str2, Map<String, String> map) {
        LinkGenerator linkGeneratorM211 = m211(context, str, str2, map, ServerConfigHandler.getUrl(Constants.f323));
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, track And Open Store is disabled", true);
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        map.put("af_campaign", str2);
        AppsFlyerLib.getInstance().trackEvent(context, "af_cross_promotion", map);
        new Thread(new a(linkGeneratorM211.generateLink(), new am(), context, AppsFlyerLib.getInstance().isTrackingStopped())).start();
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2) {
        trackCrossPromoteImpression(context, str, str2, null);
    }

    public static void trackCrossPromoteImpression(Context context, String str, String str2, Map<String, String> map) {
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, Promote Impression is disabled", true);
        } else {
            new Thread(new a(m211(context, str, str2, map, ServerConfigHandler.getUrl(f324)).generateLink(), null, null, AppsFlyerLib.getInstance().isTrackingStopped())).start();
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static LinkGenerator m211(Context context, String str, String str2, Map<String, String> map, String str3) {
        LinkGenerator linkGenerator = new LinkGenerator("af_cross_promotion");
        linkGenerator.f333 = str3;
        linkGenerator.f338 = str;
        linkGenerator.addParameter(Constants.URL_SITE_ID, context.getPackageName());
        if (str2 != null) {
            linkGenerator.setCampaign(str2);
        }
        if (map != null) {
            linkGenerator.addParameters(map);
        }
        String string = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string != null) {
            linkGenerator.addParameter("advertising_id", string);
        }
        return linkGenerator;
    }

    static class a implements Runnable {

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private final am f325;

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private final WeakReference<Context> f326;

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private final String f327;

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        private final boolean f328;

        a(String str, am amVar, Context context, boolean z) {
            this.f327 = str;
            this.f325 = amVar;
            this.f326 = new WeakReference<>(context);
            this.f328 = z;
        }

        @Override // java.lang.Runnable
        public final void run() {
            HttpURLConnection httpURLConnection;
            Throwable th;
            if (this.f328) {
                return;
            }
            try {
                httpURLConnection = (HttpURLConnection) new URL(this.f327).openConnection();
            } catch (Throwable th2) {
                httpURLConnection = null;
                th = th2;
            }
            try {
                httpURLConnection.setConnectTimeout(10000);
                httpURLConnection.setInstanceFollowRedirects(false);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode == 200) {
                    StringBuilder sb = new StringBuilder("Cross promotion impressions success: ");
                    sb.append(this.f327);
                    AFLogger.afInfoLog(sb.toString(), false);
                } else if (responseCode == 301 || responseCode == 302) {
                    StringBuilder sb2 = new StringBuilder("Cross promotion redirection success: ");
                    sb2.append(this.f327);
                    AFLogger.afInfoLog(sb2.toString(), false);
                    if (this.f325 != null && this.f326.get() != null) {
                        this.f325.f210 = httpURLConnection.getHeaderField("Location");
                        am amVar = this.f325;
                        Context context = this.f326.get();
                        if (amVar.f210 != null) {
                            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(amVar.f210)).setFlags(268435456));
                        }
                    }
                } else {
                    StringBuilder sb3 = new StringBuilder("call to ");
                    sb3.append(this.f327);
                    sb3.append(" failed: ");
                    sb3.append(responseCode);
                    AFLogger.afInfoLog(sb3.toString());
                }
            } catch (Throwable th3) {
                th = th3;
                try {
                    AFLogger.afErrorLog(th.getMessage(), th, true);
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } finally {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                }
            }
        }
    }
}
