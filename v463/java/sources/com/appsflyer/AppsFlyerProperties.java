package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.internal.referrer.Payload;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppsFlyerProperties {
    public static final String ADDITIONAL_CUSTOM_DATA = "additionalCustomData";
    public static final String AF_KEY = "AppsFlyerKey";
    public static final String AF_WAITFOR_CUSTOMERID = "waitForCustomerId";
    public static final String APP_ID = "appid";
    public static final String APP_USER_ID = "AppUserId";
    public static final String CHANNEL = "channel";
    public static final String COLLECT_ANDROID_ID = "collectAndroidId";
    public static final String COLLECT_ANDROID_ID_FORCE_BY_USER = "collectAndroidIdForceByUser";
    public static final String COLLECT_FACEBOOK_ATTR_ID = "collectFacebookAttrId";
    public static final String COLLECT_FINGER_PRINT = "collectFingerPrint";
    public static final String COLLECT_IMEI = "collectIMEI";
    public static final String COLLECT_IMEI_FORCE_BY_USER = "collectIMEIForceByUser";
    public static final String COLLECT_MAC = "collectMAC";
    public static final String COLLECT_OAID = "collectOAID";
    public static final String CURRENCY_CODE = "currencyCode";
    public static final String DEVICE_TRACKING_DISABLED = "deviceTrackingDisabled";
    public static final String DISABLE_KEYSTORE = "keyPropDisableAFKeystore";
    public static final String DISABLE_LOGS_COMPLETELY = "disableLogs";
    public static final String DISABLE_OTHER_SDK = "disableOtherSdk";
    public static final String DPM = "disableProxy";
    public static final String EMAIL_CRYPT_TYPE = "userEmailsCryptType";
    public static final String ENABLE_GPS_FALLBACK = "enableGpsFallback";
    public static final String EXTENSION = "sdkExtension";
    public static final String IS_UPDATE = "IS_UPDATE";
    public static final String LAUNCH_PROTECT_ENABLED = "launchProtectEnabled";
    public static final String NEW_REFERRER_SENT = "newGPReferrerSent";
    public static final String ONELINK_DOMAIN = "onelinkDomain";
    public static final String ONELINK_ID = "oneLinkSlug";
    public static final String ONELINK_SCHEME = "onelinkScheme";
    public static final String USER_EMAIL = "userEmail";
    public static final String USER_EMAILS = "userEmails";
    public static final String USE_HTTP_FALLBACK = "useHttpFallback";

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static AppsFlyerProperties f126 = new AppsFlyerProperties();

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private String f127;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private boolean f128;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private Map<String, Object> f129 = new HashMap();

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private boolean f130 = false;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private boolean f131;

    private AppsFlyerProperties() {
    }

    public static AppsFlyerProperties getInstance() {
        return f126;
    }

    public synchronized void remove(String str) {
        this.f129.remove(str);
    }

    public synchronized void set(String str, String str2) {
        this.f129.put(str, str2);
    }

    public synchronized void set(String str, String[] strArr) {
        this.f129.put(str, strArr);
    }

    public synchronized void set(String str, int i) {
        this.f129.put(str, Integer.toString(i));
    }

    public synchronized void set(String str, long j) {
        this.f129.put(str, Long.toString(j));
    }

    public synchronized void set(String str, boolean z) {
        this.f129.put(str, Boolean.toString(z));
    }

    public synchronized void setCustomData(String str) {
        this.f129.put(ADDITIONAL_CUSTOM_DATA, str);
    }

    public synchronized void setUserEmails(String str) {
        this.f129.put(USER_EMAILS, str);
    }

    public synchronized String getString(String str) {
        return (String) this.f129.get(str);
    }

    public boolean getBoolean(String str, boolean z) {
        String string = getString(str);
        return string == null ? z : Boolean.valueOf(string).booleanValue();
    }

    public int getInt(String str, int i) {
        String string = getString(str);
        return string == null ? i : Integer.valueOf(string).intValue();
    }

    public long getLong(String str, long j) {
        String string = getString(str);
        return string == null ? j : Long.valueOf(string).longValue();
    }

    public synchronized Object getObject(String str) {
        return this.f129.get(str);
    }

    protected boolean isOnReceiveCalled() {
        return this.f128;
    }

    protected void setOnReceiveCalled() {
        this.f128 = true;
    }

    protected boolean isFirstLaunchCalled() {
        return this.f131;
    }

    protected void setFirstLaunchCalled(boolean z) {
        this.f131 = z;
    }

    protected void setFirstLaunchCalled() {
        this.f131 = true;
    }

    protected void setReferrer(String str) {
        set("AF_REFERRER", str);
        this.f127 = str;
    }

    public String getReferrer(Context context) {
        String str = this.f127;
        if (str != null) {
            return str;
        }
        if (getString("AF_REFERRER") != null) {
            return getString("AF_REFERRER");
        }
        if (context == null) {
            return null;
        }
        return AppsFlyerLibCore.getSharedPreferences(context).getString(Payload.RFR, null);
    }

    public boolean isEnableLog() {
        return getBoolean("shouldLog", true);
    }

    public boolean isLogsDisabledCompletely() {
        return getBoolean(DISABLE_LOGS_COMPLETELY, false);
    }

    public boolean isOtherSdkStringDisabled() {
        return getBoolean(DISABLE_OTHER_SDK, false);
    }

    public synchronized void saveProperties(SharedPreferences sharedPreferences) {
        sharedPreferences.edit().putString("savedProperties", new JSONObject(this.f129).toString()).apply();
    }

    public synchronized void loadProperties(Context context) {
        if (m111()) {
            return;
        }
        String string = AppsFlyerLibCore.getSharedPreferences(context).getString("savedProperties", null);
        if (string != null) {
            AFLogger.afDebugLog("Loading properties..");
            try {
                JSONObject jSONObject = new JSONObject(string);
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    if (this.f129.get(next) == null) {
                        this.f129.put(next, jSONObject.getString(next));
                    }
                }
                this.f130 = true;
            } catch (JSONException e2) {
                AFLogger.afErrorLog("Failed loading properties", e2);
            }
            StringBuilder sb = new StringBuilder("Done loading properties: ");
            sb.append(this.f130);
            AFLogger.afDebugLog(sb.toString());
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private boolean m111() {
        return this.f130;
    }

    public enum EmailsCryptType {
        NONE(0),
        SHA256(3);


        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private final int f133;

        EmailsCryptType(int i) {
            this.f133 = i;
        }

        public final int getValue() {
            return this.f133;
        }
    }
}
