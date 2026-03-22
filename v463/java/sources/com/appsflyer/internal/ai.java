package com.appsflyer.internal;

import android.content.pm.PackageManager;
import android.os.Build;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.ServerParameters;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ai {

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public static ai f184;

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private boolean f185 = true;

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private String f186 = "-1";

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private JSONObject f187;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private JSONArray f188;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public boolean f189;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private boolean f190;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private int f191;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private boolean f192;

    public ai() {
        this.f191 = 0;
        boolean z = AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DPM, false);
        this.f192 = z;
        this.f189 = true ^ z;
        this.f188 = new JSONArray();
        this.f191 = 0;
        this.f190 = false;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public final synchronized void m144(String str) {
        this.f186 = str;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public final synchronized void m142() {
        this.f190 = true;
        m141("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public final synchronized void m147() {
        m141("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        this.f190 = false;
        this.f185 = false;
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public final synchronized void m143() {
        this.f187 = null;
        this.f188 = null;
        f184 = null;
    }

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private boolean m138() {
        if (this.f189) {
            return this.f185 || this.f190;
        }
        return false;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private synchronized void m135(String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            this.f187.put("brand", str);
            this.f187.put("model", str2);
            this.f187.put("platform", "Android");
            this.f187.put("platform_version", str3);
            if (str4 != null && str4.length() > 0) {
                this.f187.put(ServerParameters.ADVERTISING_ID_PARAM, str4);
            }
            if (str5 != null && str5.length() > 0) {
                this.f187.put("imei", str5);
            }
            if (str6 != null && str6.length() > 0) {
                this.f187.put("android_id", str6);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private synchronized void m137(String str, String str2, String str3, String str4) {
        try {
            this.f187.put("sdk_version", str);
            if (str2 != null && str2.length() > 0) {
                this.f187.put("devkey", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.f187.put("originalAppsFlyerId", str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.f187.put("uid", str4);
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private synchronized void m136(String str, String str2, String str3, String str4) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.f187.put("app_id", str);
                }
            } catch (Throwable unused) {
                return;
            }
        }
        if (str2 != null && str2.length() > 0) {
            this.f187.put("app_version", str2);
        }
        if (str3 != null && str3.length() > 0) {
            this.f187.put(AppsFlyerProperties.CHANNEL, str3);
        }
        if (str4 != null && str4.length() > 0) {
            this.f187.put("preInstall", str4);
        }
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public final synchronized void m141(String str, String str2, String... strArr) {
        if (m138()) {
            if (this.f191 < 98304) {
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    String string = "";
                    if (strArr.length > 0) {
                        StringBuilder sb = new StringBuilder();
                        for (int length = strArr.length - 1; length > 0; length--) {
                            sb.append(strArr[length]);
                            sb.append(", ");
                        }
                        sb.append(strArr[0]);
                        string = sb.toString();
                    }
                    String str3 = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.ENGLISH).format(Long.valueOf(jCurrentTimeMillis));
                    String str4 = str != null ? String.format("%18s %5s _/%s [%s] %s %s", str3, Long.valueOf(Thread.currentThread().getId()), AppsFlyerLibCore.LOG_TAG, str, str2, string) : String.format("%18s %5s %s/%s %s", str3, Long.valueOf(Thread.currentThread().getId()), str2, AppsFlyerLibCore.LOG_TAG, string);
                    this.f188.put(str4);
                    this.f191 += str4.getBytes().length;
                } catch (Throwable unused) {
                }
            }
        }
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public final synchronized String m145() {
        String string;
        try {
            this.f187.put("data", this.f188);
            string = this.f187.toString();
            try {
                m139();
            } catch (JSONException unused) {
            }
        } catch (JSONException unused2) {
            string = null;
        }
        return string;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public final synchronized void m146(String str, PackageManager packageManager) {
        AppsFlyerProperties appsFlyerProperties = AppsFlyerProperties.getInstance();
        AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.getInstance();
        String string = appsFlyerProperties.getString("remote_debug_static_data");
        if (string != null) {
            try {
                this.f187 = new JSONObject(string);
            } catch (Throwable unused) {
            }
        } else {
            this.f187 = new JSONObject();
            m135(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, appsFlyerProperties.getString(ServerParameters.ADVERTISING_ID_PARAM), appsFlyerLibCore.f85, appsFlyerLibCore.f86);
            StringBuilder sb = new StringBuilder("5.4.1.");
            sb.append(AppsFlyerLibCore.f61);
            m137(sb.toString(), appsFlyerProperties.getString(AppsFlyerProperties.AF_KEY), appsFlyerProperties.getString("KSAppsFlyerId"), appsFlyerProperties.getString("uid"));
            try {
                int i = packageManager.getPackageInfo(str, 0).versionCode;
                m136(str, String.valueOf(i), appsFlyerProperties.getString(AppsFlyerProperties.CHANNEL), appsFlyerProperties.getString("preInstallName"));
            } catch (Throwable unused2) {
            }
            appsFlyerProperties.set("remote_debug_static_data", this.f187.toString());
        }
        try {
            this.f187.put("launch_counter", this.f186);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private synchronized void m139() {
        this.f188 = null;
        this.f188 = new JSONArray();
        this.f191 = 0;
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public final synchronized void m140() {
        this.f185 = false;
        m139();
    }

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    public final boolean m148() {
        return this.f190;
    }
}
