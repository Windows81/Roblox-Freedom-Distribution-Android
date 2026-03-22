package com.appsflyer;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.WindowManager;
import com.appsflyer.AFFacebookDeferredDeeplink;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerProperties;
import com.appsflyer.Foreground;
import com.appsflyer.OneLinkHttpTask;
import com.appsflyer.internal.aa;
import com.appsflyer.internal.ab;
import com.appsflyer.internal.ac;
import com.appsflyer.internal.ad;
import com.appsflyer.internal.ae;
import com.appsflyer.internal.af;
import com.appsflyer.internal.ag;
import com.appsflyer.internal.ah;
import com.appsflyer.internal.ai;
import com.appsflyer.internal.c;
import com.appsflyer.internal.d;
import com.appsflyer.internal.j;
import com.appsflyer.internal.model.event.AdRevenue;
import com.appsflyer.internal.model.event.Attr;
import com.appsflyer.internal.model.event.BackgroundEvent;
import com.appsflyer.internal.model.event.BackgroundReferrerLaunch;
import com.appsflyer.internal.model.event.CachedEvent;
import com.appsflyer.internal.model.event.InAppEvent;
import com.appsflyer.internal.model.event.Launch;
import com.appsflyer.internal.model.event.ProxyEvent;
import com.appsflyer.internal.model.event.Stats;
import com.appsflyer.internal.model.event.UninstallTokenEvent;
import com.appsflyer.internal.referrer.GoogleReferrer;
import com.appsflyer.internal.referrer.HuaweiReferrer;
import com.appsflyer.internal.referrer.MandatoryFields;
import com.appsflyer.internal.referrer.Payload;
import com.appsflyer.internal.s;
import com.appsflyer.internal.t;
import com.appsflyer.internal.v;
import com.appsflyer.internal.w;
import com.appsflyer.internal.x;
import com.appsflyer.internal.y;
import com.appsflyer.internal.z;
import com.appsflyer.share.Constants;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.HttpURLConnection;
import java.net.NetworkInterface;
import java.net.URI;
import java.net.URL;
import java.security.KeyStoreException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class AppsFlyerLibCore extends AppsFlyerLib {
    public static final String AF_PRE_INSTALL_PATH = "AF_PRE_INSTALL_PATH";
    public static String FIRST_LAUNCHES_URL = null;
    public static final String INSTALL_REFERRER_PREF = "rfr";
    public static final String IS_STOP_TRACKING_USED = "is_stop_tracking_used";
    public static final String LOG_TAG = "AppsFlyer_5.4.1";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT = "/data/local/tmp/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_DEFAULT_ETC = "/etc/pre_install.appsflyer";
    public static final String PRE_INSTALL_SYSTEM_RO_PROP = "ro.appsflyer.preinstall.path";
    public static String REFERRER_TRACKING_URL = null;
    public static String REGISTER_URL = null;
    public static AppsFlyerLibCore instance = null;

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public static final String f58 = "5.4";

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private static final String f59;

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public static AppsFlyerInAppPurchaseValidatorListener f60 = null;

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public static final String f61 = "44";

    /* JADX INFO: renamed from: ɪ, reason: contains not printable characters */
    private static AppsFlyerConversionListener f62;

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private static String f63;

    /* JADX INFO: renamed from: ɾ, reason: contains not printable characters */
    private static String f64;

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private static String f65;

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private static final String f66;

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    private static final List<String> f67;

    /* JADX INFO: renamed from: ſ, reason: contains not printable characters */
    private long f70;

    /* JADX INFO: renamed from: Ɨ, reason: contains not printable characters */
    private String f71;

    /* JADX INFO: renamed from: ƚ, reason: contains not printable characters */
    private Map<Long, String> f72;

    /* JADX INFO: renamed from: ǀ, reason: contains not printable characters */
    private boolean f73;

    /* JADX INFO: renamed from: ɨ, reason: contains not printable characters */
    private String f78;

    /* JADX INFO: renamed from: ɺ, reason: contains not printable characters */
    private boolean f79;

    /* JADX INFO: renamed from: ʅ, reason: contains not printable characters */
    private long f82;

    /* JADX INFO: renamed from: ʟ, reason: contains not printable characters */
    private GoogleReferrer f83;

    /* JADX INFO: renamed from: ͻ, reason: contains not printable characters */
    private Map<String, Object> f84;

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public String f85;

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public String f86;

    /* JADX INFO: renamed from: ϲ, reason: contains not printable characters */
    private Map<String, Object> f87;

    /* JADX INFO: renamed from: ϳ, reason: contains not printable characters */
    private Application f88;

    /* JADX INFO: renamed from: т, reason: contains not printable characters */
    private HuaweiReferrer f92;

    /* JADX INFO: renamed from: х, reason: contains not printable characters */
    private String f93;

    /* JADX INFO: renamed from: ґ, reason: contains not printable characters */
    private String[] f94;

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    long f95;
    protected Uri latestDeepLink = null;

    /* JADX INFO: renamed from: ȷ, reason: contains not printable characters */
    private long f74 = -1;

    /* JADX INFO: renamed from: ŀ, reason: contains not printable characters */
    private long f68 = -1;

    /* JADX INFO: renamed from: ɿ, reason: contains not printable characters */
    private long f81 = TimeUnit.SECONDS.toMillis(5);

    /* JADX INFO: renamed from: г, reason: contains not printable characters */
    private boolean f90 = false;

    /* JADX INFO: renamed from: ł, reason: contains not printable characters */
    private ScheduledExecutorService f69 = null;

    /* JADX INFO: renamed from: ɍ, reason: contains not printable characters */
    private boolean f75 = false;

    /* JADX INFO: renamed from: ɟ, reason: contains not printable characters */
    private ag f77 = new ag();

    /* JADX INFO: renamed from: ɔ, reason: contains not printable characters */
    private boolean f76 = false;

    /* JADX INFO: renamed from: ɼ, reason: contains not printable characters */
    private boolean f80 = false;

    /* JADX INFO: renamed from: Ј, reason: contains not printable characters */
    private boolean f89 = false;

    /* JADX INFO: renamed from: с, reason: contains not printable characters */
    private boolean f91 = false;

    /* JADX INFO: renamed from: ӏ, reason: contains not printable characters */
    static /* synthetic */ ScheduledExecutorService m98(AppsFlyerLibCore appsFlyerLibCore) {
        appsFlyerLibCore.f69 = null;
        return null;
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(f58);
        sb.append("/androidevent?buildnumber=5.4.1&app_id=");
        f59 = sb.toString();
        StringBuilder sb2 = new StringBuilder("https://%sregister.%s/api/v");
        sb2.append(f59);
        REGISTER_URL = sb2.toString();
        StringBuilder sb3 = new StringBuilder("https://%sadrevenue.%s/api/v");
        sb3.append(f58);
        sb3.append("/android?buildnumber=5.4.1&app_id=");
        f65 = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        sb4.append(f58);
        sb4.append("/androidevent?app_id=");
        f66 = sb4.toString();
        StringBuilder sb5 = new StringBuilder("https://%sconversions.%s/api/v");
        sb5.append(f66);
        FIRST_LAUNCHES_URL = sb5.toString();
        StringBuilder sb6 = new StringBuilder("https://%slaunches.%s/api/v");
        sb6.append(f66);
        f63 = sb6.toString();
        StringBuilder sb7 = new StringBuilder("https://%sinapps.%s/api/v");
        sb7.append(f66);
        f64 = sb7.toString();
        StringBuilder sb8 = new StringBuilder("https://%sattr.%s/api/v");
        sb8.append(f66);
        REFERRER_TRACKING_URL = sb8.toString();
        f67 = Arrays.asList("is_cache");
        f60 = null;
        f62 = null;
        instance = new AppsFlyerLibCore();
    }

    public AppsFlyerLibCore() {
        AFVersionDeclaration.init();
    }

    public static AppsFlyerLibCore getInstance() {
        return instance;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void performOnAppAttribution(Context context, URI uri) {
        if (uri == null || uri.toString().isEmpty()) {
            AppsFlyerConversionListener appsFlyerConversionListener = f62;
            if (appsFlyerConversionListener != null) {
                StringBuilder sb = new StringBuilder("Link is \"");
                sb.append(uri);
                sb.append("\"");
                appsFlyerConversionListener.onAttributionFailure(sb.toString());
                return;
            }
            return;
        }
        if (context == null) {
            AppsFlyerConversionListener appsFlyerConversionListener2 = f62;
            if (appsFlyerConversionListener2 != null) {
                StringBuilder sb2 = new StringBuilder("Context is \"");
                sb2.append(context);
                sb2.append("\"");
                appsFlyerConversionListener2.onAttributionFailure(sb2.toString());
                return;
            }
            return;
        }
        AFDeepLinkManager.getInstance();
        AFDeepLinkManager.m2(context, new HashMap(), Uri.parse(uri.toString()));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilter(String... strArr) {
        if (strArr == null || Arrays.equals(this.f94, new String[]{"all"})) {
            return;
        }
        Pattern patternCompile = Pattern.compile("[\\d\\w_]{1,45}");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str == null || !patternCompile.matcher(str).matches()) {
                AFLogger.afWarnLog("Invalid partner name :".concat(String.valueOf(str)));
            } else {
                arrayList.add(str);
            }
        }
        if (arrayList.isEmpty()) {
            this.f94 = null;
        } else {
            this.f94 = (String[]) arrayList.toArray(new String[0]);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setSharingFilterForAllPartners() {
        this.f94 = new String[]{"all"};
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    final void m100(Context context, Intent intent) {
        if (intent.getStringExtra("appsflyer_preinstall") != null) {
            getInstance();
            String stringExtra = intent.getStringExtra("appsflyer_preinstall");
            try {
                if (!new JSONObject(stringExtra).has(Constants.URL_MEDIA_SOURCE)) {
                    AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
                } else {
                    AppsFlyerProperties.getInstance().set("preInstallName", stringExtra);
                }
            } catch (JSONException e2) {
                AFLogger.afErrorLog("Error parsing JSON for preinstall", e2);
            }
        }
        AFLogger.afInfoLog("****** onReceive called *******");
        AppsFlyerProperties.getInstance().setOnReceiveCalled();
        String stringExtra2 = intent.getStringExtra(Payload.RFR);
        AFLogger.afInfoLog("Play store referrer: ".concat(String.valueOf(stringExtra2)));
        if (stringExtra2 != null) {
            SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
            editorEdit.putString(Payload.RFR, stringExtra2);
            editorEdit.apply();
            AppsFlyerProperties.getInstance().setReferrer(stringExtra2);
            if (AppsFlyerProperties.getInstance().isFirstLaunchCalled()) {
                AFLogger.afInfoLog("onReceive: isLaunchCalled");
                AFEvent aFEventWeakContext = new BackgroundReferrerLaunch().context(context).m3().weakContext();
                aFEventWeakContext.f8 = stringExtra2;
                aFEventWeakContext.f9 = intent;
                if (stringExtra2 == null || stringExtra2.length() <= 5 || !m79(aFEventWeakContext, getSharedPreferences(context))) {
                    return;
                }
                m60(AFExecutor.getInstance().m7(), new e(this, aFEventWeakContext, (byte) 0), 5L, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static void m43(JSONObject jSONObject) {
        String str;
        ArrayList arrayList = new ArrayList();
        Iterator<String> itKeys = jSONObject.keys();
        while (true) {
            if (!itKeys.hasNext()) {
                break;
            }
            try {
                JSONArray jSONArray = new JSONArray((String) jSONObject.get(itKeys.next()));
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(Long.valueOf(jSONArray.getLong(i)));
                }
            } catch (JSONException unused) {
            }
        }
        Collections.sort(arrayList);
        Iterator<String> itKeys2 = jSONObject.keys();
        loop2: while (true) {
            str = null;
            while (itKeys2.hasNext() && str == null) {
                String next = itKeys2.next();
                try {
                    JSONArray jSONArray2 = new JSONArray((String) jSONObject.get(next));
                    int i2 = 0;
                    while (i2 < jSONArray2.length()) {
                        if (jSONArray2.getLong(i2) == ((Long) arrayList.get(0)).longValue() || jSONArray2.getLong(i2) == ((Long) arrayList.get(1)).longValue() || jSONArray2.getLong(i2) == ((Long) arrayList.get(arrayList.size() - 1)).longValue()) {
                            break;
                        }
                        i2++;
                        str = next;
                    }
                } catch (JSONException unused2) {
                }
            }
        }
        if (str != null) {
            jSONObject.remove(str);
        }
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    static void m39(Context context, String str) {
        JSONArray jSONArray;
        JSONArray jSONArray2;
        JSONObject jSONObject;
        AFLogger.afDebugLog("received a new (extra) referrer: ".concat(String.valueOf(str)));
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = getSharedPreferences(context).getString("extraReferrers", null);
            if (string == null) {
                jSONObject = new JSONObject();
                jSONArray2 = new JSONArray();
            } else {
                JSONObject jSONObject2 = new JSONObject(string);
                if (jSONObject2.has(str)) {
                    jSONArray = new JSONArray((String) jSONObject2.get(str));
                } else {
                    jSONArray = new JSONArray();
                }
                jSONArray2 = jSONArray;
                jSONObject = jSONObject2;
            }
            if (jSONArray2.length() < 5) {
                jSONArray2.put(jCurrentTimeMillis);
            }
            if (jSONObject.length() >= 4) {
                m43(jSONObject);
            }
            jSONObject.put(str, jSONArray2.toString());
            String string2 = jSONObject.toString();
            SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
            editorEdit.putString("extraReferrers", string2);
            editorEdit.apply();
        } catch (JSONException unused) {
        } catch (Throwable th) {
            StringBuilder sb = new StringBuilder("Couldn't save referrer - ");
            sb.append(str);
            sb.append(": ");
            AFLogger.afErrorLog(sb.toString(), th);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void stopTracking(boolean z, Context context) {
        this.f80 = z;
        aa.m116();
        try {
            File fileM119 = aa.m119(context);
            if (!fileM119.exists()) {
                fileM119.mkdir();
            } else {
                for (File file : fileM119.listFiles()) {
                    StringBuilder sb = new StringBuilder("Found cached request");
                    sb.append(file.getName());
                    Log.i(LOG_TAG, sb.toString());
                    aa.m118(aa.m115(file).f266, context);
                }
            }
        } catch (Exception unused) {
            Log.i(LOG_TAG, "Could not cache request");
        }
        if (this.f80) {
            SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
            editorEdit.putBoolean(IS_STOP_TRACKING_USED, true);
            editorEdit.apply();
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void onPause(Context context) {
        if (Foreground.listener != null) {
            Foreground.listener.onBecameBackground(context);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void updateServerUninstallToken(Context context, String str) {
        af.m126(context, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDebugLog(boolean z) {
        setLogLevel(z ? AFLogger.LogLevel.DEBUG : AFLogger.LogLevel.NONE);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib enableLocationCollection(boolean z) {
        this.f75 = z;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public static void m65(Context context, String str, long j) {
        SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
        editorEdit.putLong(str, j);
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static boolean m69(String str) {
        return AppsFlyerProperties.getInstance().getBoolean(str, false);
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private static boolean m44() {
        return m69(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID) && AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID) == null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void waitForCustomerUserId(boolean z) {
        AFLogger.afInfoLog("initAfterCustomerUserID: ".concat(String.valueOf(z)), true);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerIdAndTrack(String str, Context context) {
        if (context != null) {
            if (m44()) {
                setCustomerUserId(str);
                AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_WAITFOR_CUSTOMERID, false);
                StringBuilder sb = new StringBuilder("CustomerUserId set: ");
                sb.append(str);
                sb.append(" - Initializing AppsFlyer Tacking");
                AFLogger.afInfoLog(sb.toString(), true);
                String referrer = AppsFlyerProperties.getInstance().getReferrer(context);
                String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
                if (referrer == null) {
                    referrer = "";
                }
                m57(context, string, referrer, context instanceof Activity ? ((Activity) context).getIntent() : null);
                if (AppsFlyerProperties.getInstance().getString("afUninstallToken") != null) {
                    m103(context, AppsFlyerProperties.getInstance().getString("afUninstallToken"));
                    return;
                }
                return;
            }
            setCustomerUserId(str);
            AFLogger.afInfoLog("waitForCustomerUserId is false; setting CustomerUserID: ".concat(String.valueOf(str)), true);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getOutOfStore(Context context) {
        String string = AppsFlyerProperties.getInstance().getString("api_store_value");
        if (string != null) {
            return string;
        }
        String strM63 = context == null ? null : m63("AF_STORE", context.getPackageManager(), context.getPackageName());
        if (strM63 != null) {
            return strM63;
        }
        AFLogger.afInfoLog("No out-of-store value set");
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOutOfStore(String str) {
        if (str != null) {
            String lowerCase = str.toLowerCase();
            AppsFlyerProperties.getInstance().set("api_store_value", lowerCase);
            AFLogger.afInfoLog("Store API set with value: ".concat(String.valueOf(lowerCase)), true);
            return;
        }
        AFLogger.m21("Cannot set setOutOfStore with null");
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void sendDeepLinkData(Activity activity) {
        if (activity != null && activity.getIntent() != null) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai aiVar = ai.f184;
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            aiVar.m141("public_api_call", "sendDeepLinkData", activity.getLocalClassName(), sb.toString());
        } else if (activity != null) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("public_api_call", "sendDeepLinkData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("public_api_call", "sendDeepLinkData", "activity_null");
        }
        try {
            startTracking(activity);
            StringBuilder sb2 = new StringBuilder("getDeepLinkData with activity ");
            sb2.append(activity.getIntent().getDataString());
            AFLogger.afInfoLog(sb2.toString());
        } catch (Exception e2) {
            AFLogger.afInfoLog("getDeepLinkData Exception: ".concat(String.valueOf(e2)));
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void sendPushNotificationData(Activity activity) {
        long jLongValue;
        if (activity != null && activity.getIntent() != null) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai aiVar = ai.f184;
            StringBuilder sb = new StringBuilder("activity_intent_");
            sb.append(activity.getIntent().toString());
            aiVar.m141("public_api_call", "sendPushNotificationData", activity.getLocalClassName(), sb.toString());
        } else if (activity != null) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("public_api_call", "sendPushNotificationData", activity.getLocalClassName(), "activity_intent_null");
        } else {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("public_api_call", "sendPushNotificationData", "activity_null");
        }
        String strM62 = m62(activity);
        this.f71 = strM62;
        if (strM62 != null) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f72 == null) {
                AFLogger.afInfoLog("pushes: initializing pushes history..");
                this.f72 = new ConcurrentHashMap();
                jLongValue = jCurrentTimeMillis;
            } else {
                try {
                    long j = AppsFlyerProperties.getInstance().getLong("pushPayloadMaxAging", 1800000L);
                    jLongValue = jCurrentTimeMillis;
                    for (Long l : this.f72.keySet()) {
                        try {
                            JSONObject jSONObject = new JSONObject(this.f71);
                            JSONObject jSONObject2 = new JSONObject(this.f72.get(l));
                            if (jSONObject.get(Constants.URL_MEDIA_SOURCE).equals(jSONObject2.get(Constants.URL_MEDIA_SOURCE)) && jSONObject.get(Constants.URL_CAMPAIGN).equals(jSONObject2.get(Constants.URL_CAMPAIGN))) {
                                StringBuilder sb2 = new StringBuilder("PushNotificationMeasurement: A previous payload with same PID and campaign was already acknowledged! (old: ");
                                sb2.append(jSONObject2);
                                sb2.append(", new: ");
                                sb2.append(jSONObject);
                                sb2.append(")");
                                AFLogger.afInfoLog(sb2.toString());
                                this.f71 = null;
                                return;
                            }
                            if (jCurrentTimeMillis - l.longValue() > j) {
                                this.f72.remove(l);
                            }
                            if (l.longValue() <= jLongValue) {
                                jLongValue = l.longValue();
                            }
                        } catch (Throwable th) {
                            th = th;
                            StringBuilder sb3 = new StringBuilder("Error while handling push notification measurement: ");
                            sb3.append(th.getClass().getSimpleName());
                            AFLogger.afErrorLog(sb3.toString(), th);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    jLongValue = jCurrentTimeMillis;
                }
            }
            if (this.f72.size() == AppsFlyerProperties.getInstance().getInt("pushPayloadHistorySize", 2)) {
                StringBuilder sb4 = new StringBuilder("pushes: removing oldest overflowing push (oldest push:");
                sb4.append(jLongValue);
                sb4.append(")");
                AFLogger.afInfoLog(sb4.toString());
                this.f72.remove(Long.valueOf(jLongValue));
            }
            this.f72.put(Long.valueOf(jCurrentTimeMillis), this.f71);
            startTracking(activity);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(AppsFlyerProperties.EmailsCryptType emailsCryptType, String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length + 1);
        arrayList.add(emailsCryptType.toString());
        arrayList.addAll(Arrays.asList(strArr));
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setUserEmails", (String[]) arrayList.toArray(new String[strArr.length + 1]));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EMAIL_CRYPT_TYPE, emailsCryptType.getValue());
        HashMap map = new HashMap();
        String str = null;
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArr) {
            if (AnonymousClass10.f98[emailsCryptType.ordinal()] != 2) {
                arrayList2.add(z.m208(str2));
                str = "sha256_el_arr";
            } else {
                arrayList2.add(str2);
                str = "plain_el_arr";
            }
        }
        map.put(str, arrayList2);
        AppsFlyerProperties.getInstance().setUserEmails(new JSONObject(map).toString());
    }

    /* JADX INFO: renamed from: com.appsflyer.AppsFlyerLibCore$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        static final /* synthetic */ int[] f98;

        static {
            int[] iArr = new int[AppsFlyerProperties.EmailsCryptType.values().length];
            f98 = iArr;
            try {
                iArr[AppsFlyerProperties.EmailsCryptType.SHA256.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f98[AppsFlyerProperties.EmailsCryptType.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setResolveDeepLinkURLs(String... strArr) {
        AFLogger.afDebugLog(String.format("setResolveDeepLinkURLs %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f1 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOneLinkCustomDomain(String... strArr) {
        AFLogger.afDebugLog(String.format("setOneLinkCustomDomain %s", Arrays.toString(strArr)));
        AFDeepLinkManager.f0 = strArr;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener, final Context context) {
        if (context != null) {
            this.f88 = (Application) context.getApplicationContext();
            if (GoogleReferrer.allow(this, context)) {
                if (this.f83 == null) {
                    this.f83 = new GoogleReferrer();
                    AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                    this.f83.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.3
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                AFLogger.afDebugLog("Install Referrer collected locally");
                                AppsFlyerLibCore.m77(AppsFlyerLibCore.this);
                            } catch (Throwable th) {
                                AFLogger.afErrorLog(th.getMessage(), th);
                            }
                        }
                    });
                } else {
                    AFLogger.afWarnLog("GoogleReferrer instance already created");
                }
            }
            final SharedPreferences sharedPreferences = getSharedPreferences(context);
            if (getLaunchCounter(sharedPreferences, false) < 2) {
                HuaweiReferrer huaweiReferrer = new HuaweiReferrer(new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (AppsFlyerLibCore.this.getLaunchCounter(sharedPreferences, false) == 1) {
                            if (!GoogleReferrer.allow(AppsFlyerLibCore.this, context) || sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false)) {
                                AppsFlyerLibCore.this.m76(new Attr().context(context));
                            }
                        }
                    }
                }, context);
                this.f92 = huaweiReferrer;
                huaweiReferrer.start();
            }
            this.f91 = m45(context);
        } else {
            AFLogger.afWarnLog("init :: context is null, Google Install Referrer will be not initialized!");
        }
        return init(str, appsFlyerConversionListener);
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private boolean m45(Context context) {
        try {
            Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
            final long jCurrentTimeMillis = System.currentTimeMillis();
            this.f87 = new ConcurrentHashMap();
            t.d dVar = new t.d() { // from class: com.appsflyer.AppsFlyerLibCore.4
                @Override // com.appsflyer.internal.t.d
                /* JADX INFO: renamed from: ı, reason: contains not printable characters */
                public final void mo105(String str, String str2) {
                    AppsFlyerLibCore.this.f87.put("signedData", str);
                    AppsFlyerLibCore.this.f87.put("signature", str2);
                    AppsFlyerLibCore.this.f87.put("ttr", Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                    AFLogger.afInfoLog("Successfully retrieved Google LVL data.");
                }

                @Override // com.appsflyer.internal.t.d
                /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
                public final void mo106(String str, Exception exc) {
                    String message = exc.getMessage();
                    if (message == null) {
                        message = "unknown";
                    }
                    AppsFlyerLibCore.this.f87.put("error", message);
                    AFLogger.afErrorLog(str, exc, true);
                }
            };
            try {
                try {
                    try {
                        Class<?> cls = Class.forName("com.appsflyer.lvl.AppsFlyerLVL");
                        Class<?> cls2 = Class.forName("com.appsflyer.lvl.AppsFlyerLVL$resultListener");
                        cls.getMethod("checkLicense", Long.TYPE, Context.class, cls2).invoke(null, Long.valueOf(jCurrentTimeMillis), context, Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.internal.t.3
                            public AnonymousClass3() {
                            }

                            @Override // java.lang.reflect.InvocationHandler
                            public final Object invoke(Object obj, Method method, Object[] objArr) {
                                if (method.getName().equals("onLvlResult")) {
                                    String str = objArr[0] != null ? (String) objArr[0] : null;
                                    String str2 = objArr[1] != null ? (String) objArr[1] : null;
                                    d dVar2 = dVar;
                                    if (dVar2 == null) {
                                        AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                                    } else if (str != null && str2 != null) {
                                        dVar2.mo105(str, str2);
                                    } else if (str2 == null) {
                                        dVar.mo106("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                                    } else {
                                        dVar.mo106("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                                    }
                                } else if (method.getName().equals("onLvlFailure")) {
                                    d dVar3 = dVar;
                                    if (dVar3 != null) {
                                        if (objArr[0] != null) {
                                            dVar3.mo106("onLvlFailure with exception", (Exception) objArr[0]);
                                        } else {
                                            dVar3.mo106("onLvlFailure", new Exception("unknown"));
                                        }
                                    } else {
                                        AFLogger.afDebugLog("onLvlFailure: listener is null");
                                    }
                                } else {
                                    d dVar4 = dVar;
                                    if (dVar4 != null) {
                                        dVar4.mo106("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                                    }
                                }
                                return null;
                            }
                        }));
                    } catch (ClassNotFoundException e2) {
                        dVar.mo106(e2.getClass().getSimpleName(), e2);
                    }
                } catch (IllegalAccessException e3) {
                    dVar.mo106(e3.getClass().getSimpleName(), e3);
                }
            } catch (NoSuchMethodException e4) {
                dVar.mo106(e4.getClass().getSimpleName(), e4);
            } catch (InvocationTargetException e5) {
                dVar.mo106(e5.getClass().getSimpleName(), e5);
            }
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void enableFacebookDeferredApplinks(boolean z) {
        this.f89 = z;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context) {
        startTracking(context, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, String str) {
        startTracking(context, str, null);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void startTracking(Context context, final String str, final AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        if (!this.f79) {
            AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! The API call 'startTracking()' must be called after the 'init(String, AppsFlyerConversionListener)' API method, which should be called on the Application's onCreate.");
            if (str == null) {
                return;
            }
        }
        if (Foreground.listener != null) {
            return;
        }
        this.f88 = (Application) context.getApplicationContext();
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "startTracking", str);
        AFLogger.afInfoLog(String.format("Starting AppsFlyer Tracking: (v%s.%s)", BuildConfig.VERSION_NAME, f61));
        StringBuilder sb = new StringBuilder("Build Number: ");
        sb.append(f61);
        AFLogger.afInfoLog(sb.toString());
        AppsFlyerProperties.getInstance().loadProperties(this.f88.getApplicationContext());
        if (TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY))) {
                AFLogger.afWarnLog("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the startTracking API method (should be called on Activity's onCreate).");
                return;
            }
        } else {
            AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
            ah.m133(str);
        }
        Context baseContext = this.f88.getBaseContext();
        try {
            if ((baseContext.getPackageManager().getPackageInfo(baseContext.getPackageName(), 0).applicationInfo.flags & 32768) != 0) {
                if (baseContext.getResources().getIdentifier("appsflyer_backup_rules", "xml", baseContext.getPackageName()) != 0) {
                    AFLogger.afInfoLog("appsflyer_backup_rules.xml detected, using AppsFlyer defined backup rules for AppsFlyer SDK data", true);
                } else {
                    AFLogger.m21("'allowBackup' is set to true; appsflyer_backup_rules.xml not detected.\nAppsFlyer shared preferences should be excluded from auto backup by adding: <exclude domain=\"sharedpref\" path=\"appsflyer-data\"/> to the Application's <full-backup-content> rules");
                }
            }
        } catch (Exception e2) {
            StringBuilder sb2 = new StringBuilder("checkBackupRules Exception: ");
            sb2.append(e2.toString());
            AFLogger.afRDLog(sb2.toString());
        }
        if (this.f89) {
            Context applicationContext = this.f88.getApplicationContext();
            this.f84 = new HashMap();
            final long jCurrentTimeMillis = System.currentTimeMillis();
            AFFacebookDeferredDeeplink.AppLinkFetchEvents appLinkFetchEvents = new AFFacebookDeferredDeeplink.AppLinkFetchEvents() { // from class: com.appsflyer.AppsFlyerLibCore.1
                @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
                public final void onAppLinkFetchFinished(String str2, String str3, String str4) {
                    if (str2 == null) {
                        AppsFlyerLibCore.this.f84.put("link", "");
                    } else {
                        AFLogger.afInfoLog("Facebook Deferred AppLink data received: ".concat(String.valueOf(str2)));
                        AppsFlyerLibCore.this.f84.put("link", str2);
                        if (str3 != null) {
                            AppsFlyerLibCore.this.f84.put("target_url", str3);
                        }
                        if (str4 != null) {
                            HashMap map = new HashMap();
                            HashMap map2 = new HashMap();
                            map2.put("promo_code", str4);
                            map.put("deeplink_context", map2);
                            AppsFlyerLibCore.this.f84.put("extras", map);
                        }
                    }
                    AppsFlyerLibCore.this.f84.put("ttr", String.valueOf(System.currentTimeMillis() - jCurrentTimeMillis));
                }

                @Override // com.appsflyer.AFFacebookDeferredDeeplink.AppLinkFetchEvents
                public final void onAppLinkFetchFailed(String str2) {
                    AppsFlyerLibCore.this.f84.put("error", str2);
                }
            };
            try {
                Class.forName("com.facebook.FacebookSdk").getMethod("sdkInitialize", Context.class).invoke(null, applicationContext);
                Class<?> cls = Class.forName("com.facebook.applinks.AppLinkData");
                Class<?> cls2 = Class.forName("com.facebook.applinks.AppLinkData$CompletionHandler");
                Method method = cls.getMethod("fetchDeferredAppLinkData", Context.class, String.class, cls2);
                Object objNewProxyInstance = Proxy.newProxyInstance(cls2.getClassLoader(), new Class[]{cls2}, new InvocationHandler() { // from class: com.appsflyer.AFFacebookDeferredDeeplink.5

                    /* JADX INFO: renamed from: ı */
                    private /* synthetic */ Class f29;

                    /* JADX INFO: renamed from: ɩ */
                    private /* synthetic */ AppLinkFetchEvents f30;

                    AnonymousClass5(Class cls3, AppLinkFetchEvents appLinkFetchEvents2) {
                        cls = cls3;
                        appLinkFetchEvents = appLinkFetchEvents2;
                    }

                    @Override // java.lang.reflect.InvocationHandler
                    public final Object invoke(Object obj, Method method2, Object[] objArr) throws Throwable {
                        String string;
                        String string2;
                        String string3;
                        Bundle bundle;
                        if (method2.getName().equals("onDeferredAppLinkDataFetched")) {
                            if (objArr[0] != null) {
                                Bundle bundle2 = (Bundle) Bundle.class.cast(cls.getMethod("getArgumentBundle", new Class[0]).invoke(cls.cast(objArr[0]), new Object[0]));
                                if (bundle2 != null) {
                                    string2 = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                                    string3 = bundle2.getString("target_url");
                                    Bundle bundle3 = bundle2.getBundle("extras");
                                    string = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                                } else {
                                    string = null;
                                    string2 = null;
                                    string3 = null;
                                }
                                AppLinkFetchEvents appLinkFetchEvents2 = appLinkFetchEvents;
                                if (appLinkFetchEvents2 != null) {
                                    appLinkFetchEvents2.onAppLinkFetchFinished(string2, string3, string);
                                }
                            } else {
                                AppLinkFetchEvents appLinkFetchEvents3 = appLinkFetchEvents;
                                if (appLinkFetchEvents3 != null) {
                                    appLinkFetchEvents3.onAppLinkFetchFinished(null, null, null);
                                }
                            }
                            return null;
                        }
                        AppLinkFetchEvents appLinkFetchEvents4 = appLinkFetchEvents;
                        if (appLinkFetchEvents4 != null) {
                            appLinkFetchEvents4.onAppLinkFetchFailed("onDeferredAppLinkDataFetched invocation failed");
                        }
                        return null;
                    }
                });
                String string = applicationContext.getString(applicationContext.getResources().getIdentifier("facebook_app_id", "string", applicationContext.getPackageName()));
                if (TextUtils.isEmpty(string)) {
                    appLinkFetchEvents2.onAppLinkFetchFailed("Facebook app id not defined in resources");
                } else {
                    method.invoke(null, applicationContext, string, objNewProxyInstance);
                }
            } catch (ClassNotFoundException e3) {
                appLinkFetchEvents2.onAppLinkFetchFailed(e3.toString());
            } catch (IllegalAccessException e4) {
                appLinkFetchEvents2.onAppLinkFetchFailed(e4.toString());
            } catch (NoSuchMethodException e5) {
                appLinkFetchEvents2.onAppLinkFetchFailed(e5.toString());
            } catch (InvocationTargetException e6) {
                appLinkFetchEvents2.onAppLinkFetchFailed(e6.toString());
            }
        }
        Foreground.m112(context, new Foreground.Listener() { // from class: com.appsflyer.AppsFlyerLibCore.2
            @Override // com.appsflyer.Foreground.Listener
            public final void onBecameForeground(Activity activity) {
                if (AppsFlyerLibCore.this.getLaunchCounter(AppsFlyerLibCore.getSharedPreferences(activity), false) < 2) {
                    AFSensorManager aFSensorManagerM26 = AFSensorManager.m26(activity);
                    aFSensorManagerM26.f41.post(aFSensorManagerM26.f50);
                    aFSensorManagerM26.f41.post(aFSensorManagerM26.f46);
                }
                AFLogger.afInfoLog("onBecameForeground");
                AppsFlyerLibCore.this.f82 = System.currentTimeMillis();
                AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                AFEvent aFEventKey = new Launch().context(activity).key(str);
                aFEventKey.f12 = appsFlyerTrackingRequestListener;
                appsFlyerLibCore.m101(aFEventKey);
                AFLogger.resetDeltaTime();
            }

            @Override // com.appsflyer.Foreground.Listener
            public final void onBecameBackground(Context context2) {
                AFLogger.afInfoLog("onBecameBackground");
                AppsFlyerLibCore.this.f70 = System.currentTimeMillis();
                AFLogger.afInfoLog("callStatsBackground background call");
                AppsFlyerLibCore.this.m104(new WeakReference<>(context2));
                if (ai.f184 == null) {
                    ai.f184 = new ai();
                }
                ai aiVar = ai.f184;
                if (aiVar.m148()) {
                    aiVar.m147();
                    if (context2 != null) {
                        String packageName = context2.getPackageName();
                        PackageManager packageManager = context2.getPackageManager();
                        try {
                            if (ai.f184 == null) {
                                ai.f184 = new ai();
                            }
                            ai.f184.m146(packageName, packageManager);
                            if (ai.f184 == null) {
                                ai.f184 = new ai();
                            }
                            BackgroundEvent backgroundEventTrackingStopped = new ProxyEvent().body(ai.f184.m145()).trackingStopped(AppsFlyerLib.getInstance().isTrackingStopped());
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(ServerConfigHandler.getUrl("https://%smonitorsdk.%s/remote-debug?app_id="));
                            sb3.append(packageName);
                            new Thread(new ad((BackgroundEvent) backgroundEventTrackingStopped.urlString(sb3.toString()))).start();
                        } catch (Throwable unused) {
                        }
                    }
                    aiVar.m143();
                } else {
                    AFLogger.afDebugLog("RD status is OFF");
                }
                AFExecutor aFExecutor = AFExecutor.getInstance();
                try {
                    AFExecutor.m6(aFExecutor.f26);
                    if (aFExecutor.f27 instanceof ThreadPoolExecutor) {
                        AFExecutor.m6((ThreadPoolExecutor) aFExecutor.f27);
                    }
                } catch (Throwable th) {
                    AFLogger.afErrorLog("failed to stop Executors", th);
                }
                AFSensorManager aFSensorManagerM26 = AFSensorManager.m26(context2);
                aFSensorManagerM26.f41.post(aFSensorManagerM26.f50);
            }
        });
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static void m75(Context context) {
        int i;
        if (AndroidUtils.m32()) {
            i = 23;
            AFLogger.afRDLog("OPPO device found");
        } else {
            i = 18;
        }
        if (Build.VERSION.SDK_INT >= i && !m69(AppsFlyerProperties.DISABLE_KEYSTORE)) {
            StringBuilder sb = new StringBuilder("OS SDK is=");
            sb.append(Build.VERSION.SDK_INT);
            sb.append("; use KeyStore");
            AFLogger.afRDLog(sb.toString());
            AFKeystoreWrapper aFKeystoreWrapper = new AFKeystoreWrapper(context);
            if (!aFKeystoreWrapper.m12()) {
                aFKeystoreWrapper.f35 = ae.m125((WeakReference<Context>) new WeakReference(context));
                aFKeystoreWrapper.f33 = 0;
                aFKeystoreWrapper.m14(aFKeystoreWrapper.m13());
            } else {
                String strM13 = aFKeystoreWrapper.m13();
                synchronized (aFKeystoreWrapper.f31) {
                    aFKeystoreWrapper.f33++;
                    AFLogger.afInfoLog("Deleting key with alias: ".concat(String.valueOf(strM13)));
                    try {
                        synchronized (aFKeystoreWrapper.f31) {
                            aFKeystoreWrapper.f34.deleteEntry(strM13);
                        }
                    } catch (KeyStoreException e2) {
                        StringBuilder sb2 = new StringBuilder("Exception ");
                        sb2.append(e2.getMessage());
                        sb2.append(" occurred");
                        AFLogger.afErrorLog(sb2.toString(), e2);
                    }
                }
                aFKeystoreWrapper.m14(aFKeystoreWrapper.m13());
            }
            AppsFlyerProperties.getInstance().set("KSAppsFlyerId", aFKeystoreWrapper.m11());
            AppsFlyerProperties.getInstance().set("KSAppsFlyerRICounter", String.valueOf(aFKeystoreWrapper.m15()));
            return;
        }
        StringBuilder sb3 = new StringBuilder("OS SDK is=");
        sb3.append(Build.VERSION.SDK_INT);
        sb3.append("; no KeyStore usage");
        AFLogger.afRDLog(sb3.toString());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPhoneNumber(String str) {
        this.f93 = z.m208(str);
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    final void m104(WeakReference<Context> weakReference) {
        if (weakReference.get() == null) {
            return;
        }
        AFLogger.afInfoLog("app went to background");
        SharedPreferences sharedPreferences = getSharedPreferences(weakReference.get());
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
        long j = this.f70 - this.f82;
        HashMap map = new HashMap();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (string == null) {
            AFLogger.afWarnLog("[callStats] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        String string2 = AppsFlyerProperties.getInstance().getString("KSAppsFlyerId");
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            map.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        w wVarM198 = v.m198(weakReference.get().getContentResolver());
        if (wVarM198 != null) {
            map.put("amazon_aid", wVarM198.f305);
            map.put("amazon_aid_limit", String.valueOf(wVarM198.m200()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            map.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        map.put("app_id", weakReference.get().getPackageName());
        map.put("devkey", string);
        map.put("uid", ae.m125(weakReference));
        map.put("time_in_app", String.valueOf(j / 1000));
        map.put("statType", "user_closed_app");
        map.put("platform", "Android");
        map.put("launch_counter", Integer.toString(getLaunchCounter(sharedPreferences, false)));
        map.put(AppsFlyerProperties.CHANNEL, getConfiguredChannel(weakReference.get()));
        if (string2 == null) {
            string2 = "";
        }
        map.put("originalAppsflyerId", string2);
        if (this.f76) {
            try {
                AFLogger.afDebugLog("Running callStats task");
                new Thread(new ad((BackgroundEvent) new Stats().trackingStopped(isTrackingStopped()).params(map).urlString(ServerConfigHandler.getUrl("https://%sstats.%s/stats")))).start();
                return;
            } catch (Throwable th) {
                AFLogger.afErrorLog("Could not send callStats request", th);
                return;
            }
        }
        AFLogger.afDebugLog("Stats call is disabled, ignore ...");
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void trackAppLaunch(Context context, String str) {
        if (GoogleReferrer.allow(this, context)) {
            if (this.f83 == null) {
                this.f83 = new GoogleReferrer();
                AFLogger.afDebugLog("Connecting to Install Referrer Library...");
                this.f83.start(context, new Runnable() { // from class: com.appsflyer.AppsFlyerLibCore.9
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            AFLogger.afDebugLog("Install Referrer collected locally");
                            AppsFlyerLibCore.m77(AppsFlyerLibCore.this);
                        } catch (Throwable th) {
                            AFLogger.afErrorLog(th.getMessage(), th);
                        }
                    }
                });
            } else {
                AFLogger.afWarnLog("GoogleReferrer instance already created");
            }
        }
        m57(context, str, "", (Intent) null);
    }

    protected void setDeepLinkData(Intent intent) {
        if (intent != null) {
            try {
                if ("android.intent.action.VIEW".equals(intent.getAction())) {
                    this.latestDeepLink = intent.getData();
                    StringBuilder sb = new StringBuilder("Unity setDeepLinkData = ");
                    sb.append(this.latestDeepLink);
                    AFLogger.afDebugLog(sb.toString());
                }
            } catch (Throwable th) {
                AFLogger.afErrorLog("Exception while setting deeplink data (unity). ", th);
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPluginDeepLinkData(Intent intent) {
        setDeepLinkData(intent);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map, AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener) {
        AFEvent aFEventContext = new InAppEvent().context(context);
        aFEventContext.f21 = str;
        aFEventContext.f17 = map == null ? null : new HashMap(map);
        aFEventContext.f12 = appsFlyerTrackingRequestListener;
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai aiVar = ai.f184;
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = new JSONObject(aFEventContext.f17 == null ? new HashMap() : aFEventContext.f17).toString();
        aiVar.m141("public_api_call", "trackEvent", strArr);
        if (str != null) {
            AFSensorManager aFSensorManagerM26 = AFSensorManager.m26(context);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (aFSensorManagerM26.f47 != 0) {
                aFSensorManagerM26.f42++;
                if (aFSensorManagerM26.f47 - jCurrentTimeMillis < 500) {
                    aFSensorManagerM26.f41.removeCallbacks(aFSensorManagerM26.f51);
                    aFSensorManagerM26.f41.post(aFSensorManagerM26.f46);
                }
            } else {
                aFSensorManagerM26.f41.post(aFSensorManagerM26.f50);
                aFSensorManagerM26.f41.post(aFSensorManagerM26.f46);
            }
            aFSensorManagerM26.f47 = jCurrentTimeMillis;
        }
        m101(aFEventContext);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void sendAdRevenue(Context context, Map<String, Object> map) {
        AFEvent aFEventContext = new AdRevenue().context(context);
        aFEventContext.f17 = map;
        Context context2 = aFEventContext.context();
        String url = ServerConfigHandler.getUrl(f65);
        StringBuilder sb = new StringBuilder();
        sb.append(url);
        sb.append(context2.getPackageName());
        String string = sb.toString();
        SharedPreferences sharedPreferences = getSharedPreferences(context2);
        byte b2 = 0;
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        int iM72 = m72(sharedPreferences, "appsFlyerAdRevenueCount", true);
        HashMap map2 = new HashMap();
        map2.put("ad_network", aFEventContext.f17);
        map2.put("adrevenue_counter", Integer.valueOf(iM72));
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        map2.put("af_key", string2);
        map2.put("launch_counter", Integer.valueOf(launchCounter));
        map2.put("af_timestamp", Long.toString(new Date().getTime()));
        map2.put("uid", ae.m125((WeakReference<Context>) new WeakReference(context2)));
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        map2.put("advertiserIdEnabled", AppsFlyerProperties.getInstance().getString("advertiserIdEnabled"));
        if (string3 != null) {
            map2.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        map2.put("device", Build.DEVICE);
        m58(context2, map2);
        try {
            PackageInfo packageInfo = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0);
            map2.put("app_version_code", Integer.toString(packageInfo.versionCode));
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            long j = packageInfo.firstInstallTime;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map2.put("install_date", simpleDateFormat.format(new Date(j)));
            String string4 = sharedPreferences.getString("appsFlyerFirstInstall", null);
            if (string4 == null) {
                string4 = m52(simpleDateFormat, context2);
            }
            map2.put("first_launch_date", string4);
        } catch (Throwable th) {
            AFLogger.afErrorLog("AdRevenue - Exception while collecting app version data ", th);
        }
        AFEvent aFEventM3 = aFEventContext.urlString(string).params(map2).m3();
        aFEventM3.f11 = launchCounter;
        m60(AFExecutor.getInstance().m7(), new a(this, aFEventM3.key(string2), b2), 1L, TimeUnit.MILLISECONDS);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackEvent(Context context, String str, Map<String, Object> map) {
        trackEvent(context, str, map, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0030  */
    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void m101(com.appsflyer.AFEvent r7) {
        /*
            r6 = this;
            android.content.Context r0 = r7.context()
            boolean r1 = r0 instanceof android.app.Activity
            java.lang.String r2 = ""
            if (r1 == 0) goto L1c
            r1 = r0
            android.app.Activity r1 = (android.app.Activity) r1
            android.content.Intent r3 = r1.getIntent()
            android.net.Uri r1 = com.appsflyer.internal.ActivityCompat.getReferrer(r1)
            if (r1 == 0) goto L1d
            java.lang.String r1 = r1.toString()
            goto L1e
        L1c:
            r3 = 0
        L1d:
            r1 = r2
        L1e:
            com.appsflyer.AppsFlyerProperties r4 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r5 = "AppsFlyerKey"
            java.lang.String r4 = r4.getString(r5)
            if (r4 != 0) goto L30
            java.lang.String r7 = "[TrackEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey."
            com.appsflyer.AFLogger.afWarnLog(r7)
            return
        L30:
            com.appsflyer.AppsFlyerProperties r4 = com.appsflyer.AppsFlyerProperties.getInstance()
            java.lang.String r0 = r4.getReferrer(r0)
            if (r0 != 0) goto L3b
            goto L3c
        L3b:
            r2 = r0
        L3c:
            r7.f8 = r2
            r7.f9 = r3
            r7.f19 = r1
            r6.m40(r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m101(com.appsflyer.AFEvent):void");
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public final void m103(Context context, String str) {
        if (m44()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        HashMap map = new HashMap();
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY);
        if (string == null) {
            AFLogger.afWarnLog("[registerUninstall] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            map.put("app_version_code", Integer.toString(packageInfo.versionCode));
            map.put("app_version_name", packageInfo.versionName);
            map.put("app_name", packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
            long j = packageInfo.firstInstallTime;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd_HHmmssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            map.put("installDate", simpleDateFormat.format(new Date(j)));
        } catch (Throwable th) {
            AFLogger.afErrorLog("Exception while collecting application version info.", th);
        }
        m66(context, map);
        String string2 = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.APP_USER_ID);
        if (string2 != null) {
            map.put("appUserId", string2);
        }
        try {
            map.put("model", Build.MODEL);
            map.put("brand", Build.BRAND);
        } catch (Throwable th2) {
            AFLogger.afErrorLog("Exception while collecting device brand and model.", th2);
        }
        if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, false)) {
            map.put(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, "true");
        }
        w wVarM198 = v.m198(context.getContentResolver());
        if (wVarM198 != null) {
            map.put("amazon_aid", wVarM198.f305);
            map.put("amazon_aid_limit", String.valueOf(wVarM198.m200()));
        }
        String string3 = AppsFlyerProperties.getInstance().getString(ServerParameters.ADVERTISING_ID_PARAM);
        if (string3 != null) {
            map.put(ServerParameters.ADVERTISING_ID_PARAM, string3);
        }
        map.put("devkey", string);
        map.put("uid", ae.m125((WeakReference<Context>) new WeakReference(context)));
        map.put("af_gcm_token", str);
        map.put("launch_counter", Integer.toString(getLaunchCounter(getSharedPreferences(context), false)));
        map.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        String configuredChannel = getConfiguredChannel(context);
        if (configuredChannel != null) {
            map.put(AppsFlyerProperties.CHANNEL, configuredChannel);
        }
        try {
            AFEvent aFEventContext = new UninstallTokenEvent().trackingStopped(isTrackingStopped()).params(map).context(context);
            StringBuilder sb = new StringBuilder();
            sb.append(ServerConfigHandler.getUrl(REGISTER_URL));
            sb.append(packageName);
            new Thread(new ad((BackgroundEvent) aFEventContext.urlString(sb.toString()))).start();
        } catch (Throwable th3) {
            AFLogger.afErrorLog(th3.getMessage(), th3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public static Map<String, Object> m86(Context context) throws y {
        String string = getSharedPreferences(context).getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return m38(string);
        }
        throw new y();
    }

    protected void getConversionData(Context context, final ConversionDataListener conversionDataListener) {
        f62 = new AppsFlyerConversionListener() { // from class: com.appsflyer.AppsFlyerLibCore.6
            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onAppOpenAttribution(Map<String, String> map) {
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onAttributionFailure(String str) {
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onConversionDataSuccess(Map<String, Object> map) {
                StringBuilder sb = new StringBuilder("Calling onConversionDataLoaded with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                conversionDataListener.onConversionDataLoaded(map);
            }

            @Override // com.appsflyer.AppsFlyerConversionListener
            public final void onConversionDataFail(String str) {
                AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                conversionDataListener.onConversionFailure(str);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public static Map<String, Object> m38(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!f67.contains(next)) {
                    map.put(next, jSONObject.isNull(next) ? null : jSONObject.get(next));
                }
            }
            return map;
        } catch (JSONException e2) {
            AFLogger.afErrorLog(e2.getMessage(), e2);
            return null;
        }
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private void m57(Context context, String str, String str2, Intent intent) {
        AFEvent aFEventContext = new Launch().context(context);
        aFEventContext.f21 = null;
        AFEvent aFEventKey = aFEventContext.key(str);
        aFEventKey.f17 = null;
        aFEventKey.f8 = str2;
        aFEventKey.f9 = intent;
        aFEventKey.f19 = null;
        m40(aFEventKey);
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    private void m40(AFEvent aFEvent) {
        aFEvent.m3();
        byte b2 = 0;
        boolean z = aFEvent.f21 == null;
        if (m44()) {
            AFLogger.afInfoLog("CustomerUserId not set, Tracking is disabled", true);
            return;
        }
        if (z) {
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.LAUNCH_PROTECT_ENABLED, true)) {
                if (m89()) {
                    return;
                }
            } else {
                AFLogger.afInfoLog("Allowing multiple launches within a 5 second time window.");
            }
            this.f74 = System.currentTimeMillis();
        }
        m60(AFExecutor.getInstance().m7(), new e(this, aFEvent.weakContext(), b2), 150L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private boolean m89() {
        if (this.f74 > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.f74;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss.SSS Z", Locale.US);
            long j = this.f74;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str = simpleDateFormat.format(new Date(j));
            long j2 = this.f68;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            String str2 = simpleDateFormat.format(new Date(j2));
            if (jCurrentTimeMillis < this.f81 && !isTrackingStopped()) {
                AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", str, str2, Long.valueOf(jCurrentTimeMillis), Long.valueOf(this.f81)));
                return true;
            }
            if (!isTrackingStopped()) {
                AFLogger.afInfoLog(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", str, str2, Long.valueOf(jCurrentTimeMillis)));
            }
        } else if (!isTrackingStopped()) {
            AFLogger.afInfoLog("Sending first launch for this session!");
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public void m76(AFEvent aFEvent) {
        String url;
        ScheduledExecutorService scheduledExecutorServiceM7;
        Context context = aFEvent.context();
        String str = aFEvent.f21;
        if (context == null) {
            AFLogger.afDebugLog("sendTrackingWithEvent - got null context. skipping event/launch.");
            return;
        }
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        AppsFlyerProperties.getInstance().saveProperties(sharedPreferences);
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("sendTrackingWithEvent from activity: ");
            sb.append(context.getClass().getName());
            AFLogger.afInfoLog(sb.toString());
        }
        byte b2 = 1;
        byte b3 = 0;
        boolean z = str == null;
        boolean z2 = aFEvent instanceof BackgroundReferrerLaunch;
        boolean z3 = aFEvent instanceof Attr;
        aFEvent.f10 = z;
        Map<String, ?> mapM102 = m102(aFEvent);
        String str2 = (String) mapM102.get("appsflyerKey");
        if (str2 == null || str2.length() == 0) {
            AFLogger.afDebugLog("Not sending data yet, waiting for dev key");
            return;
        }
        if (!isTrackingStopped()) {
            AFLogger.afInfoLog("AppsFlyerLib.sendTrackingWithEvent");
        }
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        if (z3 || z2) {
            url = ServerConfigHandler.getUrl(REFERRER_TRACKING_URL);
        } else if (!z) {
            url = ServerConfigHandler.getUrl(f64);
        } else if (launchCounter < 2) {
            url = ServerConfigHandler.getUrl(FIRST_LAUNCHES_URL);
        } else {
            url = ServerConfigHandler.getUrl(f63);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(url);
        sb2.append(context.getPackageName());
        String string = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(string);
        sb3.append("&buildnumber=5.4.1");
        String string2 = sb3.toString();
        String configuredChannel = getConfiguredChannel(context);
        if (configuredChannel != null) {
            StringBuilder sb4 = new StringBuilder();
            sb4.append(string2);
            sb4.append("&channel=");
            sb4.append(configuredChannel);
            string2 = sb4.toString();
        }
        if (!(AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) && mapM102.get(ServerParameters.ADVERTISING_ID_PARAM) != null) {
            try {
                if (TextUtils.isEmpty(this.f86) && mapM102.remove("android_id") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: android_id");
                }
                if (TextUtils.isEmpty(this.f85) && mapM102.remove("imei") != null) {
                    AFLogger.afInfoLog("validateGaidAndIMEI :: removing: imei");
                }
            } catch (Exception e2) {
                AFLogger.afErrorLog("failed to remove IMEI or AndroidID key from params; ", e2);
            }
        }
        AFEvent aFEventM3 = aFEvent.urlString(string2).params(mapM102).m3();
        aFEventM3.f11 = launchCounter;
        a aVar = new a(this, aFEventM3, b3);
        if (z) {
            if (GoogleReferrer.allow(this, context) && !m68()) {
                AFLogger.afDebugLog("Failed to get new referrer, wait ...");
                b3 = 1;
            }
            HuaweiReferrer huaweiReferrer = this.f92;
            if (huaweiReferrer != null && huaweiReferrer.valid()) {
                b3 = 1;
            }
            if (this.f89 && !m78()) {
                AFLogger.afDebugLog("fetching Facebook deferred AppLink data, wait ...");
                b3 = 1;
            }
            if (!this.f91 || m96()) {
                b2 = b3;
            }
        } else {
            b2 = 0;
        }
        if (AFDeepLinkManager.f2) {
            AFLogger.afRDLog("ESP deeplink: execute launch on SerialExecutor");
            AFExecutor aFExecutor = AFExecutor.getInstance();
            if (aFExecutor.f25 == null) {
                aFExecutor.f25 = Executors.newSingleThreadScheduledExecutor(aFExecutor.f24);
            }
            scheduledExecutorServiceM7 = aFExecutor.f25;
        } else {
            scheduledExecutorServiceM7 = AFExecutor.getInstance().m7();
        }
        m60(scheduledExecutorServiceM7, aVar, b2 != 0 ? 500L : 0L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private boolean m79(AFEvent aFEvent, SharedPreferences sharedPreferences) {
        int launchCounter = getLaunchCounter(sharedPreferences, false);
        return (!sharedPreferences.getBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, false) && launchCounter == 1) || (launchCounter == 1 && !(aFEvent instanceof Attr));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public boolean m68() {
        GoogleReferrer googleReferrer = this.f83;
        return googleReferrer != null && googleReferrer.oldMap.size() > 0;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private boolean m78() {
        Map<String, Object> map = this.f84;
        return (map == null || map.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    public boolean m96() {
        Map<String, Object> map = this.f87;
        return (map == null || map.isEmpty()) ? false : true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(115:0|2|(1:4)(1:5)|6|(1:8)|511|9|(3:11|(1:13)(1:14)|15)(1:16)|17|487|18|(1:20)|485|23|(1:25)|26|(1:28)|29|(1:31)|36|(19:38|(7:40|(1:42)|43|(1:45)(1:46)|(1:50)|51|(1:53))|54|(1:56)(1:57)|58|(1:60)|(1:62)|63|(1:65)|66|(1:68)|69|70|(1:72)|73|(1:75)|76|(1:80)|81)(11:82|83|505|84|85|(5:522|87|88|524|89)(1:96)|507|97|98|493|99)|110|(1:115)|116|(1:118)|(3:534|119|(1:121))|126|(1:130)|131|(1:137)|138|(1:140)(3:141|(2:149|150)(3:143|(2:146|(1:148)(0))(1:145)|150)|482)|(1:152)|153|(3:155|(1:157)(3:158|(10:160|(1:162)|163|(1:165)|166|(1:168)|169|(1:174)(1:173)|(2:177|(1:179)(1:180))(1:176)|181)|(1:183))|(1:185))|(1:187)|188|(2:191|(1:193)(1:194))(1:190)|(1:196)|197|(2:202|(2:477|478)(1:206))(1:201)|207|(1:209)|210|(1:212)(2:213|(1:215))|(2:217|(1:219))|220|(1:222)|223|(3:225|(1:227)|228)|229|(1:231)|232|233|(3:538|235|(1:243))|244|245|(1:247)(6:248|(3:284|(2:286|287)|288)(3:252|(8:542|254|255|540|256|(2:258|287)(1:(4:260|261|536|262))|(1:280)(1:281)|282)(1:283)|288)|(1:290)(1:291)|292|(7:312|(1:314)(1:315)|(1:317)(1:318)|319|(1:321)(1:322)|(1:324)(2:325|(3:530|327|(4:329|532|330|(1:332))(1:336))(0))|(1:338))(7:296|(4:497|298|(1:(1:302)(1:304))(1:300)|311)(0)|(0)(0)|319|(0)(0)|(0)(0)|(0))|482)|514|339|340|(2:516|342)|489|350|528|355|501|360|365|509|366|518|371|372|512|373|(2:526|375)|379|380|503|381|382|499|383|384|495|385|386|491|387|404|(1:406)|(3:408|(1:410)|411)|412|(4:520|414|(1:416)(1:417)|418)|423|(2:425|(1:427)(1:428))|429|(1:431)|432|(1:434)(1:435)|436|(2:439|(1:441))|442|(1:444)(1:445)|446|(6:448|(4:450|(1:452)|453|(1:455))|456|(1:458)|459|(3:461|(1:463)(2:464|(1:466))|467))|468|(1:470)|471|(1:473)|474|(1:476)|482|(1:(0))) */
    /* JADX WARN: Can't wrap try/catch for region: R(90:0|2|(1:4)(1:5)|6|(1:8)|(26:511|9|(3:11|(1:13)(1:14)|15)(1:16)|17|487|18|(1:20)|485|23|(1:25)|26|(1:28)|29|(1:31)|36|(19:38|(7:40|(1:42)|43|(1:45)(1:46)|(1:50)|51|(1:53))|54|(1:56)(1:57)|58|(1:60)|(1:62)|63|(1:65)|66|(1:68)|69|70|(1:72)|73|(1:75)|76|(1:80)|81)(11:82|83|505|84|85|(5:522|87|88|524|89)(1:96)|507|97|98|493|99)|110|(1:115)|116|(1:118)|(3:534|119|(1:121))|126|(1:130)|131|(1:137)|138)|(1:140)(3:141|(2:149|150)(3:143|(2:146|(1:148)(0))(1:145)|150)|482)|(1:152)|153|(3:155|(1:157)(3:158|(10:160|(1:162)|163|(1:165)|166|(1:168)|169|(1:174)(1:173)|(2:177|(1:179)(1:180))(1:176)|181)|(1:183))|(1:185))|(1:187)|188|(2:191|(1:193)(1:194))(1:190)|(1:196)|197|(2:202|(2:477|478)(1:206))(1:201)|207|(1:209)|210|(1:212)(2:213|(1:215))|(2:217|(1:219))|220|(1:222)|223|(3:225|(1:227)|228)|229|(1:231)|232|233|(3:538|235|(1:243))|244|245|(1:247)(6:248|(3:284|(2:286|287)|288)(3:252|(8:542|254|255|540|256|(2:258|287)(1:(4:260|261|536|262))|(1:280)(1:281)|282)(1:283)|288)|(1:290)(1:291)|292|(7:312|(1:314)(1:315)|(1:317)(1:318)|319|(1:321)(1:322)|(1:324)(2:325|(3:530|327|(4:329|532|330|(1:332))(1:336))(0))|(1:338))(7:296|(4:497|298|(1:(1:302)(1:304))(1:300)|311)(0)|(0)(0)|319|(0)(0)|(0)(0)|(0))|482)|514|339|340|(2:516|342)|489|350|528|355|501|360|365|509|366|518|371|372|512|373|(2:526|375)|379|380|503|381|382|499|383|384|495|385|386|491|387|404|(1:406)|(3:408|(1:410)|411)|412|(4:520|414|(1:416)(1:417)|418)|423|(2:425|(1:427)(1:428))|429|(1:431)|432|(1:434)(1:435)|436|(2:439|(1:441))|442|(1:444)(1:445)|446|(6:448|(4:450|(1:452)|453|(1:455))|456|(1:458)|459|(3:461|(1:463)(2:464|(1:466))|467))|468|(1:470)|471|(1:473)|474|(1:476)|482|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:346:0x070c, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:347:0x070d, code lost:
    
        r6 = "uid";
     */
    /* JADX WARN: Code restructure failed: missing block: B:352:0x0733, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:354:0x0735, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting display language name. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:357:0x0748, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:359:0x074a, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting display language code. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:362:0x075d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:364:0x075f, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting country name. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x07a1, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x07a3, code lost:
    
        com.appsflyer.AFLogger.afErrorLog("Exception while collecting install date. ", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x082f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:391:0x0831, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0833, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:394:0x0834, code lost:
    
        r18 = r13;
        r16 = "appsflyerKey";
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0839, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x083a, code lost:
    
        r16 = "appsflyerKey";
        r29 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x083e, code lost:
    
        r18 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x0841, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x0842, code lost:
    
        r16 = "appsflyerKey";
        r29 = r5;
        r18 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x0849, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x084a, code lost:
    
        r16 = "appsflyerKey";
        r29 = r5;
        r18 = r6;
        r14 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0852, code lost:
    
        r3 = r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02e9 A[Catch: all -> 0x0bbf, TRY_LEAVE, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02fc A[Catch: Exception -> 0x0302, all -> 0x0bbf, TRY_LEAVE, TryCatch #33 {Exception -> 0x0302, blocks: (B:119:0x02ee, B:121:0x02fc), top: B:534:0x02ee, outer: #15 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0343 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0349 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x037e A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0397 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:187:0x0428 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x043d  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0452 A[Catch: all -> 0x0bbf, TRY_LEAVE, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:199:0x045f A[Catch: all -> 0x0bbf, TRY_ENTER, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:202:0x046b A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:274:0x05ca A[Catch: all -> 0x0bbf, TRY_ENTER, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:275:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x05e3 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:281:0x05ef  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x0606 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x061c A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:312:0x067a A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:314:0x067e A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0681  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x0684 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:318:0x069a A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:321:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x06aa  */
    /* JADX WARN: Removed duplicated region for block: B:324:0x06ad A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:325:0x06b1 A[Catch: all -> 0x0bbf, TRY_LEAVE, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:336:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x06e6 A[Catch: all -> 0x0bbf, TRY_LEAVE, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0875 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x087e A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x08f4 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x091a A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x0951  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x0953  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x0964 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0971 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x0982  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0983  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x09be A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0b29 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0b43 A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x0bab A[Catch: all -> 0x0bbf, TryCatch #15 {all -> 0x0bbf, blocks: (B:9:0x007c, B:11:0x0082, B:15:0x008f, B:17:0x009f, B:18:0x00a2, B:20:0x00ac, B:23:0x00bb, B:25:0x00d7, B:26:0x00dc, B:28:0x00e4, B:29:0x00e9, B:31:0x00f1, B:36:0x00fe, B:38:0x013d, B:40:0x0143, B:42:0x0149, B:43:0x0156, B:45:0x015f, B:48:0x0172, B:50:0x0179, B:51:0x0180, B:53:0x0186, B:46:0x0168, B:54:0x018d, B:56:0x01a8, B:58:0x01b1, B:60:0x01ce, B:62:0x01d5, B:63:0x01da, B:65:0x01e2, B:66:0x01f5, B:68:0x01f9, B:69:0x0200, B:72:0x0208, B:73:0x020b, B:75:0x0214, B:76:0x0219, B:78:0x0223, B:80:0x0229, B:110:0x02b1, B:113:0x02c9, B:115:0x02d3, B:116:0x02dd, B:118:0x02e9, B:119:0x02ee, B:121:0x02fc, B:126:0x0309, B:128:0x0313, B:130:0x0319, B:131:0x031e, B:133:0x0328, B:137:0x0332, B:138:0x0337, B:140:0x0343, B:152:0x037e, B:153:0x0387, B:155:0x0397, B:157:0x039d, B:185:0x041f, B:158:0x03a5, B:160:0x03ab, B:162:0x03bb, B:163:0x03cd, B:165:0x03d3, B:166:0x03d9, B:168:0x03df, B:169:0x03e5, B:171:0x03eb, B:180:0x0400, B:183:0x040f, B:187:0x0428, B:188:0x0431, B:196:0x0452, B:199:0x045f, B:201:0x0465, B:207:0x0480, B:209:0x048c, B:210:0x0491, B:212:0x0499, B:217:0x04b6, B:219:0x04bd, B:220:0x04c2, B:222:0x04ce, B:223:0x04d9, B:225:0x04e5, B:227:0x04ec, B:228:0x0502, B:229:0x0507, B:231:0x0513, B:232:0x0518, B:243:0x054e, B:244:0x0553, B:247:0x0561, B:339:0x06f9, B:342:0x0706, B:350:0x0725, B:355:0x073a, B:360:0x074f, B:365:0x0764, B:366:0x077b, B:404:0x0858, B:406:0x0875, B:408:0x087e, B:410:0x088a, B:411:0x089f, B:414:0x08ad, B:416:0x08c0, B:418:0x08cd, B:417:0x08c8, B:423:0x08e8, B:425:0x08f4, B:427:0x0903, B:428:0x0909, B:429:0x0910, B:431:0x091a, B:432:0x092e, B:436:0x0954, B:439:0x0966, B:441:0x0971, B:442:0x097a, B:446:0x0984, B:448:0x09be, B:450:0x09c2, B:452:0x09d0, B:453:0x09f7, B:455:0x09fd, B:456:0x0a02, B:458:0x0a17, B:461:0x0a21, B:463:0x0a34, B:467:0x0a45, B:464:0x0a38, B:466:0x0a42, B:468:0x0a48, B:470:0x0b29, B:471:0x0b39, B:473:0x0b43, B:474:0x0b53, B:476:0x0bab, B:422:0x08d3, B:403:0x0853, B:370:0x07a3, B:364:0x075f, B:359:0x074a, B:354:0x0735, B:349:0x0710, B:248:0x056a, B:250:0x057d, B:252:0x0585, B:254:0x058b, B:256:0x059b, B:290:0x0606, B:292:0x0621, B:294:0x0631, B:296:0x0639, B:298:0x063f, B:317:0x0684, B:319:0x069f, B:324:0x06ad, B:338:0x06e6, B:325:0x06b1, B:335:0x06dd, B:318:0x069a, B:302:0x064e, B:308:0x0662, B:310:0x0671, B:312:0x067a, B:314:0x067e, B:291:0x061c, B:260:0x05ae, B:262:0x05b4, B:274:0x05ca, B:276:0x05d7, B:280:0x05e3, B:282:0x05f0, B:284:0x05f9, B:286:0x05ff, B:239:0x053f, B:241:0x0546, B:213:0x049f, B:215:0x04ab, B:202:0x046b, B:204:0x0477, B:206:0x047d, B:477:0x0bb3, B:194:0x0444, B:141:0x0349, B:143:0x034f, B:150:0x036e, B:148:0x0360, B:125:0x0304, B:82:0x0234, B:84:0x0241, B:87:0x024b, B:89:0x025b, B:97:0x028d, B:99:0x0292, B:109:0x02ac, B:35:0x00f9, B:22:0x00b4, B:16:0x009a, B:235:0x052f), top: B:511:0x007c, inners: #0, #2, #3, #7, #9, #14, #23, #29, #33, #33 }] */
    /* JADX WARN: Removed duplicated region for block: B:516:0x0706 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:520:0x08ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:526:0x07c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.Map<java.lang.String, java.lang.Object> m102(com.appsflyer.AFEvent r31) {
        /*
            Method dump skipped, instruction units count: 3017
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.m102(com.appsflyer.AFEvent):java.util.Map");
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    public static boolean m46(SharedPreferences sharedPreferences) {
        return Boolean.parseBoolean(sharedPreferences.getString("sentSuccessfully", null));
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static void m58(Context context, Map<String, Object> map) {
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null) {
            int rotation = windowManager.getDefaultDisplay().getRotation();
            map.put("sc_o", rotation != 0 ? rotation != 1 ? rotation != 2 ? rotation != 3 ? "" : "lr" : "pr" : "l" : "p");
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setConsumeAFDeepLinks(boolean z) {
        AppsFlyerProperties.getInstance().set("consumeAfDeepLink", z);
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setConsumeAFDeepLinks: ".concat(String.valueOf(z)), new String[0]);
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static String m62(Context context) {
        Intent intent;
        String string = null;
        if ((context instanceof Activity) && (intent = ((Activity) context).getIntent()) != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null && (string = extras.getString("af")) != null) {
                    AFLogger.afInfoLog("Push Notification received af payload = ".concat(String.valueOf(string)));
                    extras.remove("af");
                    ((Activity) context).setIntent(intent.putExtras(extras));
                }
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getMessage(), th);
            }
        }
        return string;
    }

    protected void handleDeepLinkCallback(Context context, Map<String, Object> map, Uri uri) {
        String string = uri.toString();
        if (string == null) {
            string = null;
        } else if (string.matches("fb\\d*?://authorize.*") && string.contains("access_token")) {
            int iIndexOf = string.indexOf(63);
            String strSubstring = iIndexOf == -1 ? "" : string.substring(iIndexOf);
            if (strSubstring.length() != 0) {
                ArrayList arrayList = new ArrayList();
                if (strSubstring.contains("&")) {
                    arrayList = new ArrayList(Arrays.asList(strSubstring.split("&")));
                } else {
                    arrayList.add(strSubstring);
                }
                StringBuilder sb = new StringBuilder();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (str.contains("access_token")) {
                        it.remove();
                    } else {
                        if (sb.length() != 0) {
                            sb.append("&");
                        } else if (!str.startsWith("?")) {
                            sb.append("?");
                        }
                        sb.append(str);
                    }
                }
                string = string.replace(strSubstring, sb.toString());
            }
        }
        if (!map.containsKey("af_deeplink")) {
            map.put("af_deeplink", string);
        }
        final HashMap map2 = new HashMap();
        map2.put("link", uri.toString());
        final WeakReference weakReference = new WeakReference(context);
        ab abVar = new ab(uri, this);
        abVar.setConnProvider(new OneLinkHttpTask.HttpsUrlConnectionProvider());
        if (!abVar.m120()) {
            m67(AndroidUtils.m34(context, map2, uri));
        } else {
            abVar.f167 = new ab.b() { // from class: com.appsflyer.AppsFlyerLibCore.8
                @Override // com.appsflyer.internal.ab.b
                /* JADX INFO: renamed from: ı, reason: contains not printable characters */
                public final void mo108(String str2) {
                    if (AppsFlyerLibCore.f62 != null) {
                        m107(map2);
                        AFLogger.afDebugLog("Calling onAttributionFailure with:\n".concat(String.valueOf(str2)));
                        AppsFlyerLibCore.f62.onAttributionFailure(str2);
                    }
                }

                /* JADX INFO: renamed from: ı, reason: contains not printable characters */
                private void m107(Map<String, String> map3) {
                    if (weakReference.get() != null) {
                        AppsFlyerLibCore.m56((Context) weakReference.get(), "deeplinkAttribution", new JSONObject(map3).toString());
                    }
                }

                @Override // com.appsflyer.internal.ab.b
                /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
                public final void mo109(Map<String, String> map3) {
                    for (String str2 : map3.keySet()) {
                        map2.put(str2, map3.get(str2));
                    }
                    m107(map2);
                    AppsFlyerLibCore.m67((Map<String, String>) map2);
                }
            };
            AFExecutor.getInstance().getThreadPoolExecutor().execute(abVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    public static void m67(Map<String, String> map) {
        if (f62 != null) {
            try {
                StringBuilder sb = new StringBuilder("Calling onAppOpenAttribution with:\n");
                sb.append(map.toString());
                AFLogger.afDebugLog(sb.toString());
                f62.onAppOpenAttribution(map);
            } catch (Throwable th) {
                AFLogger.afErrorLog(th.getLocalizedMessage(), th);
            }
        }
    }

    /* JADX INFO: renamed from: ɹ, reason: contains not printable characters */
    private static boolean m71(Context context) {
        try {
            if (com.google.android.gms.common.e.a().a(context) == 0) {
                return true;
            }
        } catch (Throwable th) {
            AFLogger.afErrorLog("WARNING:  Google play services is unavailable. ", th);
        }
        try {
            context.getPackageManager().getPackageInfo("com.google.android.gms", 0);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog("WARNING:  Google Play Services is unavailable. ", e2);
            return false;
        }
    }

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private static boolean m48(Context context) {
        return (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, false) || AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, false)) || !m71(context);
    }

    /* JADX INFO: renamed from: і, reason: contains not printable characters */
    private static boolean m94(Context context) {
        return !getSharedPreferences(context).contains("appsFlyerCount");
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String m85(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return null;
        }
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static String m63(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = ((PackageItemInfo) packageManager.getApplicationInfo(str2, 128)).metaData;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            String string = obj.toString();
            if (!string.replaceAll("\\p{C}", "").equals(string)) {
                StringBuilder sb = new StringBuilder("Manifest meta-data ");
                sb.append(str);
                sb.append(": ");
                sb.append(string);
                sb.append(" contains non-printing characters");
                AFLogger.afWarnLog(sb.toString());
            }
            return string;
        } catch (Throwable th) {
            StringBuilder sb2 = new StringBuilder("Could not find ");
            sb2.append(str);
            sb2.append(" value in the manifest");
            AFLogger.afErrorLog(sb2.toString(), th);
            return null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setPreinstallAttribution(String str, String str2, String str3) {
        AFLogger.afDebugLog("setPreinstallAttribution API called");
        JSONObject jSONObject = new JSONObject();
        if (str != null) {
            try {
                jSONObject.put(Constants.URL_MEDIA_SOURCE, str);
            } catch (JSONException e2) {
                AFLogger.afErrorLog(e2.getMessage(), e2);
            }
        }
        if (str2 != null) {
            jSONObject.put(Constants.URL_CAMPAIGN, str2);
        }
        if (str3 != null) {
            jSONObject.put(Constants.URL_SITE_ID, str3);
        }
        if (jSONObject.has(Constants.URL_MEDIA_SOURCE)) {
            AppsFlyerProperties.getInstance().set("preInstallName", jSONObject.toString());
        } else {
            AFLogger.afWarnLog("Cannot set preinstall attribution data without a media source");
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static String m84(File file, String str) {
        FileReader fileReader;
        Properties properties;
        try {
            try {
                try {
                    properties = new Properties();
                    fileReader = new FileReader(file);
                } catch (Throwable th) {
                    AFLogger.afErrorLog(th.getMessage(), th);
                    return null;
                }
            } catch (FileNotFoundException unused) {
                fileReader = null;
            } catch (Throwable th2) {
                th = th2;
                fileReader = null;
            }
            try {
                properties.load(fileReader);
                AFLogger.afInfoLog("Found PreInstall property!");
                String property = properties.getProperty(str);
                try {
                    fileReader.close();
                } catch (Throwable th3) {
                    AFLogger.afErrorLog(th3.getMessage(), th3);
                }
                return property;
            } catch (FileNotFoundException unused2) {
                StringBuilder sb = new StringBuilder("PreInstall file wasn't found: ");
                sb.append(file.getAbsolutePath());
                AFLogger.afDebugLog(sb.toString());
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            } catch (Throwable th4) {
                th = th4;
                AFLogger.afErrorLog(th.getMessage(), th);
                if (fileReader != null) {
                    fileReader.close();
                }
                return null;
            }
        } catch (Throwable th5) {
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (Throwable th6) {
                    AFLogger.afErrorLog(th6.getMessage(), th6);
                }
            }
            throw th5;
        }
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private static boolean m90(File file) {
        return file == null || !file.exists();
    }

    /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
    private static File m47(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (str.trim().length() > 0) {
                return new File(str.trim());
            }
            return null;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return null;
        }
    }

    public String getConfiguredChannel(Context context) {
        String string = AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.CHANNEL);
        if (string == null) {
            string = context == null ? null : m63("CHANNEL", context.getPackageManager(), context.getPackageName());
        }
        if (string == null || !string.equals("")) {
            return string;
        }
        return null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isPreInstalledApp(Context context) {
        try {
        } catch (PackageManager.NameNotFoundException e2) {
            AFLogger.afErrorLog("Could not check if app is pre installed", e2);
        }
        return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    public static String m83(Context context, String str) {
        SharedPreferences sharedPreferences = getSharedPreferences(context);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
        editorEdit.putString("CACHED_CHANNEL", str);
        editorEdit.apply();
        return str;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static String m52(SimpleDateFormat simpleDateFormat, Context context) {
        String str;
        String string = getSharedPreferences(context).getString("appsFlyerFirstInstall", null);
        if (string == null) {
            if (m94(context)) {
                AFLogger.afDebugLog("AppsFlyer: first launch detected");
                str = simpleDateFormat.format(new Date());
            } else {
                str = "";
            }
            string = str;
            SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
            editorEdit.putString("appsFlyerFirstInstall", string);
            editorEdit.apply();
        }
        AFLogger.afInfoLog("AppsFlyer: first launch date: ".concat(String.valueOf(string)));
        return string;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAttributionId(Context context) {
        try {
            return new ac(context).m122();
        } catch (Throwable th) {
            AFLogger.afErrorLog("Could not collect facebook attribution id. ", th);
            return null;
        }
    }

    public static SharedPreferences getSharedPreferences(Context context) {
        return context.getApplicationContext().getSharedPreferences("appsflyer-data", 0);
    }

    public final int getLaunchCounter(SharedPreferences sharedPreferences, boolean z) {
        return m72(sharedPreferences, "appsFlyerCount", z);
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static int m72(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        if (z) {
            i++;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt(str, i);
            editorEdit.apply();
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        if (ai.f184.m148()) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m144(String.valueOf(i));
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public static void m60(ScheduledExecutorService scheduledExecutorService, Runnable runnable, long j, TimeUnit timeUnit) {
        if (scheduledExecutorService != null) {
            try {
                if (!scheduledExecutorService.isShutdown() && !scheduledExecutorService.isTerminated()) {
                    scheduledExecutorService.schedule(runnable, j, timeUnit);
                    return;
                }
            } catch (RejectedExecutionException e2) {
                AFLogger.afErrorLog("scheduleJob failed with RejectedExecutionException Exception", e2);
                return;
            } catch (Throwable th) {
                AFLogger.afErrorLog("scheduleJob failed with Exception", th);
                return;
            }
        }
        AFLogger.afWarnLog("scheduler is null, shut downed or terminated");
    }

    @Override // com.appsflyer.AppsFlyerLib
    public boolean isTrackingStopped() {
        return this.f80;
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    public final String m99(HttpURLConnection httpURLConnection) {
        String string;
        InputStreamReader inputStreamReader;
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                InputStream errorStream = httpURLConnection.getErrorStream();
                if (errorStream == null) {
                    errorStream = httpURLConnection.getInputStream();
                }
                inputStreamReader = new InputStreamReader(errorStream);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                            sb.append('\n');
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            try {
                                StringBuilder sb2 = new StringBuilder("Could not read connection response from: ");
                                sb2.append(httpURLConnection.getURL().toString());
                                AFLogger.afErrorLog(sb2.toString(), th);
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                if (inputStreamReader != null) {
                                }
                                string = sb.toString();
                                new JSONObject(string);
                                return string;
                            } catch (Throwable th2) {
                                if (bufferedReader != null) {
                                    try {
                                        bufferedReader.close();
                                    } catch (Throwable unused) {
                                        throw th2;
                                    }
                                }
                                if (inputStreamReader != null) {
                                    inputStreamReader.close();
                                }
                                throw th2;
                            }
                        }
                    }
                    bufferedReader2.close();
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStreamReader = null;
            }
            inputStreamReader.close();
        } catch (Throwable unused2) {
        }
        string = sb.toString();
        try {
            new JSONObject(string);
            return string;
        } catch (JSONException unused3) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("string_response", string);
                return jSONObject.toString();
            } catch (JSONException unused4) {
                return new JSONObject().toString();
            }
        }
    }

    /* JADX INFO: renamed from: Ӏ, reason: contains not printable characters */
    private static float m95(Context context) {
        try {
            Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver.getIntExtra("level", -1);
            int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra == -1 || intExtra2 == -1) {
                return 50.0f;
            }
            return (intExtra / intExtra2) * 100.0f;
        } catch (Throwable th) {
            AFLogger.afErrorLog(th.getMessage(), th);
            return 1.0f;
        }
    }

    /* JADX INFO: renamed from: І, reason: contains not printable characters */
    private static boolean m91(Context context) {
        if (context != null) {
            if (Build.VERSION.SDK_INT >= 23) {
                try {
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    for (Network network : connectivityManager.getAllNetworks()) {
                        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                        if (networkCapabilities.hasTransport(4) && !networkCapabilities.hasCapability(15)) {
                            return true;
                        }
                    }
                    return false;
                } catch (Exception e2) {
                    AFLogger.afErrorLog("Failed collecting ivc data", e2);
                }
            } else if (Build.VERSION.SDK_INT >= 16) {
                ArrayList arrayList = new ArrayList();
                try {
                    for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                        if (networkInterface.isUp()) {
                            arrayList.add(networkInterface.getName());
                        }
                    }
                    return arrayList.contains("tun0");
                } catch (Exception e3) {
                    AFLogger.afErrorLog("Failed collecting ivc data", e3);
                }
            }
        }
        return false;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setLogLevel(AFLogger.LogLevel logLevel) {
        boolean z = logLevel.getLevel() > AFLogger.LogLevel.NONE.getLevel();
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "log", String.valueOf(z));
        AppsFlyerProperties.getInstance().set("shouldLog", z);
        AppsFlyerProperties.getInstance().set("logLevel", logLevel.getLevel());
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setMinTimeBetweenSessions(int i) {
        this.f81 = TimeUnit.SECONDS.toMillis(i);
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private AFEvent f125;

        /* synthetic */ e(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b2) {
            this(aFEvent);
        }

        private e(AFEvent aFEvent) {
            this.f125 = aFEvent;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
            AFEvent aFEvent = this.f125;
            aFEvent.f18 = aFEvent.f7.get();
            appsFlyerLibCore.m76(aFEvent);
        }
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private final AFEvent f112;

        /* synthetic */ a(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent, byte b2) {
            this(aFEvent);
        }

        private a(AFEvent aFEvent) {
            this.f112 = aFEvent.weakContext();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Writer] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v12 */
        /* JADX WARN: Type inference failed for: r1v13 */
        /* JADX WARN: Type inference failed for: r1v16 */
        /* JADX WARN: Type inference failed for: r1v28 */
        /* JADX WARN: Type inference failed for: r1v29 */
        /* JADX WARN: Type inference failed for: r1v30 */
        /* JADX WARN: Type inference failed for: r1v31 */
        /* JADX WARN: Type inference failed for: r1v32 */
        /* JADX WARN: Type inference failed for: r1v4 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Writer] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:87:0x021b -> B:97:0x0220). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:88:0x021d -> B:97:0x0220). Please report as a decompilation issue!!! */
        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            String str;
            Map<String, Object> mapParams = this.f112.params();
            boolean zM4 = this.f112.m4();
            String strUrlString = this.f112.urlString();
            int i = this.f112.f11;
            Context context = this.f112.context();
            if (AppsFlyerLibCore.this.isTrackingStopped()) {
                return;
            }
            byte[] bArr = new byte[0];
            if (zM4 && i <= 2) {
                ArrayList arrayList = new ArrayList();
                if (AppsFlyerLibCore.this.m68()) {
                    mapParams.put(AppsFlyerLibCore.INSTALL_REFERRER_PREF, AppsFlyerLibCore.this.f83.oldMap);
                    AppsFlyerLibCore.getSharedPreferences(context).edit().putBoolean(AppsFlyerProperties.NEW_REFERRER_SENT, true).apply();
                    arrayList.add(AppsFlyerLibCore.this.f83.newMap);
                }
                if (AppsFlyerLibCore.this.f92 != null) {
                    Map<String, Object> map = AppsFlyerLibCore.this.f92.map;
                    if (map == null) {
                        if (AppsFlyerLibCore.this.f92.valid() && i == 2) {
                            HashMap map2 = new HashMap();
                            map2.put(Payload.SOURCE, Payload.SOURCE_HUAWEI);
                            map2.put(Payload.RESPONSE, Payload.RESPONSE_TIMEOUT);
                            map2.putAll(new MandatoryFields());
                            arrayList.add(map2);
                        }
                    } else {
                        arrayList.add(map);
                    }
                }
                if (!arrayList.isEmpty()) {
                    mapParams.put(Payload.RFRS, arrayList);
                }
                if (AppsFlyerLibCore.this.f84 != null) {
                    mapParams.put("fb_ddl", AppsFlyerLibCore.this.f84);
                }
                if (AppsFlyerLibCore.this.m96()) {
                    mapParams.put("lvl", AppsFlyerLibCore.this.f87);
                } else if (AppsFlyerLibCore.this.f91) {
                    AppsFlyerLibCore.this.f87 = new HashMap();
                    AppsFlyerLibCore.this.f87.put("error", "operation timed out.");
                }
            }
            if (!(this.f112 instanceof AdRevenue)) {
                mapParams.putAll(new c.a(mapParams, context));
            }
            ?? r1 = 0;
            r1 = 0;
            r1 = 0;
            r1 = 0;
            try {
                try {
                    AFEvent aFEvent = this.f112;
                    if (this.f112 instanceof AdRevenue) {
                        str = (String) mapParams.get("af_key");
                    } else {
                        str = (String) mapParams.get("appsflyerKey");
                    }
                    aFEvent.key(str);
                    synchronized (mapParams) {
                        try {
                            try {
                                byte[] bArr2 = (byte[]) ((Class) d.m176(48, (char) 11758, 24)).getMethod("ɩ", AFEvent.class).invoke(null, this.f112);
                                try {
                                    try {
                                        AppsFlyerLibCore.m41(AppsFlyerLibCore.this, this.f112.post(bArr2));
                                        return;
                                    } catch (IOException e2) {
                                        e = e2;
                                        bArr = bArr2;
                                        AFLogger.afErrorLog("Exception while sending request to server. ", e);
                                        if (bArr == null || context == null || strUrlString.contains("&isCachedRequest=true&timeincache=")) {
                                            return;
                                        }
                                        aa.m116();
                                        j jVar = new j(strUrlString, bArr, BuildConfig.VERSION_NAME);
                                        try {
                                            try {
                                                try {
                                                    File fileM119 = aa.m119(context);
                                                    if (!fileM119.exists()) {
                                                        fileM119.mkdir();
                                                    } else {
                                                        File[] fileArrListFiles = fileM119.listFiles();
                                                        if (fileArrListFiles != null && fileArrListFiles.length > 40) {
                                                            Log.i(AppsFlyerLibCore.LOG_TAG, "reached cache limit, not caching request");
                                                        } else {
                                                            Log.i(AppsFlyerLibCore.LOG_TAG, "caching request...");
                                                            File file = new File(aa.m119(context), Long.toString(System.currentTimeMillis()));
                                                            file.createNewFile();
                                                            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file.getPath(), true));
                                                            try {
                                                                outputStreamWriter.write("version=");
                                                                outputStreamWriter.write(jVar.f267);
                                                                r1 = 10;
                                                                outputStreamWriter.write(10);
                                                                outputStreamWriter.write("url=");
                                                                outputStreamWriter.write(jVar.f265);
                                                                outputStreamWriter.write(10);
                                                                outputStreamWriter.write("data=");
                                                                outputStreamWriter.write(Base64.encodeToString(jVar.m181(), 2));
                                                                outputStreamWriter.write(10);
                                                                outputStreamWriter.flush();
                                                                outputStreamWriter.close();
                                                            } catch (Exception unused) {
                                                                r1 = outputStreamWriter;
                                                                Log.i(AppsFlyerLibCore.LOG_TAG, "Could not cache request");
                                                                r1 = r1;
                                                                if (r1 != 0) {
                                                                    r1.close();
                                                                    r1 = r1;
                                                                }
                                                                AFLogger.afErrorLog(e.getMessage(), e);
                                                                return;
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                r1 = outputStreamWriter;
                                                                if (r1 != 0) {
                                                                    try {
                                                                        r1.close();
                                                                    } catch (IOException unused2) {
                                                                    }
                                                                }
                                                                throw th;
                                                            }
                                                        }
                                                    }
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                }
                                            } catch (Exception unused3) {
                                            }
                                        } catch (IOException unused4) {
                                        }
                                        AFLogger.afErrorLog(e.getMessage(), e);
                                        return;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    bArr = bArr2;
                                    throw th;
                                }
                            } catch (Throwable th4) {
                                Throwable cause = th4.getCause();
                                if (cause == null) {
                                    throw th4;
                                }
                                throw cause;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                        }
                    }
                    throw th;
                } catch (Throwable th6) {
                    AFLogger.afErrorLog(th6.getMessage(), th6);
                }
            } catch (IOException e3) {
                e = e3;
            }
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
        private static final List<String> f114 = Arrays.asList("googleplay", "playstore", "googleplaystore");

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        private static String f115 = "https://%sgcdsdk.%s/install_data/v4.0/";

        /* JADX INFO: renamed from: ı, reason: contains not printable characters */
        private final String f116;

        /* JADX INFO: renamed from: Ɩ, reason: contains not printable characters */
        private AppsFlyerLibCore f117;

        /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
        private final Application f118;

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        final ScheduledExecutorService f119;

        /* JADX INFO: renamed from: І, reason: contains not printable characters */
        private final int f120;

        /* JADX INFO: renamed from: і, reason: contains not printable characters */
        private final AtomicInteger f121;

        /* synthetic */ b(AppsFlyerLibCore appsFlyerLibCore, Application application, String str, byte b2) {
            this(appsFlyerLibCore, application, str);
        }

        private b(AppsFlyerLibCore appsFlyerLibCore, Application application, String str) {
            this.f119 = AFExecutor.getInstance().m7();
            this.f121 = new AtomicInteger(0);
            this.f117 = appsFlyerLibCore;
            this.f118 = application;
            this.f116 = str;
            this.f120 = 0;
        }

        private b(b bVar) {
            this.f119 = AFExecutor.getInstance().m7();
            this.f121 = new AtomicInteger(0);
            this.f117 = bVar.f117;
            this.f118 = bVar.f118;
            this.f116 = bVar.f116;
            this.f120 = bVar.f120 + 1;
        }

        /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
        private void m110(String str, int i) {
            if (500 <= i && i < 600) {
                if (this.f120 == 2) {
                    AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
                    AppsFlyerLibCore.f62.onConversionDataFail(str);
                    return;
                } else {
                    b bVar = new b(this);
                    AppsFlyerLibCore.m60(bVar.f119, bVar, 10L, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            AFLogger.afDebugLog("Calling onConversionFailure with:\n".concat(String.valueOf(str)));
            AppsFlyerLibCore.f62.onConversionDataFail(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00a5 A[Catch: all -> 0x0273, TryCatch #2 {all -> 0x0273, blocks: (B:11:0x0020, B:15:0x002a, B:18:0x0041, B:20:0x004d, B:23:0x0066, B:25:0x00a5, B:26:0x00ac, B:21:0x0058), top: B:97:0x0020 }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00f1 A[Catch: all -> 0x0270, TryCatch #0 {all -> 0x0270, blocks: (B:27:0x00cf, B:29:0x00f1, B:30:0x00f8, B:34:0x0113, B:36:0x0119, B:37:0x0126, B:38:0x0141, B:40:0x0160, B:42:0x016e, B:44:0x0188, B:46:0x018e, B:47:0x0199, B:50:0x01a3, B:52:0x01a9, B:53:0x01bd, B:54:0x01ce, B:56:0x01d4, B:57:0x01e7, B:60:0x01f9, B:62:0x0204, B:64:0x0220, B:66:0x0228, B:68:0x023c, B:72:0x0249, B:71:0x0244, B:61:0x01ff), top: B:94:0x00cf, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:32:0x0110 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0141 A[Catch: all -> 0x0270, TryCatch #0 {all -> 0x0270, blocks: (B:27:0x00cf, B:29:0x00f1, B:30:0x00f8, B:34:0x0113, B:36:0x0119, B:37:0x0126, B:38:0x0141, B:40:0x0160, B:42:0x016e, B:44:0x0188, B:46:0x018e, B:47:0x0199, B:50:0x01a3, B:52:0x01a9, B:53:0x01bd, B:54:0x01ce, B:56:0x01d4, B:57:0x01e7, B:60:0x01f9, B:62:0x0204, B:64:0x0220, B:66:0x0228, B:68:0x023c, B:72:0x0249, B:71:0x0244, B:61:0x01ff), top: B:94:0x00cf, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0160 A[Catch: all -> 0x0270, TryCatch #0 {all -> 0x0270, blocks: (B:27:0x00cf, B:29:0x00f1, B:30:0x00f8, B:34:0x0113, B:36:0x0119, B:37:0x0126, B:38:0x0141, B:40:0x0160, B:42:0x016e, B:44:0x0188, B:46:0x018e, B:47:0x0199, B:50:0x01a3, B:52:0x01a9, B:53:0x01bd, B:54:0x01ce, B:56:0x01d4, B:57:0x01e7, B:60:0x01f9, B:62:0x0204, B:64:0x0220, B:66:0x0228, B:68:0x023c, B:72:0x0249, B:71:0x0244, B:61:0x01ff), top: B:94:0x00cf, inners: #1 }] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x026c  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x027a A[Catch: all -> 0x0298, TryCatch #3 {all -> 0x0298, blocks: (B:79:0x0274, B:81:0x027a, B:82:0x0281), top: B:99:0x0274 }] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x028f A[DONT_GENERATE] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void run() {
            /*
                Method dump skipped, instruction units count: 677
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.AppsFlyerLibCore.b.run():void");
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: ι, reason: contains not printable characters */
        private WeakReference<Context> f123;

        public c(Context context) {
            this.f123 = null;
            this.f123 = new WeakReference<>(context);
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (AppsFlyerLibCore.this.f90) {
                return;
            }
            AppsFlyerLibCore.this.f95 = System.currentTimeMillis();
            if (this.f123 == null) {
                return;
            }
            AppsFlyerLibCore.this.f90 = true;
            try {
                try {
                    String strM51 = AppsFlyerLibCore.m51(AppsFlyerProperties.AF_KEY);
                    synchronized (this.f123) {
                        aa.m116();
                        for (j jVar : aa.m117(this.f123.get())) {
                            StringBuilder sb = new StringBuilder("resending request: ");
                            sb.append(jVar.f265);
                            AFLogger.afInfoLog(sb.toString());
                            try {
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                long j = Long.parseLong(jVar.f266, 10);
                                AppsFlyerLibCore appsFlyerLibCore = AppsFlyerLibCore.this;
                                CachedEvent cachedEvent = new CachedEvent();
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(jVar.f265);
                                sb2.append("&isCachedRequest=true&timeincache=");
                                sb2.append((jCurrentTimeMillis - j) / 1000);
                                AFEvent aFEventKey = cachedEvent.urlString(sb2.toString()).post(jVar.m181()).key(strM51);
                                aFEventKey.f7 = this.f123;
                                aFEventKey.f14 = jVar.f266;
                                aFEventKey.f10 = false;
                                AppsFlyerLibCore.m41(appsFlyerLibCore, aFEventKey);
                            } catch (Exception e2) {
                                AFLogger.afErrorLog("Failed to resend cached request", e2);
                            }
                        }
                    }
                } catch (Exception e3) {
                    AFLogger.afErrorLog("failed to check cache. ", e3);
                }
                AppsFlyerLibCore.this.f90 = false;
                AppsFlyerLibCore.this.f69.shutdown();
                AppsFlyerLibCore.m98(AppsFlyerLibCore.this);
            } catch (Throwable th) {
                AppsFlyerLibCore.this.f90 = false;
                throw th;
            }
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getSdkVersion() {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "getSdkVersion", new String[0]);
        StringBuilder sb = new StringBuilder("version: 5.4.1 (build ");
        sb.append(f61);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setImeiData(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setImeiData", str);
        this.f85 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setOaidData(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setOaidData", str);
        this.f78 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAndroidIdData(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setAndroidIdData", str);
        this.f86 = str;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppInviteOneLink(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setAppInviteOneLink", str);
        AFLogger.afInfoLog("setAppInviteOneLink = ".concat(String.valueOf(str)));
        if (str == null || !str.equals(AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.ONELINK_ID))) {
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_DOMAIN);
            AppsFlyerProperties.getInstance().remove("onelinkVersion");
            AppsFlyerProperties.getInstance().remove(AppsFlyerProperties.ONELINK_SCHEME);
        }
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.ONELINK_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAdditionalData(HashMap<String, Object> map) {
        if (map != null) {
            if (ai.f184 == null) {
                ai.f184 = new ai();
            }
            ai.f184.m141("public_api_call", "setAdditionalData", map.toString());
            AppsFlyerProperties.getInstance().setCustomData(new JSONObject(map).toString());
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setUserEmails(String... strArr) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setUserEmails", strArr);
        setUserEmails(AppsFlyerProperties.EmailsCryptType.NONE, strArr);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectAndroidID(boolean z) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setCollectAndroidID", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_ANDROID_ID_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectIMEI(boolean z) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setCollectIMEI", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI, Boolean.toString(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_IMEI_FORCE_BY_USER, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCollectOaid(boolean z) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setCollectOaid", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.COLLECT_OAID, Boolean.toString(z));
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public AppsFlyerLib init(String str, AppsFlyerConversionListener appsFlyerConversionListener) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai aiVar = ai.f184;
        String[] strArr = new String[2];
        strArr[0] = str;
        strArr[1] = appsFlyerConversionListener == null ? "null" : "conversionDataListener";
        aiVar.m141("public_api_call", "init", strArr);
        AFLogger.m18(String.format("Initializing AppsFlyer SDK: (v%s.%s)", BuildConfig.VERSION_NAME, f61));
        this.f79 = true;
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.AF_KEY, str);
        ah.m133(str);
        f62 = appsFlyerConversionListener;
        return this;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCustomerUserId(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setCustomerUserId", str);
        AFLogger.afInfoLog("setCustomerUserId = ".concat(String.valueOf(str)));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_USER_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setAppId(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setAppId", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.APP_ID, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setExtension(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setExtension", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.EXTENSION, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setIsUpdate(boolean z) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setIsUpdate", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.IS_UPDATE, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setCurrencyCode(String str) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setCurrencyCode", str);
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.CURRENCY_CODE, str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void trackLocation(Context context, double d2, double d3) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "trackLocation", String.valueOf(d2), String.valueOf(d3));
        HashMap map = new HashMap();
        map.put(AFInAppEventParameterName.LONGTITUDE, Double.toString(d3));
        map.put(AFInAppEventParameterName.LATITUDE, Double.toString(d2));
        AFEvent aFEventContext = new InAppEvent().context(context);
        aFEventContext.f21 = AFInAppEventType.LOCATION_COORDINATES;
        aFEventContext.f17 = map;
        m101(aFEventContext);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void reportTrackSession(Context context) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "reportTrackSession", new String[0]);
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.f189 = false;
        AFEvent aFEventContext = new InAppEvent().context(context);
        aFEventContext.f21 = null;
        aFEventContext.f17 = null;
        m101(aFEventContext);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setDeviceTrackingDisabled(boolean z) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "setDeviceTrackingDisabled", String.valueOf(z));
        AppsFlyerProperties.getInstance().set(AppsFlyerProperties.DEVICE_TRACKING_DISABLED, z);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerConversionListener(Context context, AppsFlyerConversionListener appsFlyerConversionListener) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "registerConversionListener", new String[0]);
        if (appsFlyerConversionListener != null) {
            f62 = appsFlyerConversionListener;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void unregisterConversionListener() {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "unregisterConversionListener", new String[0]);
        f62 = null;
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void registerValidatorListener(Context context, AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "registerValidatorListener", new String[0]);
        AFLogger.afDebugLog("registerValidatorListener called");
        if (appsFlyerInAppPurchaseValidatorListener == null) {
            AFLogger.afDebugLog("registerValidatorListener null listener");
        } else {
            f60 = appsFlyerInAppPurchaseValidatorListener;
        }
    }

    /* JADX INFO: renamed from: ɩ, reason: contains not printable characters */
    private static void m66(Context context, Map<String, ? super String> map) {
        s sVar = s.d.f297;
        s.a aVarM192 = s.m192(context);
        map.put("network", aVarM192.f294);
        if (aVarM192.f296 != null) {
            map.put("operator", aVarM192.f296);
        }
        if (aVarM192.f295 != null) {
            map.put("carrier", aVarM192.f295);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getAppsFlyerUID(Context context) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("public_api_call", "getAppsFlyerUID", new String[0]);
        return ae.m125((WeakReference<Context>) new WeakReference(context));
    }

    /* JADX INFO: renamed from: ι, reason: contains not printable characters */
    private void m87(AFEvent aFEvent) throws Throwable {
        HttpURLConnection httpURLConnection;
        DataOutputStream dataOutputStream;
        URL url = new URL(aFEvent.f20);
        byte[] bArrM5 = aFEvent.m5();
        String strKey = aFEvent.key();
        String str = aFEvent.f14;
        boolean zM4 = aFEvent.m4();
        Context context = aFEvent.context();
        AppsFlyerTrackingRequestListener appsFlyerTrackingRequestListener = aFEvent.f12;
        boolean z = zM4 && f62 != null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(bArrM5.length));
                httpURLConnection2.setRequestProperty("Content-Type", aFEvent.isEncrypt() ? "application/octet-stream" : "application/json");
                httpURLConnection2.setConnectTimeout(10000);
                httpURLConnection2.setDoOutput(true);
                try {
                    DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection2.getOutputStream());
                    try {
                        dataOutputStream2.write(bArrM5);
                        dataOutputStream2.close();
                        int responseCode = httpURLConnection2.getResponseCode();
                        String strM99 = m99(httpURLConnection2);
                        if (ai.f184 == null) {
                            ai.f184 = new ai();
                        }
                        ai.f184.m141("server_response", url.toString(), String.valueOf(responseCode), strM99);
                        AFLogger.afInfoLog("response code: ".concat(String.valueOf(responseCode)));
                        SharedPreferences sharedPreferences = getSharedPreferences(context);
                        if (responseCode == 200) {
                            if (context != null && zM4) {
                                this.f68 = System.currentTimeMillis();
                            }
                            if (appsFlyerTrackingRequestListener != null) {
                                appsFlyerTrackingRequestListener.onTrackingRequestSuccess();
                            }
                            if (str != null) {
                                aa.m116();
                                aa.m118(str, context);
                            } else {
                                SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
                                editorEdit.putString("sentSuccessfully", "true");
                                editorEdit.apply();
                                if (!this.f90 && System.currentTimeMillis() - this.f95 >= 15000 && this.f69 == null) {
                                    this.f69 = AFExecutor.getInstance().m7();
                                    m60(this.f69, new c(context), 1L, TimeUnit.SECONDS);
                                }
                            }
                            String string = AppsFlyerProperties.getInstance().getString("afUninstallToken");
                            if (string != null) {
                                AFLogger.afDebugLog("Uninstall Token exists: ".concat(String.valueOf(string)));
                                if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false)) {
                                    AFLogger.afDebugLog("Resending Uninstall token to AF servers: ".concat(String.valueOf(string)));
                                    af.m126(context, string);
                                }
                            }
                            if (this.latestDeepLink != null) {
                                this.latestDeepLink = null;
                            }
                            this.f76 = ServerConfigHandler.m114(strM99).optBoolean("send_background", false);
                        } else if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestFailure("Failure: ".concat(String.valueOf(responseCode)));
                        }
                        long j = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                        if (j != 0 && System.currentTimeMillis() - j > 5184000000L) {
                            SharedPreferences.Editor editorEdit2 = getSharedPreferences(context).edit();
                            editorEdit2.putBoolean("sixtyDayConversionData", true);
                            editorEdit2.apply();
                            SharedPreferences.Editor editorEdit3 = getSharedPreferences(context).edit();
                            editorEdit3.putString("attributionId", null);
                            editorEdit3.apply();
                            m65(context, "appsflyerConversionDataCacheExpiration", 0L);
                        }
                        if (sharedPreferences.getString("attributionId", null) == null && strKey != null && z) {
                            b bVar = new b(this, (Application) context.getApplicationContext(), strKey, (byte) 0);
                            m60(bVar.f119, bVar, 10L, TimeUnit.MILLISECONDS);
                        } else if (strKey == null) {
                            AFLogger.afWarnLog("AppsFlyer dev key is missing.");
                        } else if (z && sharedPreferences.getString("attributionId", null) != null && getLaunchCounter(sharedPreferences, false) > 1) {
                            try {
                                Map<String, Object> mapM86 = m86(context);
                                if (mapM86 != null) {
                                    try {
                                        if (!mapM86.containsKey("is_first_launch")) {
                                            mapM86.put("is_first_launch", Boolean.FALSE);
                                        }
                                        StringBuilder sb = new StringBuilder("Calling onConversionDataSuccess with:\n");
                                        sb.append(mapM86.toString());
                                        AFLogger.afDebugLog(sb.toString());
                                        f62.onConversionDataSuccess(mapM86);
                                    } catch (Throwable th) {
                                        AFLogger.afErrorLog(th.getLocalizedMessage(), th);
                                    }
                                }
                            } catch (y e2) {
                                AFLogger.afErrorLog(e2.getMessage(), e2);
                            }
                        }
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dataOutputStream = dataOutputStream2;
                        if (dataOutputStream != null) {
                            dataOutputStream.close();
                        } else if (appsFlyerTrackingRequestListener != null) {
                            appsFlyerTrackingRequestListener.onTrackingRequestFailure("No Connectivity");
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    dataOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                httpURLConnection = httpURLConnection2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void validateAndTrackInAppPurchase(Context context, String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai aiVar = ai.f184;
        String[] strArr = new String[6];
        strArr[0] = str;
        strArr[1] = str2;
        strArr[2] = str3;
        strArr[3] = str4;
        strArr[4] = str5;
        strArr[5] = map == null ? "" : map.toString();
        aiVar.m141("public_api_call", "validateAndTrackInAppPurchase", strArr);
        if (!isTrackingStopped()) {
            StringBuilder sb = new StringBuilder("Validate in app called with parameters: ");
            sb.append(str3);
            sb.append(" ");
            sb.append(str4);
            sb.append(" ");
            sb.append(str5);
            AFLogger.afInfoLog(sb.toString());
        }
        if (str == null || str4 == null || str2 == null || str5 == null || str3 == null) {
            AppsFlyerInAppPurchaseValidatorListener appsFlyerInAppPurchaseValidatorListener = f60;
            if (appsFlyerInAppPurchaseValidatorListener != null) {
                appsFlyerInAppPurchaseValidatorListener.onValidateInAppFailure("Please provide purchase parameters");
                return;
            }
            return;
        }
        new Thread(new x(context.getApplicationContext(), AppsFlyerProperties.getInstance().getString(AppsFlyerProperties.AF_KEY), str, str2, str3, str4, str5, map, context instanceof Activity ? ((Activity) context).getIntent() : null)).start();
    }

    @Override // com.appsflyer.AppsFlyerLib
    public void setHost(String str, String str2) {
        if (str != null) {
            AppsFlyerProperties.getInstance().set("custom_host_prefix", str);
        }
        if (str2 == null || str2.isEmpty()) {
            AFLogger.afWarnLog("hostName cannot be null or empty");
        } else {
            AppsFlyerProperties.getInstance().set("custom_host", str2);
        }
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getHostName() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host");
        return string != null ? string : ServerParameters.DEFAULT_HOST;
    }

    @Override // com.appsflyer.AppsFlyerLib
    @Deprecated
    public void setHostName(String str) {
        AppsFlyerProperties.getInstance().set("custom_host", str);
    }

    @Override // com.appsflyer.AppsFlyerLib
    public String getHostPrefix() {
        String string = AppsFlyerProperties.getInstance().getString("custom_host_prefix");
        return string != null ? string : "";
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    static /* synthetic */ void m77(AppsFlyerLibCore appsFlyerLibCore) {
        AFEvent aFEventContext = new Attr().context(appsFlyerLibCore.f88);
        if (appsFlyerLibCore.m68() && appsFlyerLibCore.m79(aFEventContext, getSharedPreferences(appsFlyerLibCore.f88))) {
            appsFlyerLibCore.m76(aFEventContext);
        }
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    static /* synthetic */ void m56(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = getSharedPreferences(context).edit();
        editorEdit.putString(str, str2);
        editorEdit.apply();
    }

    /* JADX INFO: renamed from: ı, reason: contains not printable characters */
    static /* synthetic */ void m41(AppsFlyerLibCore appsFlyerLibCore, AFEvent aFEvent) throws Throwable {
        String string;
        StringBuilder sb = new StringBuilder("url: ");
        sb.append(aFEvent.urlString());
        AFLogger.afInfoLog(sb.toString());
        if (aFEvent.f14 != null) {
            string = Base64.encodeToString(aFEvent.m5(), 2);
            AFLogger.afInfoLog("cached data: ".concat(String.valueOf(string)));
        } else {
            string = new JSONObject(aFEvent.params()).toString();
            ah.m134("data: ".concat(String.valueOf(string)));
        }
        if (ai.f184 == null) {
            ai.f184 = new ai();
        }
        ai.f184.m141("server_request", aFEvent.urlString(), string);
        try {
            appsFlyerLibCore.m87(aFEvent);
        } catch (IOException e2) {
            AFLogger.afErrorLog("Exception in sendRequestToServer. ", e2);
            if (AppsFlyerProperties.getInstance().getBoolean(AppsFlyerProperties.USE_HTTP_FALLBACK, false)) {
                appsFlyerLibCore.m87(aFEvent.urlString(aFEvent.urlString().replace("https:", "http:")));
                return;
            }
            StringBuilder sb2 = new StringBuilder("failed to send requeset to server. ");
            sb2.append(e2.getLocalizedMessage());
            AFLogger.afInfoLog(sb2.toString());
            throw e2;
        }
    }

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    static /* synthetic */ String m51(String str) {
        return AppsFlyerProperties.getInstance().getString(str);
    }
}
