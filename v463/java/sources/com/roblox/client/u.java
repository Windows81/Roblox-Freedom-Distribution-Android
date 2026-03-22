package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.roblox.client.analytics.CrashpadHandler;
import com.roblox.client.f;
import com.roblox.client.o;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static Pattern f7517a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static SharedPreferences f7518b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f7519c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f7520d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static boolean f7521e = false;
    private static com.roblox.client.ae.c f = null;
    private static String g = null;
    private static String h = null;
    private static boolean i = false;
    private static String j = null;
    private static boolean k = false;
    private static boolean l = false;
    private static String m = null;
    private static String n = null;
    private static String o = null;
    private static boolean p = true;
    private static boolean q;

    public static String R() {
        return "AppAndroidV";
    }

    public static String U() {
        return "my/account#!/privacy";
    }

    public static String V() {
        return "my/account#!/notifications";
    }

    public static String W() {
        return "https://en.help.roblox.com/hc/en-us/articles/212459863";
    }

    public static String ab() {
        return "AndroidApp";
    }

    static String ao() {
        return "exception_reason.txt";
    }

    public static String h() {
        return "2.463.417712";
    }

    public static String s() {
        return "application/json;charset=UTF-8";
    }

    public static String v() {
        return "30096382";
    }

    static {
        a("www.roblox.com/");
        b(d.f5967a);
        q = false;
        f7518b = null;
        f7519c = "";
        f7520d = 0;
        f7521e = false;
    }

    public static void a(String str) {
        com.roblox.client.ae.k.b("roblox.config", "setBaseUrl() " + f + " => " + str);
        f = new com.roblox.client.ae.c(str);
        f7517a = Pattern.compile(X(), 2);
    }

    public static void b(String str) {
        com.roblox.client.ae.k.b("roblox.config", "setChannel() " + g + " => " + str);
        g = str == null ? null : str.trim();
    }

    public static String a() {
        return f.d();
    }

    public static String b() {
        return f.b();
    }

    public static String c() {
        return f.a();
    }

    public static String d() {
        return "https://" + f.b();
    }

    public static String e() {
        return g;
    }

    public static String f() {
        return f.c();
    }

    public static void c(String str) {
        if (str != null) {
            h = new com.roblox.client.ae.d().c(str);
        } else {
            h = null;
        }
    }

    public static SharedPreferences g() {
        return f7518b;
    }

    public static SharedPreferences a(Context context) {
        return com.roblox.client.ae.s.a(context, "prefs");
    }

    public static boolean i() {
        return k;
    }

    public static boolean j() {
        return !k;
    }

    public static boolean k() {
        return l;
    }

    public static boolean l() {
        return Build.VERSION.SDK_INT >= 29;
    }

    public static void b(Context context) {
        k = context.getResources().getBoolean(o.b.sw500dp);
        l = context.getPackageManager().hasSystemFeature("org.chromium.arc.device_management");
    }

    public static String m() {
        return h;
    }

    public static String n() {
        if (h == null) {
            return "https://api." + a();
        }
        return "https://" + h;
    }

    public static String o() {
        return "https://contacts." + a();
    }

    public static String p() {
        return "https://auth." + a();
    }

    public static String q() {
        return "https://abtesting." + a();
    }

    public static boolean r() {
        return f.a().contains(".robloxlabs.com");
    }

    public static String t() {
        return j;
    }

    public static String u() {
        String str = j;
        return (com.roblox.client.ae.l.b() || (str != null && str.toLowerCase().contains("CJVDist".toLowerCase()))) ? "CJVDist" : "GlobalDist";
    }

    public static String c(Context context) {
        return a(context, Payload.SOURCE_GOOGLE);
    }

    public static String a(Context context, String str) {
        String str2;
        String str3 = "GlobalDist";
        if ("amazon".equals(str)) {
            str2 = "AmazonAppStore";
        } else if ("tencent".equals(str)) {
            str3 = "CJVDist";
            str2 = "TencentAppStore";
        } else {
            if (!Payload.SOURCE_GOOGLE.equals(str)) {
                return null;
            }
            str2 = "GooglePlayStore";
        }
        return com.roblox.platform.i.a(context, h(), "AppleWebKit/537.36", str3, str2, j(), k());
    }

    public static String w() {
        return p() + "/v2/logout";
    }

    public static String x() {
        return n() + "users/account-info";
    }

    public static String y() {
        return n() + "my/balance";
    }

    public static String z() {
        return com.roblox.client.ae.t.a("%scaptcha/app/signup", d());
    }

    public static String A() {
        return com.roblox.client.ae.t.a("%scaptcha/app/signup?hybrid-return-token=1", d());
    }

    public static String a(String str, String str2) {
        return com.roblox.client.ae.t.a("%scaptcha/app/login?credentialsType=%s&credentialsValue=%s", d(), str, str2);
    }

    public static String b(String str, String str2) {
        return com.roblox.client.ae.t.a("%scaptcha/app/login?credentialsType=%s&credentialsValue=%s&hybrid-return-token=1", d(), str, str2);
    }

    public static String B() {
        StringBuilder sb;
        String str;
        if (b.cA()) {
            sb = new StringBuilder();
            sb.append(p());
            str = "v2/login";
        } else {
            sb = new StringBuilder();
            sb.append(p());
            str = "v1/login";
        }
        sb.append(str);
        return sb.toString();
    }

    public static String a(long j2) {
        return n() + "marketplace/productinfo?assetId=" + j2;
    }

    public static String b(long j2) {
        return "catalog/" + j2 + "/itempage";
    }

    public static String C() {
        return p() + "v1/twostepverification/verify";
    }

    public static String D() {
        return p() + "v1/twostepverification/resend";
    }

    public static String E() {
        return q() + "v1/enrollments";
    }

    public static String F() {
        return q() + "v1/get-enrollments";
    }

    static String G() {
        return d().replace("www.", "friends.");
    }

    public static String H() {
        return G() + "v1/contacts/match";
    }

    public static String I() {
        return G() + "v1/contacts/update";
    }

    public static String J() {
        return o() + "v1/user/set-pending-tag";
    }

    public static String K() {
        return o() + "v1/user/tag";
    }

    public static String L() {
        return p() + "v2/signup";
    }

    public static String c(String str, String str2) {
        return str2 == null ? com.roblox.client.ae.t.a("%sv1/validators/username?username=%s", p(), str) : com.roblox.client.ae.t.a("%sv1/validators/username?username=%s&birthday=%s", p(), str, str2);
    }

    public static String d(String str) {
        return p() + "v1/validators/email?email=" + str;
    }

    public static String d(String str, String str2) {
        return str2 == null ? com.roblox.client.ae.t.a("%ssignup/is-username-valid?username=%s", n(), str) : com.roblox.client.ae.t.a("%ssignup/is-username-valid?username=%s&birthday=%s", n(), str, str2);
    }

    public static String a(String str, String str2, String str3) {
        return com.roblox.client.ae.t.a("%sv2/usernames/validate?username=%s&birthday=%s&context=%s", p(), str, str2, str3);
    }

    public static String e(String str, String str2) {
        return com.roblox.client.ae.t.a("%ssignup/is-password-valid?username=%s&password=%s", n(), str, str2);
    }

    public static String f(String str, String str2) {
        return com.roblox.client.ae.t.a("%sv2/passwords/validate?username=%s&password=%s", p(), str, str2);
    }

    public static String M() {
        return d() + "home";
    }

    public static String N() {
        return d() + "upgrades/robux";
    }

    public static String O() {
        return d() + "mobile-app-upgrades/native-ios/bc";
    }

    public static String P() {
        return j("profile");
    }

    static String e(String str) {
        return d() + "users/search?keyword=" + str;
    }

    static String f(String str) {
        return d() + "games/?Keyword=" + str;
    }

    static String g(String str) {
        return d() + "search/groups?keyword=" + str;
    }

    static String h(String str) {
        return d() + "catalog?Keyword=" + str;
    }

    static String i(String str) {
        return d() + "games/?SortFilter=" + str;
    }

    static String Q() {
        StringBuilder sb = new StringBuilder();
        if (com.roblox.client.ae.l.b()) {
            sb.append(aa());
            sb.append("v1/mobile-client-version?appVersion=");
        } else {
            sb.append(d());
            sb.append("mobileapi/check-app-version?appVersion=");
        }
        sb.append(R());
        sb.append(h());
        return sb.toString();
    }

    static String j(String str) {
        long jB = com.roblox.client.s.h.a().b();
        if (jB != -1) {
            return d() + "users/" + jB + "/" + str;
        }
        return d() + "users/" + str;
    }

    public static String c(long j2) {
        return d() + "users/" + j2 + "/profile";
    }

    public static String d(long j2) {
        return d() + "users/" + j2 + "/friends#!/friend-requests";
    }

    public static String S() {
        return d() + "users/friends#!/friend-requests?onlyShowContents=true";
    }

    public static String e(long j2) {
        return d() + "users/" + j2 + "/friends#!/friends";
    }

    public static String T() {
        return d() + "my/messages/#!/inbox";
    }

    public static String f(long j2) {
        return d() + "my/messages/#!/inbox?conversationId=" + j2;
    }

    static String X() {
        return "^(https?://" + Pattern.quote(b()) + "(?:login|newlogin)).*";
    }

    public static String k(String str) {
        Matcher matcher = f7517a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    public static boolean l(String str) {
        String strK = k(str);
        return (!str.contains("Login/FulfillConstraint.aspx")) & ((strK == null || strK.isEmpty()) ? false : true);
    }

    public static String Y() {
        String strA = b.A();
        if (strA != null && !strA.isEmpty()) {
            return strA;
        }
        return "https://" + b.z() + "." + a() + b.w();
    }

    static String Z() {
        String str;
        String strE = e();
        if (strE != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("https://clientsettingscdn.");
            sb.append(a());
            sb.append("v2/settings/application/");
            sb.append(ab());
            if (strE.isEmpty()) {
                str = "";
            } else {
                str = "/bucket/" + strE;
            }
            sb.append(str);
            return sb.toString();
        }
        return "https://clientsettingscdn." + a() + "v1/settings/application?applicationName=" + ab();
    }

    static String aa() {
        return "https://clientsettings." + a();
    }

    static String ac() {
        return d().replace("www.", "billing.");
    }

    public static String ad() {
        return ac() + "v1/google/purchase";
    }

    public static String ae() {
        return ac() + "v1/google/validate";
    }

    public static String af() {
        return d() + "Login/ResetPasswordRequest.aspx";
    }

    public static String ag() {
        return d() + "login/resetpasswordrequest/success";
    }

    public static String ah() {
        return d() + "login/forgot-password-or-username";
    }

    public static String ai() {
        return n() + "device/initialize";
    }

    public static String aj() {
        return "https://ecsv2." + a() + "mobile/pbe";
    }

    public static String ak() {
        return d() + b.D();
    }

    public static String a(String str, int i2) {
        return "&counterName=" + str + "&amount=" + i2;
    }

    public static String al() {
        return "https://ephemeralcounters.api." + a() + "v1.1/Counters/Increment/?apiKey=76E5A40C-3AE1-4028-9F10-7C62520BD94F";
    }

    public static String am() {
        return "https://ephemeralcounters.api." + a() + "v1.0/SequenceStatistics/AddToSequence?apiKey=76E5A40C-3AE1-4028-9F10-7C62520BD94F";
    }

    public static String a(String str, long j2) {
        return "&sequenceName=" + str + "&value=" + j2;
    }

    public static String an() {
        return "https://metrics." + a() + "v1/performance/send-measurement";
    }

    public static boolean d(Context context) {
        return a(context).getBoolean("under13", true);
    }

    static String ap() {
        return o;
    }

    static boolean aq() {
        return p;
    }

    public static boolean a(String str, String str2, long j2) {
        if (str2 == null) {
            str2 = "";
        }
        try {
            JSONArray jSONArray = new JSONArray(g().getString(str, "[]"));
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                if (jSONArray.getString(i2).equals(str2 + "_" + j2)) {
                    return true;
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return false;
    }

    public static void b(String str, String str2, long j2) {
        if (str2 == null) {
            str2 = "";
        }
        try {
            JSONArray jSONArray = new JSONArray(g().getString(str, "[]"));
            jSONArray.put(str2 + "_" + j2);
            g().edit().putString(str, jSONArray.toString()).apply();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public static void e(Context context) throws IOException {
        com.roblox.client.f.d dVarA = new com.roblox.client.f.e(context).a(context);
        if (dVarA != null) {
            String strA = dVarA.a();
            if (!TextUtils.isEmpty(strA)) {
                com.roblox.client.ae.k.b("roblox.config", "initConfig: Set base-URL from: " + f + " => " + strA);
                a(strA);
            }
        }
        c(com.roblox.client.ae.s.a(context, "configure_dev_roblox", true).getString("BaseApiUrl", null));
        f7518b = a(context);
        f7520d = context.getResources().getDisplayMetrics().densityDpi;
        if (!x.a()) {
            o = context.getString(o.j.CommonUI_Messages_Response_RequiresNEONInstructions);
            p = false;
        } else if (x.b(context).x < 180) {
            o = "";
        } else if (Build.MODEL.equals("SM\u00ad-T210R")) {
            o = "SM\u00ad-T210R";
        }
        b(context);
        n = context.getFilesDir().getAbsolutePath();
        f(context);
        f7519c = Settings.Secure.getString(context.getContentResolver(), "android_id");
        if (dVarA != null && !TextUtils.isEmpty(dVarA.e())) {
            j = dVarA.e();
            com.roblox.client.ae.k.d("roblox.config", "Using a custom user agent: " + j);
            return;
        }
        j = c(context);
    }

    public static String f(Context context) {
        String absolutePath = context.getCacheDir().getAbsolutePath();
        m = absolutePath;
        return absolutePath;
    }

    public static String ar() {
        return "breakpad_" + h();
    }

    public static void as() {
        NativeSettingsInterface.nativeSetExceptionReasonFilename(ao());
        NativeSettingsInterface.nativeSetBaseUrl(d(), n());
        NativeSettingsInterface.nativeSetRobloxChannel(e());
        String str = m;
        if (str == null) {
            throw new NullPointerException("Missing cacheDirectory");
        }
        NativeSettingsInterface.nativeSetCacheDirectory(str);
        NativeSettingsInterface.nativeSetFilesDirectory(n);
        NativeSettingsInterface.nativeInitFastLog();
        NativeSettingsInterface.nativeSetRobloxVersion(h());
        NativeSettingsInterface.nativeSetPlatformHeaders(f7519c, "googleplay");
        if (b.k().booleanValue()) {
            ay();
        } else if (!com.roblox.client.i.b.a() || b.F()) {
            NativeSettingsInterface.nativeInitBreakpad(ar(), b.E());
        }
        NativeSettingsInterface.nativeSetHttpProxy(System.getProperty("http.proxyHost", ""), Long.getLong("http.proxyPort", 0L).longValue());
        at();
        NativeSettingsInterface.nativeSetAdditionalEngineSettings(b.G());
        if (b.bx()) {
            NativeSettingsInterface.nativeSetIsEmulator(j.a().h());
        }
    }

    public static void at() {
        String strA = com.roblox.platform.http.h.b().a(f());
        if (strA == null) {
            strA = "";
        }
        NativeSettingsInterface.nativeSetCookiesForDomain(c(), strA);
    }

    public static String g(Context context) {
        StringBuilder sb;
        int i2;
        String str = com.roblox.client.ad.c.a().e() + " ";
        if (com.roblox.client.ad.c.a().i()) {
            sb = new StringBuilder();
            sb.append(str);
            i2 = o.j.CommonUI_Features_Heading_VisibleAgeUnder13;
        } else {
            sb = new StringBuilder();
            sb.append(str);
            i2 = o.j.CommonUI_Features_Heading_VisibleAgeOver13;
        }
        sb.append(context.getString(i2));
        return sb.toString();
    }

    public static boolean au() {
        return com.roblox.client.x.c.d() ? av() == com.roblox.client.components.m.ALL && com.roblox.client.s.h.a().c() : aw() == com.roblox.client.components.m.ALL && com.roblox.client.s.h.a().c();
    }

    public static com.roblox.client.components.m av() {
        return com.roblox.client.components.m.a(b.I());
    }

    public static com.roblox.client.components.m aw() {
        return com.roblox.client.components.m.a(b.H());
    }

    public static void a(boolean z) {
        q = z;
    }

    public static boolean ax() {
        return q;
    }

    private static void ay() {
        if (i) {
            return;
        }
        final ApplicationInfo applicationInfo = RobloxApplication.b().getApplicationInfo();
        f.a(new f.b() { // from class: com.roblox.client.u.1
            @Override // com.roblox.client.f.b
            public void a(String str, g gVar) {
                if (gVar != null) {
                    com.roblox.client.ae.k.c("roblox.config", "crashpad init error " + gVar);
                    com.roblox.client.analytics.d.a("Crashpad", "initError", gVar.a());
                    return;
                }
                if (NativeSettingsInterface.nativeInitCrashpadNew(u.h(), u.d(), com.roblox.client.ae.l.b() ? "Android-TENCENTPlayer-Crash" : "Android-ROBLOXPlayer-Crash", b.l(), b.m(), CrashpadHandler.class.getCanonicalName(), new String[]{"ANDROID_DATA=" + System.getenv("ANDROID_DATA"), "ANDROID_ROOT=" + System.getenv("ANDROID_ROOT"), "ANDROID_STORAGE=" + System.getenv("ANDROID_STORAGE"), "LIBRARYPATH=" + str, "CLASSPATH=.:" + applicationInfo.sourceDir}, u.l())) {
                    boolean unused = u.i = true;
                    com.roblox.client.ae.k.b("roblox.config", "Crashpad monitoring is ON");
                }
            }
        });
    }
}
