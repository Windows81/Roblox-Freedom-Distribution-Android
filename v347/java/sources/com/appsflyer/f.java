package com.appsflyer;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.os.Process;
import android.support.v7.widget.RecyclerView;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.appsflyer.k;
import com.appsflyer.t;
import com.appsflyer.u;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {
    private String A;
    private boolean B;
    String g;
    String h;
    private long r;
    private long t;
    private long u;
    private t.b w;
    private long y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final String f2191a = "4.8.3".substring(0, "4.8.3".indexOf("."));
    private static final String j = f2191a + "/androidevent?buildnumber=4.8.3&app_id=";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f2192b = "https://attr.%s/api/v" + j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f2193c = "https://t.%s/api/v" + j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final String f2194d = "https://events.%s/api/v" + j;
    static final String e = "https://register.%s/api/v" + j;
    private static final List<String> m = Arrays.asList("is_cache");
    private static final List<String> n = Arrays.asList("googleplay", "playstore", "googleplaystore");
    private static com.appsflyer.d p = null;
    static com.appsflyer.e f = null;
    private static f v = new f();
    private String i = "appsflyer.com";
    private long k = -1;
    private long l = -1;
    private long o = TimeUnit.SECONDS.toMillis(5);
    private boolean q = false;
    private ScheduledExecutorService s = null;
    private Uri x = null;
    private boolean z = false;
    private x C = new x();

    void a() {
        this.t = System.currentTimeMillis();
    }

    void b() {
        this.u = System.currentTimeMillis();
    }

    void a(Context context, Intent intent) {
        String stringExtra = intent.getStringExtra("shouldMonitor");
        if (stringExtra != null) {
            com.appsflyer.c.c("Turning on monitoring.");
            g.a().a("shouldMonitor", stringExtra.equals("true"));
            a(context, (String) null, "START_TRACKING", context.getPackageName());
            return;
        }
        com.appsflyer.c.c("****** onReceive called *******");
        a("******* onReceive: ", "", context);
        g.a().c();
        String stringExtra2 = intent.getStringExtra("referrer");
        com.appsflyer.c.c("Play store referrer: " + stringExtra2);
        if (stringExtra2 != null) {
            if ("AppsFlyer_Test".equals(intent.getStringExtra("TestIntegrationMode"))) {
                SharedPreferences.Editor editorEdit = context.getSharedPreferences("appsflyer-data", 0).edit();
                editorEdit.clear();
                a(editorEdit);
                g.a().a(false);
                i();
            }
            a("onReceive called. referrer: ", stringExtra2, context);
            a(context, "referrer", stringExtra2);
            g.a().b(stringExtra2);
            if (g.a().d()) {
                com.appsflyer.c.c("onReceive: isLaunchCalled");
                e(context, stringExtra2);
            }
        }
    }

    void a(Context context, String str) {
        JSONArray jSONArray;
        JSONObject jSONObject;
        com.appsflyer.c.b("received a new (extra) referrer: " + str);
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            String string = context.getSharedPreferences("appsflyer-data", 0).getString("extraReferrers", null);
            if (string == null) {
                jSONObject = new JSONObject();
                jSONArray = new JSONArray();
            } else {
                JSONObject jSONObject2 = new JSONObject(string);
                if (jSONObject2.has(str)) {
                    jSONArray = new JSONArray((String) jSONObject2.get(str));
                    jSONObject = jSONObject2;
                } else {
                    jSONArray = new JSONArray();
                    jSONObject = jSONObject2;
                }
            }
            if (jSONArray.length() <= 4) {
                jSONArray.put(jCurrentTimeMillis);
            }
            jSONObject.put(str, jSONArray.toString());
            a(context, "extraReferrers", jSONObject.toString());
        } catch (JSONException e2) {
        } catch (Throwable th) {
            com.appsflyer.c.a("Couldn't save referrer - " + str + ": ", th);
        }
    }

    @SuppressLint({"CommitPrefEdits"})
    void a(SharedPreferences.Editor editor) {
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    private void i() {
        com.appsflyer.c.c("Test mode started..");
        this.y = System.currentTimeMillis();
    }

    private void j() {
        com.appsflyer.c.c("Test mode ended!");
        this.y = 0L;
    }

    private boolean d(Context context) {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.y;
        String strA = g.a().a(context);
        return jCurrentTimeMillis <= 30000 && strA != null && strA.contains("AppsFlyer_Test");
    }

    private f() {
    }

    public static f c() {
        return v;
    }

    private void a(Application application) {
        g.a().b(application.getApplicationContext());
        if (Build.VERSION.SDK_INT >= 14) {
            if (Build.VERSION.SDK_INT >= 14 && this.w == null) {
                t.a();
                this.w = new t.b() { // from class: com.appsflyer.f.1
                    @Override // com.appsflyer.t.b
                    public final void a(Activity activity) {
                        m.a(activity);
                    }

                    @Override // com.appsflyer.t.b
                    public final void a(WeakReference<Activity> weakReference) {
                        m.b(weakReference.get());
                    }
                };
                t.b().a(application, this.w);
                return;
            }
            return;
        }
        com.appsflyer.c.c("SDK<14 call trackEvent manually");
        m.a(application);
    }

    private void a(String str, String str2, Context context) {
        try {
            if (e(context)) {
                h.a().a(str + str2);
            }
        } catch (Exception e2) {
            com.appsflyer.c.a("Exception in AppsFlyerLib.debugAction(...):", e2);
        }
    }

    private boolean e(Context context) {
        return context != null && context.getPackageName().length() > 12 && "com.appsflyer".equals(context.getPackageName().toLowerCase().substring(0, 13));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("appsflyer-data", 0).edit();
        editorEdit.putString(str, str2);
        a(editorEdit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, int i) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("appsflyer-data", 0).edit();
        editorEdit.putInt(str, i);
        a(editorEdit);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, long j2) {
        a(context.getSharedPreferences("appsflyer-data", 0), str, j2);
    }

    private void a(SharedPreferences sharedPreferences, String str, long j2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong(str, j2);
        a(editorEdit);
    }

    private void a(String str, String str2) {
        g.a().a(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        return g.a().a(str);
    }

    public void a(boolean z) {
        y.a().a("setCollectAndroidID", String.valueOf(z));
        a("collectAndroidId", Boolean.toString(z));
    }

    public void b(boolean z) {
        y.a().a("setCollectIMEI", String.valueOf(z));
        a("collectIMEI", Boolean.toString(z));
    }

    public void a(Application application, String str) {
        y.a().a("startTracking", str);
        com.appsflyer.c.c(String.format("Starting AppsFlyer Tracking: (v%s.%s)", "4.8.3", "344"));
        com.appsflyer.c.c("Build Number: 344");
        g.a().b(application.getApplicationContext());
        if (!TextUtils.isEmpty(str)) {
            a("AppsFlyerKey", str);
            m.a(str);
        } else if (TextUtils.isEmpty(b("AppsFlyerKey"))) {
            com.appsflyer.c.d("ERROR: AppsFlyer SDK is not initialized! You must provide AppsFlyer Dev-Key either in the 'init' API method (should be called on Application's onCreate),or in the startTracking API method (should be called on Activity's onCreate).");
            return;
        }
        a(application);
    }

    private void f(Context context) {
        int i = 18;
        if (m.c()) {
            i = 23;
            com.appsflyer.c.a("OPPO device found");
        }
        if (Build.VERSION.SDK_INT >= i) {
            com.appsflyer.c.a("OS SDK is=" + Build.VERSION.SDK_INT + "; use KeyStore");
            com.appsflyer.b bVar = new com.appsflyer.b(context);
            if (!bVar.b()) {
                bVar.a(w.a((WeakReference<Context>) new WeakReference(context)));
                a("KSAppsFlyerId", bVar.c());
                a("KSAppsFlyerRICounter", String.valueOf(bVar.d()));
                return;
            } else {
                bVar.a();
                a("KSAppsFlyerId", bVar.c());
                a("KSAppsFlyerRICounter", String.valueOf(bVar.d()));
                return;
            }
        }
        com.appsflyer.c.a("OS SDK is=" + Build.VERSION.SDK_INT + "; no KeyStore usage");
    }

    private String k() {
        return b("AppUserId");
    }

    private String l() {
        return b("appid");
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0136 -> B:34:0x0008). Please report as a decompilation issue!!! */
    void a(WeakReference<Context> weakReference) {
        String strE;
        if (weakReference.get() != null) {
            com.appsflyer.c.c("app went to background");
            SharedPreferences sharedPreferences = weakReference.get().getSharedPreferences("appsflyer-data", 0);
            g.a().a(sharedPreferences);
            long j2 = this.u - this.t;
            HashMap map = new HashMap();
            String strB = b("AppsFlyerKey");
            if (strB == null) {
                com.appsflyer.c.d("[callStats] AppsFlyer's SDK cannot send any event without providing DevKey.");
                return;
            }
            String strB2 = b("KSAppsFlyerId");
            if (g.a().b("deviceTrackingDisabled", false)) {
                map.put("deviceTrackingDisabled", "true");
            }
            q qVarA = m.a(weakReference.get().getContentResolver());
            if (qVarA != null) {
                map.put("amazon_aid", qVarA.a());
                map.put("amazon_aid_limit", String.valueOf(qVarA.b()));
            }
            String strA = g.a().a("advertiserId");
            if (strA != null) {
                map.put("advertiserId", strA);
            }
            map.put("app_id", weakReference.get().getPackageName());
            map.put("devkey", strB);
            map.put("uid", w.a(weakReference));
            map.put("time_in_app", String.valueOf(j2 / 1000));
            map.put("statType", "user_closed_app");
            map.put("platform", "Android");
            map.put("launch_counter", Integer.toString(a(sharedPreferences, "appsFlyerCount", false)));
            map.put("gcd_conversion_data_timing", Long.toString(sharedPreferences.getLong("appsflyerGetConversionDataTiming", 0L)));
            map.put("channel", b(weakReference));
            map.put("originalAppsflyerId", strB2 != null ? strB2 : "");
            if (g.a().b("collectFingerPrint", true) && (strE = e()) != null) {
                map.put("deviceFingerPrintId", strE);
            }
            try {
                s sVar = new s(null);
                sVar.f2242a = map;
                if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
                    com.appsflyer.c.b("Main thread detected. Running callStats task in a new thread.");
                    sVar.execute(l.b("https://stats.%s/stats"));
                } else {
                    com.appsflyer.c.b("Running callStats task (on current thread: " + Thread.currentThread().toString() + " )");
                    sVar.onPreExecute();
                    sVar.onPostExecute(sVar.doInBackground(l.b("https://stats.%s/stats")));
                }
            } catch (Throwable th) {
                com.appsflyer.c.a("Could not send callStats request", th);
            }
        }
    }

    public void a(Context context, String str, Map<String, Object> map) {
        y.a().a("trackEvent", str, new JSONObject(map == null ? new HashMap<>() : map).toString());
        b(context, str, map);
    }

    void b(Context context, String str, Map<String, Object> map) {
        if (b("AppsFlyerKey") == null) {
            com.appsflyer.c.d("[TrackEvent/Launch] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        JSONObject jSONObject = new JSONObject(map);
        String strA = g.a().a(context);
        String string = jSONObject.toString();
        if (strA == null) {
            strA = "";
        }
        a(context, (String) null, str, string, strA, true);
    }

    private void a(Context context, String str, String str2, String str3) {
        if (g.a().b("shouldMonitor", false)) {
            Intent intent = new Intent("com.appsflyer.MonitorBroadcast");
            intent.setPackage("com.appsflyer.nightvision");
            intent.putExtra("message", str2);
            intent.putExtra("value", str3);
            intent.putExtra("packageName", "true");
            intent.putExtra("pid", new Integer(Process.myPid()));
            intent.putExtra("eventIdentifier", str);
            intent.putExtra("sdk", "4.8.3");
            context.sendBroadcast(intent);
        }
    }

    void b(Context context, String str) {
        String strE;
        HashMap map = new HashMap();
        String strB = b("AppsFlyerKey");
        if (strB == null) {
            com.appsflyer.c.d("[registerUninstall] AppsFlyer's SDK cannot send any event without providing DevKey.");
            return;
        }
        PackageManager packageManager = context.getPackageManager();
        String packageName = context.getPackageName();
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 0);
            map.put("app_version_code", Integer.toString(packageInfo.versionCode));
            map.put("app_version_name", packageInfo.versionName);
            map.put("app_name", packageManager.getApplicationLabel(packageInfo.applicationInfo).toString());
            map.put("installDate", a(c("yyyy-MM-dd_HHmmssZ"), packageInfo.firstInstallTime));
        } catch (Throwable th) {
            com.appsflyer.c.a("Exception while collecting application version info.", th);
        }
        try {
            String strP = p(context);
            map.put("network", strP);
            if ("MOBILE".equals(strP)) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                    map.put("operator", telephonyManager.getSimOperatorName());
                    map.put("carrier", telephonyManager.getNetworkOperatorName());
                } catch (Throwable th2) {
                    com.appsflyer.c.a("Exception while collecting network operator/carrier.", th2);
                }
            }
        } catch (Throwable th3) {
            com.appsflyer.c.a("Exception while collecting network info. ", th3);
        }
        String strK = k();
        if (strK != null) {
            map.put("appUserId", strK);
        }
        try {
            map.put("model", Build.MODEL);
            map.put("brand", Build.BRAND);
        } catch (Throwable th4) {
            com.appsflyer.c.a("Exception while collecting device brand and model.", th4);
        }
        if (g.a().b("collectFingerPrint", true) && (strE = e()) != null) {
            map.put("deviceFingerPrintId", strE);
        }
        if (g.a().b("deviceTrackingDisabled", false)) {
            map.put("deviceTrackingDisabled", "true");
        }
        q qVarA = m.a(context.getContentResolver());
        if (qVarA != null) {
            map.put("amazon_aid", qVarA.a());
            map.put("amazon_aid_limit", String.valueOf(qVarA.b()));
        }
        String strA = g.a().a("advertiserId");
        if (strA != null) {
            map.put("advertiserId", strA);
        }
        map.put("devkey", strB);
        map.put("uid", w.a((WeakReference<Context>) new WeakReference(context)));
        map.put("af_gcm_token", str);
        map.put("launch_counter", Integer.toString(a(context.getSharedPreferences("appsflyer-data", 0), "appsFlyerCount", false)));
        map.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
        String strB2 = b(new WeakReference<>(context));
        if (strB2 != null) {
            map.put("channel", strB2);
        }
        try {
            s sVar = new s(context);
            sVar.f2242a = map;
            sVar.execute(l.b(e) + packageName);
        } catch (Throwable th5) {
            com.appsflyer.c.a(th5.getMessage(), th5);
        }
    }

    private static void c(Context context, String str) {
        Intent intent = new Intent("com.appsflyer.testIntgrationBroadcast");
        intent.putExtra("params", str);
        context.sendBroadcast(intent);
    }

    public void c(boolean z) {
        y.a().a("setDeviceTrackingDisabled", String.valueOf(z));
        g.a().a("deviceTrackingDisabled", z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> g(Context context) throws r {
        String string = context.getSharedPreferences("appsflyer-data", 0).getString("attributionId", null);
        if (string != null && string.length() > 0) {
            return d(string);
        }
        throw new r();
    }

    public void a(Context context, com.appsflyer.d dVar) {
        y.a().a("registerConversionListener", new String[0]);
        b(context, dVar);
    }

    private void b(Context context, com.appsflyer.d dVar) {
        if (dVar != null) {
            p = dVar;
        }
    }

    private Map<String, String> d(Context context, String str) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        String[] strArrSplit = str.split("&");
        int length = strArrSplit.length;
        int i = 0;
        boolean z = false;
        while (i < length) {
            String str2 = strArrSplit[i];
            int iIndexOf = str2.indexOf("=");
            String strSubstring = iIndexOf > 0 ? str2.substring(0, iIndexOf) : str2;
            if (!linkedHashMap.containsKey(strSubstring)) {
                if (strSubstring.equals("c")) {
                    strSubstring = "campaign";
                } else if (strSubstring.equals("pid")) {
                    strSubstring = "media_source";
                } else if (strSubstring.equals("af_prt")) {
                    z = true;
                    strSubstring = "agency";
                }
                linkedHashMap.put(strSubstring, "");
            }
            boolean z2 = z;
            linkedHashMap.put(strSubstring, (iIndexOf <= 0 || str2.length() <= iIndexOf + 1) ? null : str2.substring(iIndexOf + 1));
            i++;
            z = z2;
        }
        try {
            if (!linkedHashMap.containsKey("install_time")) {
                linkedHashMap.put("install_time", a(c("yyyy-MM-dd HH:mm:ss"), context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime));
            }
        } catch (Exception e2) {
            com.appsflyer.c.a("Could not fetch install time. ", e2);
        }
        if (!linkedHashMap.containsKey("af_status")) {
            linkedHashMap.put("af_status", "Non-organic");
        }
        if (z) {
            linkedHashMap.remove("media_source");
        }
        return linkedHashMap;
    }

    private String a(SimpleDateFormat simpleDateFormat, long j2) {
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(new Date(j2));
    }

    private SimpleDateFormat c(String str) {
        return new SimpleDateFormat(str, Locale.US);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> d(String str) {
        HashMap map = new HashMap();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!m.contains(next)) {
                    String string = jSONObject.getString(next);
                    if (!TextUtils.isEmpty(string) && !"null".equals(string)) {
                        map.put(next, string);
                    }
                }
            }
            return map;
        } catch (JSONException e2) {
            com.appsflyer.c.a(e2.getMessage(), e2);
            return null;
        }
    }

    void a(Context context, String str, String str2, String str3, String str4, boolean z) {
        if (str2 == null) {
            if (g.a().b("launchProtectEnabled", true)) {
                if (d()) {
                    return;
                }
            } else {
                com.appsflyer.c.c("Allowing multiple launches within a 5 second time window.");
            }
            this.k = System.currentTimeMillis();
        }
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = com.appsflyer.a.a().c();
        a(scheduledThreadPoolExecutorC, new c(new WeakReference(context), str, str2, str3, str4, z, scheduledThreadPoolExecutorC, false), 150L, TimeUnit.MILLISECONDS);
    }

    boolean d() {
        if (this.k > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
            SimpleDateFormat simpleDateFormatC = c("yyyy/MM/dd HH:mm:ss.SSS Z");
            String strA = a(simpleDateFormatC, this.k);
            String strA2 = a(simpleDateFormatC, this.l);
            if (jCurrentTimeMillis < this.o) {
                com.appsflyer.c.c(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nThis launch is blocked: %s ms < %s ms", strA, strA2, Long.valueOf(jCurrentTimeMillis), Long.valueOf(this.o)));
                return true;
            }
            com.appsflyer.c.c(String.format(Locale.US, "Last Launch attempt: %s;\nLast successful Launch event: %s;\nSending launch (+%s ms)", strA, strA2, Long.valueOf(jCurrentTimeMillis)));
        } else {
            com.appsflyer.c.c("Sending first launch for this session!");
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void e(Context context, String str) {
        boolean z = true;
        String str2 = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        if (str != null && str.length() > 5) {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = com.appsflyer.a.a().c();
            a(scheduledThreadPoolExecutorC, new c(new WeakReference(context), str2, objArr3 == true ? 1 : 0, objArr2 == true ? 1 : 0, str, z, scheduledThreadPoolExecutorC, z), 5L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2, String str3, String str4, boolean z, boolean z2) throws Throwable {
        String strB;
        if (context == null) {
            com.appsflyer.c.b("sendTrackingWithEvent - got null context. skipping event/launch.");
            return;
        }
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        g.a().a(sharedPreferences);
        com.appsflyer.c.c("sendTrackingWithEvent from activity: " + context.getClass().getName());
        boolean z3 = str2 == null;
        Map<String, Object> mapA = a(context, str, str2, str3, str4, z, sharedPreferences, z3);
        String str5 = (String) mapA.get("appsflyerKey");
        if (str5 == null || str5.length() == 0) {
            com.appsflyer.c.b("Not sending data yet, waiting for dev key");
            return;
        }
        com.appsflyer.c.c("AppsFlyerLib.sendTrackingWithEvent");
        if (z3) {
            if (z2) {
                strB = l.b(f2192b);
            } else {
                strB = l.b(f2193c);
            }
        } else {
            strB = l.b(f2194d);
        }
        new e(strB + context.getPackageName(), mapA, context.getApplicationContext(), z3).run();
    }

    Map<String, Object> a(Context context, String str, String str2, String str3, String str4, boolean z, SharedPreferences sharedPreferences, boolean z2) {
        Object objA;
        n nVarA;
        Object objE;
        Map<String, Object> map = new HashMap<>();
        m.a(context, map);
        map.put("af_timestamp", Long.toString(new Date().getTime()));
        try {
            a("collect data for server", "", context);
            com.appsflyer.c.c("******* sendTrackingWithEvent: " + (z2 ? "Launch" : str2));
            a("********* sendTrackingWithEvent: ", z2 ? "Launch" : str2, context);
            a(context, "AppsFlyer_4.8.3", "EVENT_CREATED_WITH_NAME", z2 ? "Launch" : str2);
            com.appsflyer.a.a.a().a(context);
            try {
                List listAsList = Arrays.asList(context.getPackageManager().getPackageInfo(context.getPackageName(), RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT).requestedPermissions);
                if (!listAsList.contains("android.permission.INTERNET")) {
                    com.appsflyer.c.d("Permission android.permission.INTERNET is missing in the AndroidManifest.xml");
                    a(context, (String) null, "PERMISSION_INTERNET_MISSING", (String) null);
                }
                if (!listAsList.contains("android.permission.ACCESS_NETWORK_STATE")) {
                    com.appsflyer.c.d("Permission android.permission.ACCESS_NETWORK_STATE is missing in the AndroidManifest.xml");
                }
                if (!listAsList.contains("android.permission.ACCESS_WIFI_STATE")) {
                    com.appsflyer.c.d("Permission android.permission.ACCESS_WIFI_STATE is missing in the AndroidManifest.xml");
                }
            } catch (Exception e2) {
                com.appsflyer.c.a("Exception while validation permissions. ", e2);
            }
            if (z) {
                map.put("af_events_api", "1");
            }
            map.put("brand", Build.BRAND);
            map.put("device", Build.DEVICE);
            map.put("product", Build.PRODUCT);
            map.put("sdk", Integer.toString(Build.VERSION.SDK_INT));
            map.put("model", Build.MODEL);
            map.put("deviceType", Build.TYPE);
            if (z2) {
                if (j(context)) {
                    if (!g.a().f()) {
                        map.put("af_sdks", m());
                        map.put("batteryLevel", String.valueOf(c(context)));
                    }
                    f(context);
                }
                map.put("timepassedsincelastlaunch", Long.toString(a(context, true)));
                a(map);
            } else {
                a(context, map, str2, str3);
            }
            Object objB = b("KSAppsFlyerId");
            String strB = b("KSAppsFlyerRICounter");
            if (objB != null && strB != null && Integer.valueOf(strB).intValue() > 0) {
                map.put("reinstallCounter", strB);
                map.put("originalAppsflyerId", objB);
            }
            Object objB2 = b("additionalCustomData");
            if (objB2 != null) {
                map.put("customData", objB2);
            }
            try {
                Object installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                if (installerPackageName != null) {
                    map.put("installer_package", installerPackageName);
                }
            } catch (Exception e3) {
                com.appsflyer.c.a("Exception while getting the app's installer package. ", e3);
            }
            String strA = g.a().a("sdkExtension");
            if (strA != null && strA.length() > 0) {
                map.put("sdkExtension", strA);
            }
            String strB2 = b(new WeakReference<>(context));
            String strF = f(context, strB2);
            if (strF != null) {
                map.put("channel", strF);
            }
            if ((strF != null && !strF.equals(strB2)) || (strF == null && strB2 != null)) {
                map.put("af_latestchannel", strB2);
            }
            String strK = k(context);
            if (strK != null) {
                map.put("af_installstore", strK.toLowerCase());
            }
            String strN = n(context);
            if (strN != null) {
                map.put("af_preinstall_name", strN.toLowerCase());
            }
            String strL = l(context);
            if (strL != null) {
                map.put("af_currentstore", strL.toLowerCase());
            }
            if (str != null && str.length() >= 0) {
                map.put("appsflyerKey", str);
            } else {
                String strB3 = b("AppsFlyerKey");
                if (strB3 != null && strB3.length() >= 0) {
                    map.put("appsflyerKey", strB3);
                } else {
                    com.appsflyer.c.c("AppsFlyer dev key is missing!!! Please use  AppsFlyerLib.getInstance().setAppsFlyerKey(...) to set it. ");
                    a(context, "AppsFlyer_4.8.3", "DEV_KEY_MISSING", (String) null);
                    com.appsflyer.c.c("AppsFlyer will not track this event.");
                    return null;
                }
            }
            Object objK = k();
            if (objK != null) {
                map.put("appUserId", objK);
            }
            Object objA2 = g.a().a("userEmails");
            if (objA2 != null) {
                map.put("user_emails", objA2);
            } else {
                String strB4 = b("userEmail");
                if (strB4 != null) {
                    map.put("sha1_el", v.a(strB4));
                }
            }
            if (str2 != null) {
                map.put("eventName", str2);
                if (str3 != null) {
                    map.put("eventValue", str3);
                }
            }
            if (l() != null) {
                map.put("appid", b("appid"));
            }
            String strB5 = b("currencyCode");
            if (strB5 != null) {
                if (strB5.length() != 3) {
                    com.appsflyer.c.d("WARNING: currency code should be 3 characters!!! '" + strB5 + "' is not a legal value.");
                }
                map.put("currency", strB5);
            }
            Object objB3 = b("IS_UPDATE");
            if (objB3 != null) {
                map.put("isUpdate", objB3);
            }
            map.put("af_preinstalled", Boolean.toString(b(context)));
            if (g.a().b("collectFacebookAttrId", true)) {
                try {
                    context.getPackageManager().getApplicationInfo("com.facebook.katana", 0);
                    objA = a(context.getContentResolver());
                } catch (PackageManager.NameNotFoundException e4) {
                    objA = null;
                    com.appsflyer.c.d("Exception while collecting facebook's attribution ID. ");
                } catch (Throwable th) {
                    com.appsflyer.c.a("Exception while collecting facebook's attribution ID. ", th);
                    objA = null;
                }
                if (objA != null) {
                    map.put("fb", objA);
                }
            }
            a(context, map);
            try {
                Object objA3 = w.a((WeakReference<Context>) new WeakReference(context));
                if (objA3 != null) {
                    map.put("uid", objA3);
                }
            } catch (Exception e5) {
                com.appsflyer.c.a("ERROR: could not get uid " + e5.getMessage(), e5);
            }
            try {
                map.put("lang", Locale.getDefault().getDisplayLanguage());
            } catch (Exception e6) {
                com.appsflyer.c.a("Exception while collecting display language name. ", e6);
            }
            try {
                map.put("lang_code", Locale.getDefault().getLanguage());
            } catch (Exception e7) {
                com.appsflyer.c.a("Exception while collecting display language code. ", e7);
            }
            try {
                map.put("country", Locale.getDefault().getCountry());
            } catch (Exception e8) {
                com.appsflyer.c.a("Exception while collecting country name. ", e8);
            }
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                map.put("operator", telephonyManager.getSimOperatorName());
                map.put("carrier", telephonyManager.getNetworkOperatorName());
            } catch (Exception e9) {
                com.appsflyer.c.a("Exception while collecting network operator/carrier.  ", e9);
            }
            try {
                map.put("network", p(context));
            } catch (Throwable th2) {
                com.appsflyer.c.a("Exception while collecting network info. ", th2);
            }
            if (g.a().b("collectFingerPrint", true) && (objE = e()) != null) {
                map.put("deviceFingerPrintId", objE);
            }
            map.put("platformextension", this.C.a());
            c(map);
            SimpleDateFormat simpleDateFormatC = c("yyyy-MM-dd_HHmmssZ");
            if (Build.VERSION.SDK_INT >= 9) {
                try {
                    map.put("installDate", a(simpleDateFormatC, context.getPackageManager().getPackageInfo(context.getPackageName(), 0).firstInstallTime));
                } catch (Exception e10) {
                    com.appsflyer.c.a("Exception while collecting install date. ", e10);
                }
            }
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                if (packageInfo.versionCode > sharedPreferences.getInt("versionCode", 0)) {
                    a(context, "appsflyerConversionDataRequestRetries", 0);
                    a(context, "versionCode", packageInfo.versionCode);
                }
                map.put("app_version_code", Integer.toString(packageInfo.versionCode));
                map.put("app_version_name", packageInfo.versionName);
                if (Build.VERSION.SDK_INT >= 9) {
                    long j2 = packageInfo.firstInstallTime;
                    long j3 = packageInfo.lastUpdateTime;
                    map.put("date1", a(simpleDateFormatC, j2));
                    map.put("date2", a(simpleDateFormatC, j3));
                    map.put("firstLaunchDate", a(simpleDateFormatC, context));
                }
            } catch (Throwable th3) {
                com.appsflyer.c.a("Exception while collecting app version data ", th3);
            }
            if (str4.length() > 0) {
                map.put("referrer", str4);
            }
            String string = sharedPreferences.getString("attributionId", null);
            if (string != null && string.length() > 0) {
                map.put("installAttribution", string);
            }
            Object string2 = sharedPreferences.getString("extraReferrers", null);
            if (string2 != null) {
                map.put("extraReferrers", string2);
            }
            String strB6 = b("afUninstallToken");
            if (strB6 != null && (nVarA = n.a(strB6)) != null) {
                map.put("af_gcm_token", nVarA.a());
            }
            this.B = m.d(context);
            com.appsflyer.c.b("didConfigureTokenRefreshService=" + this.B);
            if (!this.B) {
                map.put("tokenRefreshConfigured", false);
            }
            if (z2) {
                if (this.A != null) {
                    JSONObject jSONObject = new JSONObject(this.A);
                    jSONObject.put("isPush", "true");
                    map.put("af_deeplink", jSONObject.toString());
                }
                this.A = null;
            }
            if (z2 && (context instanceof Activity)) {
                Uri uriH = h(context);
                if (uriH != null) {
                    a(context, map, uriH);
                } else if (this.x != null) {
                    a(context, map, this.x);
                }
            }
            if (this.z) {
                map.put("testAppMode_retargeting", "true");
                c(context, new JSONObject(map).toString());
                com.appsflyer.c.c("Sent retargeting params to test app");
            }
            if (d(context)) {
                map.put("testAppMode", "true");
                c(context, new JSONObject(map).toString());
                com.appsflyer.c.c("Sent params to test app");
                j();
            }
            if (b("advertiserId") == null) {
                m.a(context, map);
                if (b("advertiserId") != null) {
                    map.put("GAID_retry", "true");
                } else {
                    map.put("GAID_retry", "false");
                }
            }
            q qVarA = m.a(context.getContentResolver());
            if (qVarA != null) {
                map.put("amazon_aid", qVarA.a());
                map.put("amazon_aid_limit", String.valueOf(qVarA.b()));
            }
            String strA2 = g.a().a(context);
            if (strA2 != null && strA2.length() > 0 && map.get("referrer") == null) {
                map.put("referrer", strA2);
            }
            boolean zEquals = "true".equals(sharedPreferences.getString("sentSuccessfully", ""));
            map.put("registeredUninstall", Boolean.valueOf(sharedPreferences.getBoolean("sentRegisterRequestToAF", false)));
            int iA = a(sharedPreferences, "appsFlyerCount", z2);
            map.put("counter", Integer.toString(iA));
            map.put("iaecounter", Integer.toString(a(sharedPreferences, "appsFlyerInAppEventCount", str2 != null)));
            if (z2 && iA == 1) {
                g.a().e();
            }
            map.put("isFirstCall", Boolean.toString(!zEquals));
            map.put("af_v", new v().a(map));
            map.put("af_v2", new v().b(map));
        } catch (Throwable th4) {
            com.appsflyer.c.a(th4.getLocalizedMessage(), th4);
        }
        return map;
    }

    private void a(Map<String, Object> map) {
        String strA = g.a().a("oneLinkSlug");
        if (strA != null) {
            map.put("onelink_id", strA);
            map.put("ol_ver", g.a().a("onelinkVersion"));
        }
    }

    private Uri h(Context context) {
        Intent intent = ((Activity) context).getIntent();
        if (intent == null || !"android.intent.action.VIEW".equals(intent.getAction())) {
            return null;
        }
        return intent.getData();
    }

    private void a(Context context, Map<String, Object> map, Uri uri) {
        Map<String, String> map2;
        map.put("af_deeplink", uri.toString());
        if (uri.getQueryParameter("af_deeplink") != null) {
            this.z = "AppsFlyer_Test".equals(uri.getQueryParameter("media_source")) && Boolean.parseBoolean(uri.getQueryParameter("is_retargeting"));
            map2 = d(context, uri.getQuery());
            a(map2, "path", uri.getPath());
            a(map2, "scheme", uri.getScheme());
            a(map2, "host", uri.getHost());
        } else {
            map2 = new HashMap<>();
            map2.put("link", uri.toString());
        }
        WeakReference<Context> weakReference = new WeakReference<>(context);
        u uVar = new u(uri, this);
        uVar.a(new k.a());
        if (uVar.c()) {
            uVar.a(a(map2, weakReference));
            com.appsflyer.a.a().b().execute(uVar);
        } else {
            b(map2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Map<String, String> map) {
        if (p != null) {
            try {
                p.b(map);
            } catch (Throwable th) {
                com.appsflyer.c.a(th.getLocalizedMessage(), th);
            }
        }
    }

    private u.a a(final Map<String, String> map, final WeakReference<Context> weakReference) {
        return new u.a() { // from class: com.appsflyer.f.2
            @Override // com.appsflyer.u.a
            public final void a(Map<String, String> map2) {
                b(map2);
                c(map);
                f.this.b((Map<String, String>) map);
            }

            @Override // com.appsflyer.u.a
            public final void a(String str) {
                if (f.p != null) {
                    c(map);
                    f.p.b(str);
                }
            }

            private void b(Map<String, String> map2) {
                for (String str : map2.keySet()) {
                    map.put(str, map2.get(str));
                }
            }

            private void c(Map<String, String> map2) {
                if (weakReference.get() != null) {
                    f.this.a((Context) weakReference.get(), "deeplinkAttribution", new JSONObject(map2).toString());
                }
            }
        };
    }

    private void a(Map<String, String> map, String str, String str2) {
        if (str2 != null) {
            map.put(str, str2);
        }
    }

    private String m() {
        return new StringBuilder().append(e("com.tune.Tune")).append(e("com.adjust.sdk.Adjust")).append(e("com.kochava.android.tracker.Feature")).append(e("io.branch.referral.Branch")).append(e("com.apsalar.sdk.Apsalar")).append(e("com.localytics.android.Localytics")).append(e("com.tenjin.android.TenjinSDK")).append(e("place holder for TD")).append(e("it.partytrack.sdk.Track")).append(e("jp.appAdForce.android.LtvManager")).toString();
    }

    private int e(String str) {
        return this.C.a(str) ? 1 : 0;
    }

    private void a(Context context, Map<String, Object> map, String str, String str2) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        try {
            String string = sharedPreferences.getString("prev_event_name", null);
            if (string != null) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("prev_event_timestamp", new StringBuilder().append(sharedPreferences.getLong("prev_event_timestamp", -1L)).toString());
                jSONObject.put("prev_event_value", sharedPreferences.getString("prev_event_value", null));
                jSONObject.put("prev_event_name", string);
                map.put("prev_event", jSONObject.toString());
            }
            editorEdit.putString("prev_event_name", str);
            editorEdit.putString("prev_event_value", str2);
            editorEdit.putLong("prev_event_timestamp", System.currentTimeMillis());
            a(editorEdit);
        } catch (Exception e2) {
            com.appsflyer.c.a("Error while processing previous event.", e2);
        }
    }

    boolean a(Context context) {
        try {
            if (com.google.android.gms.common.e.a().a(context) != 0) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            com.appsflyer.c.a("WARNING:  Google play services is unavailable. ", th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(android.content.Context r9, java.util.Map<java.lang.String, java.lang.Object> r10) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a(android.content.Context, java.util.Map):void");
    }

    private boolean i(Context context) {
        return Build.VERSION.SDK_INT < 19 || !a(context);
    }

    private boolean j(Context context) {
        return !context.getSharedPreferences("appsflyer-data", 0).contains("appsFlyerCount");
    }

    private String k(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("INSTALL_STORE")) {
            return sharedPreferences.getString("INSTALL_STORE", null);
        }
        String strL = j(context) ? l(context) : null;
        a(context, "INSTALL_STORE", strL);
        return strL;
    }

    private String l(Context context) {
        return a(new WeakReference<>(context), "AF_STORE");
    }

    String a(String str) {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class).invoke(null, str);
        } catch (Throwable th) {
            com.appsflyer.c.a(th.getMessage(), th);
            return null;
        }
    }

    private String a(WeakReference<Context> weakReference, String str) {
        if (weakReference.get() == null) {
            return null;
        }
        return a(str, weakReference.get().getPackageManager(), weakReference.get().getPackageName());
    }

    private String a(String str, PackageManager packageManager, String str2) {
        Object obj;
        try {
            Bundle bundle = packageManager.getApplicationInfo(str2, 128).metaData;
            if (bundle == null || (obj = bundle.get(str)) == null) {
                return null;
            }
            return obj.toString();
        } catch (Throwable th) {
            com.appsflyer.c.a("Could not find " + str + " value in the manifest", th);
            return null;
        }
    }

    private String m(Context context) {
        String strA;
        File fileF = f(a("ro.appsflyer.preinstall.path"));
        if (a(fileF)) {
            fileF = f(a("AF_PRE_INSTALL_PATH", context.getPackageManager(), context.getPackageName()));
        }
        if (a(fileF)) {
            fileF = f("/data/local/tmp/pre_install.appsflyer");
        }
        if (a(fileF)) {
            fileF = f("/etc/pre_install.appsflyer");
        }
        if (a(fileF) || (strA = a(fileF, context.getPackageName())) == null) {
            return null;
        }
        return strA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String a(java.io.File r6, java.lang.String r7) throws java.lang.Throwable {
        /*
            r5 = this;
            r0 = 0
            java.util.Properties r2 = new java.util.Properties     // Catch: java.io.FileNotFoundException -> L24 java.lang.Throwable -> L4b java.lang.Throwable -> L63
            r2.<init>()     // Catch: java.io.FileNotFoundException -> L24 java.lang.Throwable -> L4b java.lang.Throwable -> L63
            java.io.FileReader r1 = new java.io.FileReader     // Catch: java.io.FileNotFoundException -> L24 java.lang.Throwable -> L4b java.lang.Throwable -> L63
            r1.<init>(r6)     // Catch: java.io.FileNotFoundException -> L24 java.lang.Throwable -> L4b java.lang.Throwable -> L63
            r2.load(r1)     // Catch: java.lang.Throwable -> L76 java.lang.Throwable -> L7b java.io.FileNotFoundException -> L80
            java.lang.String r3 = "Found PreInstall property!"
            com.appsflyer.c.c(r3)     // Catch: java.lang.Throwable -> L76 java.lang.Throwable -> L7b java.io.FileNotFoundException -> L80
            java.lang.String r0 = r2.getProperty(r7)     // Catch: java.lang.Throwable -> L76 java.lang.Throwable -> L7b java.io.FileNotFoundException -> L80
            r1.close()     // Catch: java.lang.Throwable -> L1b
        L1a:
            return r0
        L1b:
            r1 = move-exception
            java.lang.String r2 = r1.getMessage()
            com.appsflyer.c.a(r2, r1)
            goto L1a
        L24:
            r1 = move-exception
            r1 = r0
        L26:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = "PreInstall file wasn't found: "
            r2.<init>(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r3 = r6.getAbsolutePath()     // Catch: java.lang.Throwable -> L76
            java.lang.StringBuilder r2 = r2.append(r3)     // Catch: java.lang.Throwable -> L76
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Throwable -> L76
            com.appsflyer.c.b(r2)     // Catch: java.lang.Throwable -> L76
            if (r1 == 0) goto L1a
            r1.close()     // Catch: java.lang.Throwable -> L42
            goto L1a
        L42:
            r1 = move-exception
            java.lang.String r2 = r1.getMessage()
            com.appsflyer.c.a(r2, r1)
            goto L1a
        L4b:
            r1 = move-exception
            r2 = r0
        L4d:
            java.lang.String r3 = r1.getMessage()     // Catch: java.lang.Throwable -> L78
            com.appsflyer.c.a(r3, r1)     // Catch: java.lang.Throwable -> L78
            if (r2 == 0) goto L1a
            r2.close()     // Catch: java.lang.Throwable -> L5a
            goto L1a
        L5a:
            r1 = move-exception
            java.lang.String r2 = r1.getMessage()
            com.appsflyer.c.a(r2, r1)
            goto L1a
        L63:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L67:
            if (r1 == 0) goto L6c
            r1.close()     // Catch: java.lang.Throwable -> L6d
        L6c:
            throw r0
        L6d:
            r1 = move-exception
            java.lang.String r2 = r1.getMessage()
            com.appsflyer.c.a(r2, r1)
            goto L6c
        L76:
            r0 = move-exception
            goto L67
        L78:
            r0 = move-exception
            r1 = r2
            goto L67
        L7b:
            r2 = move-exception
            r4 = r2
            r2 = r1
            r1 = r4
            goto L4d
        L80:
            r2 = move-exception
            goto L26
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a(java.io.File, java.lang.String):java.lang.String");
    }

    private boolean a(File file) {
        return file == null || !file.exists();
    }

    private File f(String str) {
        if (str != null) {
            try {
                if (str.trim().length() > 0) {
                    return new File(str.trim());
                }
            } catch (Throwable th) {
                com.appsflyer.c.a(th.getMessage(), th);
            }
        }
        return null;
    }

    private String n(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        String strB = b("preInstallName");
        if (strB == null) {
            if (sharedPreferences.contains("preInstallName")) {
                strB = sharedPreferences.getString("preInstallName", null);
            } else {
                if (j(context) && (strB = m(context)) == null) {
                    strB = a(new WeakReference<>(context), "AF_PRE_INSTALL_NAME");
                }
                if (strB != null) {
                    a(context, "preInstallName", strB);
                }
            }
            if (strB != null) {
                a("preInstallName", strB);
            }
        }
        return strB;
    }

    private void o(Context context) {
        if (!this.q && System.currentTimeMillis() - this.r >= 15000 && this.s == null) {
            this.s = com.appsflyer.a.a().c();
            a(this.s, new b(context), 1L, TimeUnit.SECONDS);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(WeakReference<Context> weakReference) {
        String strA = g.a().a("channel");
        if (strA == null) {
            return a(weakReference, "CHANNEL");
        }
        return strA;
    }

    public boolean b(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).flags & 1) != 0;
        } catch (PackageManager.NameNotFoundException e2) {
            com.appsflyer.c.a("Could not check if app is pre installed", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(Context context, String str) throws PackageManager.NameNotFoundException {
        SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
        if (sharedPreferences.contains("CACHED_CHANNEL")) {
            return sharedPreferences.getString("CACHED_CHANNEL", null);
        }
        a(context, "CACHED_CHANNEL", str);
        return str;
    }

    private String a(SimpleDateFormat simpleDateFormat, Context context) {
        String string = context.getSharedPreferences("appsflyer-data", 0).getString("appsFlyerFirstInstall", null);
        if (string == null) {
            if (j(context)) {
                com.appsflyer.c.b("AppsFlyer: first launch detected");
                string = simpleDateFormat.format(new Date());
            } else {
                string = "";
            }
            a(context, "appsFlyerFirstInstall", string);
        }
        com.appsflyer.c.c("AppsFlyer: first launch date: " + string);
        return string;
    }

    private void c(Map<String, Object> map) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cpu_abi", a("ro.product.cpu.abi"));
            jSONObject.put("cpu_abi2", a("ro.product.cpu.abi2"));
            jSONObject.put("arch", a("os.arch"));
            jSONObject.put("build_display_id", a("ro.build.display.id"));
        } catch (JSONException e2) {
            com.appsflyer.c.a(e2.getMessage(), e2);
        }
        map.put("deviceData", jSONObject);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String a(android.content.ContentResolver r7) {
        /*
            r6 = this;
            r3 = 0
            r0 = 1
            java.lang.String[] r2 = new java.lang.String[r0]
            r0 = 0
            java.lang.String r1 = "aid"
            r2[r0] = r1
            java.lang.String r0 = "content://com.facebook.katana.provider.AttributionIdProvider"
            android.net.Uri r1 = android.net.Uri.parse(r0)
            r0 = r7
            r4 = r3
            r5 = r3
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)
            if (r1 == 0) goto L1e
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L5b
            if (r0 != 0) goto L2d
        L1e:
            if (r1 == 0) goto L23
            r1.close()     // Catch: java.lang.Exception -> L24
        L23:
            return r3
        L24:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            com.appsflyer.c.a(r1, r0)
            goto L23
        L2d:
            java.lang.String r0 = "aid"
            int r0 = r1.getColumnIndex(r0)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L5b
            java.lang.String r3 = r1.getString(r0)     // Catch: java.lang.Exception -> L46 java.lang.Throwable -> L5b
            if (r1 == 0) goto L23
            r1.close()     // Catch: java.lang.Exception -> L3d
            goto L23
        L3d:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            com.appsflyer.c.a(r1, r0)
            goto L23
        L46:
            r0 = move-exception
            java.lang.String r2 = "Could not collect cursor attribution. "
            com.appsflyer.c.a(r2, r0)     // Catch: java.lang.Throwable -> L5b
            if (r1 == 0) goto L23
            r1.close()     // Catch: java.lang.Exception -> L52
            goto L23
        L52:
            r0 = move-exception
            java.lang.String r1 = r0.getMessage()
            com.appsflyer.c.a(r1, r0)
            goto L23
        L5b:
            r0 = move-exception
            if (r1 == 0) goto L61
            r1.close()     // Catch: java.lang.Exception -> L62
        L61:
            throw r0
        L62:
            r1 = move-exception
            java.lang.String r2 = r1.getMessage()
            com.appsflyer.c.a(r2, r1)
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a(android.content.ContentResolver):java.lang.String");
    }

    private int a(SharedPreferences sharedPreferences, String str, boolean z) {
        int i = sharedPreferences.getInt(str, 0);
        if (z) {
            i++;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt(str, i);
            a(editorEdit);
        }
        if (y.a().f()) {
            y.a().a(String.valueOf(i));
        }
        return i;
    }

    private long a(Context context, boolean z) {
        long j2 = context.getSharedPreferences("appsflyer-data", 0).getLong("AppsFlyerTimePassedSincePrevLaunch", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z) {
            a(context, "AppsFlyerTimePassedSincePrevLaunch", jCurrentTimeMillis);
        }
        if (j2 <= 0) {
            return -1L;
        }
        return (jCurrentTimeMillis - j2) / 1000;
    }

    @Deprecated
    String e() {
        String str = "35" + (Build.BOARD.length() % 10) + (Build.BRAND.length() % 10) + (Build.CPU_ABI.length() % 10) + (Build.DEVICE.length() % 10) + (Build.MANUFACTURER.length() % 10) + (Build.MODEL.length() % 10) + (Build.PRODUCT.length() % 10);
        try {
            return new UUID(str.hashCode(), Build.class.getField("SERIAL").get(null).toString().hashCode()).toString();
        } catch (Exception e2) {
            com.appsflyer.c.a(e2.getMessage(), e2);
            return new UUID(str.hashCode(), "serial".hashCode()).toString();
        }
    }

    private String p(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() == 0) {
                return "MOBILE";
            }
        }
        return "unknown";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, String str3, WeakReference<Context> weakReference, String str4, boolean z) throws IOException {
        URL url = new URL(str);
        com.appsflyer.c.c("url: " + url.toString());
        a("call server.", "\n" + url.toString() + "\nPOST:" + str2, weakReference.get());
        m.b("data: " + str2);
        a(weakReference.get(), "AppsFlyer_4.8.3", "EVENT_DATA", str2);
        try {
            a(url, str2, str3, weakReference, str4, z);
        } catch (IOException e2) {
            com.appsflyer.c.a("Exception in sendRequestToServer. ", e2);
            if (g.a().b("useHttpFallback", false)) {
                a("https failed: " + e2.getLocalizedMessage(), "", weakReference.get());
                a(new URL(str.replace("https:", "http:")), str2, str3, weakReference, str4, z);
            } else {
                com.appsflyer.c.c("failed to send requeset to server. " + e2.getLocalizedMessage());
                a(weakReference.get(), "AppsFlyer_4.8.3", "ERROR", e2.getLocalizedMessage());
                throw e2;
            }
        }
    }

    private void a(URL url, String str, String str2, WeakReference<Context> weakReference, String str3, boolean z) throws IOException {
        OutputStreamWriter outputStreamWriter;
        Context context = weakReference.get();
        boolean z2 = z && p != null;
        HttpURLConnection httpURLConnection = null;
        try {
            y.a().a(url.toString(), str);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod(Constants.HTTP_POST);
            httpURLConnection.setRequestProperty("Content-Length", new StringBuilder().append(str.getBytes().length).toString());
            httpURLConnection.setRequestProperty("Content-Type", "application/json");
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setDoOutput(true);
            try {
                outputStreamWriter = new OutputStreamWriter(httpURLConnection.getOutputStream(), Constants.UTF8_NAME);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = null;
            }
            try {
                outputStreamWriter.write(str);
                outputStreamWriter.close();
                int responseCode = httpURLConnection.getResponseCode();
                String strA = a(httpURLConnection);
                y.a().a(url.toString(), responseCode, strA);
                com.appsflyer.c.c("response code: " + responseCode);
                a(context, "AppsFlyer_4.8.3", "SERVER_RESPONSE_CODE", Integer.toString(responseCode));
                a("response from server. status=", Integer.toString(responseCode), context);
                SharedPreferences sharedPreferences = context.getSharedPreferences("appsflyer-data", 0);
                if (responseCode == 200) {
                    if (weakReference.get() != null && z) {
                        this.l = System.currentTimeMillis();
                    }
                    String strB = b("afUninstallToken");
                    if (strB != null) {
                        com.appsflyer.c.b("Uninstall Token exists: " + strB);
                        if (!sharedPreferences.getBoolean("sentRegisterRequestToAF", false)) {
                            com.appsflyer.c.b("Resending Uninstall token to AF servers: " + strB);
                            m.a(context, new n(strB));
                        }
                    } else if (b("gcmProjectNumber") != null) {
                        com.appsflyer.c.b("GCM Project number exists. Fetching token and sending to AF servers");
                        m.a((WeakReference<Context>) new WeakReference(context));
                    }
                    if (this.x != null) {
                        this.x = null;
                    }
                    if (str3 != null) {
                        com.appsflyer.a.a.a().a(str3, context);
                    }
                    if (weakReference.get() != null && str3 == null) {
                        a(context, "sentSuccessfully", "true");
                        o(context);
                    }
                    l.a(strA);
                }
                int i = sharedPreferences.getInt("appsflyerConversionDataRequestRetries", 0);
                long j2 = sharedPreferences.getLong("appsflyerConversionDataCacheExpiration", 0L);
                if (j2 != 0 && System.currentTimeMillis() - j2 > 5184000000L) {
                    a(context, "attributionId", (String) null);
                    a(context, "appsflyerConversionDataCacheExpiration", 0L);
                }
                if (sharedPreferences.getString("attributionId", null) == null && str2 != null && z2 && p != null && i <= 5) {
                    ScheduledThreadPoolExecutor scheduledThreadPoolExecutorC = com.appsflyer.a.a().c();
                    a(scheduledThreadPoolExecutorC, new d(context.getApplicationContext(), str2, scheduledThreadPoolExecutorC), 10L, TimeUnit.MILLISECONDS);
                } else if (str2 == null) {
                    com.appsflyer.c.d("AppsFlyer dev key is missing.");
                } else if (z2 && p != null && sharedPreferences.getString("attributionId", null) != null && a(sharedPreferences, "appsFlyerCount", false) > 1) {
                    try {
                        Map<String, String> mapG = g(context);
                        if (mapG != null) {
                            try {
                                p.a(mapG);
                            } catch (Throwable th2) {
                                com.appsflyer.c.a(th2.getLocalizedMessage(), th2);
                            }
                        }
                    } catch (r e2) {
                        com.appsflyer.c.a(e2.getMessage(), e2);
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                if (outputStreamWriter != null) {
                    outputStreamWriter.close();
                }
                throw th;
            }
        } finally {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0012 A[Catch: RejectedExecutionException -> 0x0018, Throwable -> 0x001f, TRY_LEAVE, TryCatch #2 {RejectedExecutionException -> 0x0018, Throwable -> 0x001f, blocks: (B:3:0x0002, B:5:0x0008, B:7:0x000e, B:9:0x0012), top: B:16:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(java.util.concurrent.ScheduledExecutorService r4, java.lang.Runnable r5, long r6, java.util.concurrent.TimeUnit r8) {
        /*
            r3 = this;
            if (r4 == 0) goto L12
            boolean r0 = r4.isShutdown()     // Catch: java.util.concurrent.RejectedExecutionException -> L18 java.lang.Throwable -> L1f
            if (r0 != 0) goto L12
            boolean r0 = r4.isTerminated()     // Catch: java.util.concurrent.RejectedExecutionException -> L18 java.lang.Throwable -> L1f
            if (r0 != 0) goto L12
            r4.schedule(r5, r6, r8)     // Catch: java.util.concurrent.RejectedExecutionException -> L18 java.lang.Throwable -> L1f
        L11:
            return
        L12:
            java.lang.String r0 = "scheduler is null, shut downed or terminated"
            com.appsflyer.c.d(r0)     // Catch: java.util.concurrent.RejectedExecutionException -> L18 java.lang.Throwable -> L1f
            goto L11
        L18:
            r0 = move-exception
            java.lang.String r1 = "scheduleJob failed with RejectedExecutionException Exception"
            com.appsflyer.c.a(r1, r0)
            goto L11
        L1f:
            r0 = move-exception
            java.lang.String r1 = "scheduleJob failed with Exception"
            com.appsflyer.c.a(r1, r0)
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a(java.util.concurrent.ScheduledExecutorService, java.lang.Runnable, long, java.util.concurrent.TimeUnit):void");
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference<Context> f2206b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2207c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2208d;
        private String e;
        private String f;
        private ExecutorService g;
        private boolean h;
        private boolean i;

        private c(WeakReference<Context> weakReference, String str, String str2, String str3, String str4, boolean z, ExecutorService executorService, boolean z2) {
            this.f2206b = weakReference;
            this.f2207c = str;
            this.f2208d = str2;
            this.e = str3;
            this.f = str4;
            this.h = z;
            this.g = executorService;
            this.i = z2;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            f.this.a(this.f2206b.get(), this.f2207c, this.f2208d, this.e, this.f, this.h, this.i);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Map<String, Object> f2210a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2211b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f2213d;
        private WeakReference<Context> e;

        private e(String str, Map<String, Object> map, Context context, boolean z) {
            this.e = null;
            this.f2213d = str;
            this.f2210a = map;
            this.e = new WeakReference<>(context);
            this.f2211b = z;
        }

        @Override // java.lang.Runnable
        public final void run() throws Throwable {
            String string = null;
            try {
                String str = (String) this.f2210a.get("appsflyerKey");
                string = new JSONObject(this.f2210a).toString();
                f.this.a(this.f2213d, string, str, this.e, (String) null, this.f2211b);
            } catch (IOException e) {
                com.appsflyer.c.a("Exception while sending request to server. ", e);
                if (string != null && this.e != null && !this.f2213d.contains("&isCachedRequest=true&timeincache=")) {
                    com.appsflyer.a.a.a().a(new com.appsflyer.a.b(this.f2213d, string, "4.8.3"), this.e.get());
                    com.appsflyer.c.a(e.getMessage(), e);
                }
            } catch (Throwable th) {
                com.appsflyer.c.a(th.getMessage(), th);
            }
        }
    }

    class d extends a {
        public d(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            super(context, str, scheduledExecutorService);
        }

        @Override // com.appsflyer.f.a
        public final String a() {
            return l.b("https://api.%s/install_data/v3/");
        }

        @Override // com.appsflyer.f.a
        protected final void a(Map<String, String> map) {
            f.p.a(map);
            f.this.a(this.f2199a.get(), "appsflyerConversionDataRequestRetries", 0);
        }

        @Override // com.appsflyer.f.a
        protected final void a(String str, int i) {
            f.p.a(str);
            if (i >= 400 && i < 500) {
                f.this.a(this.f2199a.get(), "appsflyerConversionDataRequestRetries", this.f2199a.get().getSharedPreferences("appsflyer-data", 0).getInt("appsflyerConversionDataRequestRetries", 0) + 1);
            }
        }
    }

    abstract class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<Context> f2199a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2201c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ScheduledExecutorService f2202d;
        private AtomicInteger e = new AtomicInteger(0);

        public abstract String a();

        protected abstract void a(String str, int i);

        protected abstract void a(Map<String, String> map);

        a(Context context, String str, ScheduledExecutorService scheduledExecutorService) {
            this.f2199a = null;
            this.f2199a = new WeakReference<>(context);
            this.f2201c = str;
            if (scheduledExecutorService == null) {
                this.f2202d = com.appsflyer.a.a().c();
            } else {
                this.f2202d = scheduledExecutorService;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:54:0x01f4 A[Catch: all -> 0x0230, TryCatch #0 {all -> 0x0230, blocks: (B:17:0x00c4, B:19:0x00f1, B:22:0x011a, B:24:0x012a, B:26:0x0132, B:27:0x013d, B:29:0x0145, B:31:0x014d, B:59:0x020e, B:32:0x0167, B:34:0x016f, B:35:0x0189, B:37:0x0194, B:38:0x019b, B:40:0x01b9, B:42:0x01c1, B:43:0x01c7, B:70:0x023d, B:62:0x0227, B:71:0x0244, B:73:0x024a, B:74:0x025c, B:52:0x01ee, B:54:0x01f4, B:55:0x01fc), top: B:78:0x0014 }] */
        /* JADX WARN: Removed duplicated region for block: B:58:0x020a  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x0238  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 637
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a.run():void");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006d A[Catch: Throwable -> 0x008c, TRY_LEAVE, TryCatch #4 {Throwable -> 0x008c, blocks: (B:29:0x0068, B:31:0x006d), top: B:57:0x0068 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0068 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    java.lang.String a(java.net.HttpURLConnection r8) throws java.lang.Throwable {
        /*
            r7 = this;
            r1 = 0
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.io.InputStream r0 = r8.getErrorStream()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L9b
            if (r0 != 0) goto L10
            java.io.InputStream r0 = r8.getInputStream()     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L9b
        L10:
            java.io.InputStreamReader r2 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L9b
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L64 java.lang.Throwable -> L9b
            java.io.BufferedReader r3 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L8e java.lang.Throwable -> L9e
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L8e java.lang.Throwable -> L9e
        L1a:
            java.lang.String r0 = r3.readLine()     // Catch: java.lang.Throwable -> L2a java.lang.Throwable -> L93
            if (r0 == 0) goto L5b
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch: java.lang.Throwable -> L2a java.lang.Throwable -> L93
            r1 = 10
            r0.append(r1)     // Catch: java.lang.Throwable -> L2a java.lang.Throwable -> L93
            goto L1a
        L2a:
            r0 = move-exception
            r1 = r2
            r2 = r3
        L2d:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L97
            java.lang.String r5 = "Could not read connection response from: "
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L97
            java.net.URL r5 = r8.getURL()     // Catch: java.lang.Throwable -> L97
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L97
            java.lang.StringBuilder r3 = r3.append(r5)     // Catch: java.lang.Throwable -> L97
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L97
            com.appsflyer.c.a(r3, r0)     // Catch: java.lang.Throwable -> L97
            if (r2 == 0) goto L4c
            r2.close()     // Catch: java.lang.Throwable -> L99
        L4c:
            if (r1 == 0) goto L51
            r1.close()     // Catch: java.lang.Throwable -> L99
        L51:
            java.lang.String r0 = r4.toString()
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L71
            r1.<init>(r0)     // Catch: org.json.JSONException -> L71
        L5a:
            return r0
        L5b:
            r3.close()     // Catch: java.lang.Throwable -> L62
            r2.close()     // Catch: java.lang.Throwable -> L62
            goto L51
        L62:
            r0 = move-exception
            goto L51
        L64:
            r0 = move-exception
            r2 = r1
        L66:
            if (r2 == 0) goto L6b
            r2.close()     // Catch: java.lang.Throwable -> L8c
        L6b:
            if (r1 == 0) goto L70
            r1.close()     // Catch: java.lang.Throwable -> L8c
        L70:
            throw r0
        L71:
            r1 = move-exception
            org.json.JSONObject r1 = new org.json.JSONObject
            r1.<init>()
            java.lang.String r2 = "string_response"
            r1.put(r2, r0)     // Catch: org.json.JSONException -> L81
            java.lang.String r0 = r1.toString()     // Catch: org.json.JSONException -> L81
            goto L5a
        L81:
            r0 = move-exception
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            java.lang.String r0 = r0.toString()
            goto L5a
        L8c:
            r1 = move-exception
            goto L70
        L8e:
            r0 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L66
        L93:
            r0 = move-exception
            r1 = r2
            r2 = r3
            goto L66
        L97:
            r0 = move-exception
            goto L66
        L99:
            r0 = move-exception
            goto L51
        L9b:
            r0 = move-exception
            r2 = r1
            goto L2d
        L9e:
            r0 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
            goto L2d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.f.a(java.net.HttpURLConnection):java.lang.String");
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private WeakReference<Context> f2204b;

        public b(Context context) {
            this.f2204b = null;
            this.f2204b = new WeakReference<>(context);
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (!f.this.q) {
                f.this.r = System.currentTimeMillis();
                if (this.f2204b != null) {
                    f.this.q = true;
                    try {
                        String strB = f.this.b("AppsFlyerKey");
                        synchronized (this.f2204b) {
                            for (com.appsflyer.a.b bVar : com.appsflyer.a.a.a().b(this.f2204b.get())) {
                                com.appsflyer.c.c("resending request: " + bVar.c());
                                try {
                                    f.this.a(bVar.c() + "&isCachedRequest=true&timeincache=" + Long.toString((System.currentTimeMillis() - Long.parseLong(bVar.d(), 10)) / 1000), bVar.b(), strB, this.f2204b, bVar.d(), false);
                                } catch (Exception e) {
                                    com.appsflyer.c.a("Failed to resend cached request", e);
                                }
                            }
                        }
                    } catch (Exception e2) {
                        com.appsflyer.c.a("failed to check cache. ", e2);
                    } finally {
                        f.this.q = false;
                    }
                    f.this.s.shutdown();
                    f.this.s = null;
                }
            }
        }
    }

    float c(Context context) {
        try {
            Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = intentRegisterReceiver.getIntExtra("level", -1);
            int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
            if (intExtra == -1 || intExtra2 == -1) {
                return 50.0f;
            }
            return (intExtra / intExtra2) * 100.0f;
        } catch (Throwable th) {
            com.appsflyer.c.a(th.getMessage(), th);
            return 1.0f;
        }
    }

    public String f() {
        return this.i;
    }
}
