package com.appsflyer.share;

import android.content.Context;
import com.appsflyer.AFExecutor;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLib;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.CreateOneLinkHttpTask;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.ServerConfigHandler;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LinkGenerator {

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private String f329;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private String f330;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private String f331;

    /* JADX INFO: renamed from: ɨ, reason: contains not printable characters */
    private String f332;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    String f333;

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private String f334;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private String f335;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private String f337;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    String f338;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private String f339;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private String f340;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private String f341;

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    private Map<String, String> f336 = new HashMap();

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private Map<String, String> f342 = new HashMap();

    public LinkGenerator(String str) {
        this.f329 = str;
    }

    public LinkGenerator setBrandDomain(String str) {
        this.f334 = str;
        return this;
    }

    public String getBrandDomain() {
        return this.f334;
    }

    public LinkGenerator setDeeplinkPath(String str) {
        this.f330 = str;
        return this;
    }

    public LinkGenerator setBaseDeeplink(String str) {
        this.f332 = str;
        return this;
    }

    public String getChannel() {
        return this.f337;
    }

    public LinkGenerator setChannel(String str) {
        this.f337 = str;
        return this;
    }

    public LinkGenerator setReferrerCustomerId(String str) {
        this.f335 = str;
        return this;
    }

    public String getMediaSource() {
        return this.f329;
    }

    public Map<String, String> getParameters() {
        return this.f336;
    }

    public String getCampaign() {
        return this.f331;
    }

    public LinkGenerator setCampaign(String str) {
        this.f331 = str;
        return this;
    }

    public LinkGenerator addParameter(String str, String str2) {
        this.f336.put(str, str2);
        return this;
    }

    public LinkGenerator addParameters(Map<String, String> map) {
        if (map != null) {
            this.f336.putAll(map);
        }
        return this;
    }

    public LinkGenerator setReferrerUID(String str) {
        this.f340 = str;
        return this;
    }

    public LinkGenerator setReferrerName(String str) {
        this.f339 = str;
        return this;
    }

    public LinkGenerator setReferrerImageURL(String str) {
        this.f341 = str;
        return this;
    }

    public LinkGenerator setBaseURL(String str, String str2, String str3) {
        if (str == null || str.length() <= 0) {
            this.f333 = String.format("https://%s/%s", ServerConfigHandler.getUrl("%sapp.%s"), str3);
        } else {
            if (str2 == null || str2.length() < 5) {
                str2 = "go.onelink.me";
            }
            this.f333 = String.format("https://%s/%s", str2, str);
        }
        return this;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private StringBuilder m212() {
        StringBuilder sb = new StringBuilder();
        String str = this.f333;
        if (str != null && str.startsWith("http")) {
            sb.append(this.f333);
        } else {
            sb.append(ServerConfigHandler.getUrl(Constants.f323));
        }
        if (this.f338 != null) {
            sb.append('/');
            sb.append(this.f338);
        }
        this.f342.put(Constants.URL_MEDIA_SOURCE, this.f329);
        sb.append('?');
        sb.append("pid=");
        sb.append(m213(this.f329, "media source"));
        String str2 = this.f340;
        if (str2 != null) {
            this.f342.put("af_referrer_uid", str2);
            sb.append('&');
            sb.append("af_referrer_uid=");
            sb.append(m213(this.f340, "referrerUID"));
        }
        String str3 = this.f337;
        if (str3 != null) {
            this.f342.put("af_channel", str3);
            sb.append('&');
            sb.append("af_channel=");
            sb.append(m213(this.f337, AppsFlyerProperties.CHANNEL));
        }
        String str4 = this.f335;
        if (str4 != null) {
            this.f342.put("af_referrer_customer_id", str4);
            sb.append('&');
            sb.append("af_referrer_customer_id=");
            sb.append(m213(this.f335, "referrerCustomerId"));
        }
        String str5 = this.f331;
        if (str5 != null) {
            this.f342.put(Constants.URL_CAMPAIGN, str5);
            sb.append('&');
            sb.append("c=");
            sb.append(m213(this.f331, "campaign"));
        }
        String str6 = this.f339;
        if (str6 != null) {
            this.f342.put("af_referrer_name", str6);
            sb.append('&');
            sb.append("af_referrer_name=");
            sb.append(m213(this.f339, "referrerName"));
        }
        String str7 = this.f341;
        if (str7 != null) {
            this.f342.put("af_referrer_image_url", str7);
            sb.append('&');
            sb.append("af_referrer_image_url=");
            sb.append(m213(this.f341, "referrerImageURL"));
        }
        if (this.f332 != null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(this.f332);
            sb2.append(this.f332.endsWith("/") ? "" : "/");
            String str8 = this.f330;
            if (str8 != null) {
                sb2.append(str8);
            }
            this.f342.put("af_dp", sb2.toString());
            sb.append('&');
            sb.append("af_dp=");
            sb.append(m213(this.f332, "baseDeeplink"));
            if (this.f330 != null) {
                sb.append(this.f332.endsWith("/") ? "" : "%2F");
                sb.append(m213(this.f330, "deeplinkPath"));
            }
        }
        for (String str9 : this.f336.keySet()) {
            String string = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(str9);
            sb3.append("=");
            sb3.append(m213(this.f336.get(str9), str9));
            if (!string.contains(sb3.toString())) {
                sb.append('&');
                sb.append(str9);
                sb.append('=');
                sb.append(m213(this.f336.get(str9), str9));
            }
        }
        return sb;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String m213(String str, String str2) {
        try {
            return URLEncoder.encode(str, "utf8");
        } catch (UnsupportedEncodingException unused) {
            StringBuilder sb = new StringBuilder("Illegal ");
            sb.append(str2);
            sb.append(": ");
            sb.append(str);
            AFLogger.afInfoLog(sb.toString());
            return "";
        } catch (Throwable unused2) {
            return "";
        }
    }

    public String generateLink() {
        return m212().toString();
    }

    public void generateLink(Context context, CreateOneLinkHttpTask.ResponseListener responseListener) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID);
        if (!this.f336.isEmpty()) {
            for (Map.Entry<String, String> entry : this.f336.entrySet()) {
                this.f342.put(entry.getKey(), entry.getValue());
            }
        }
        m212();
        String str = this.f334;
        Map<String, String> map = this.f342;
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false)) {
            AFLogger.afInfoLog("CustomerUserId not set, generate User Invite Link is disabled", true);
            return;
        }
        CreateOneLinkHttpTask createOneLinkHttpTask = new CreateOneLinkHttpTask(string, map, AppsFlyerLibCore.getInstance(), context, AppsFlyerLib.getInstance().isTrackingStopped());
        createOneLinkHttpTask.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        createOneLinkHttpTask.setListener(responseListener);
        createOneLinkHttpTask.setBrandDomain(str);
        AFExecutor.getInstance().getThreadPoolExecutor().execute(createOneLinkHttpTask);
    }
}
