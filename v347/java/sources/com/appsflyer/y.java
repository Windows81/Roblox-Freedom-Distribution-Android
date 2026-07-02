package com.appsflyer;

import android.content.pm.PackageManager;
import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static y f2261a;
    private JSONObject B;
    private int D;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f2262b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2263c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2264d = "brand";
    private final String e = "model";
    private final String f = "platform";
    private final String g = "platform_version";
    private final String h = "advertiserId";
    private final String i = "imei";
    private final String j = "android_id";
    private final String k = "sdk_version";
    private final String l = "devkey";
    private final String m = "originalAppsFlyerId";
    private final String n = "uid";
    private final String o = "app_id";
    private final String p = "app_version";
    private final String q = "channel";
    private final String r = "preInstall";
    private final String s = "data";
    private final String t = "r_debugging_off";
    private final String u = "r_debugging_on";
    private final String v = "public_api_call";
    private final String w = "exception";
    private final String x = "server_request";
    private final String y = "server_response";
    private final String z = "yyyy-MM-dd HH:mm:ssZ";
    private final String A = "MM-dd HH:mm:ss.SSS";
    private String F = "-1";
    private JSONArray C = new JSONArray();
    private boolean E = false;

    private y() {
        this.D = 0;
        this.D = 0;
    }

    static y a() {
        if (f2261a == null) {
            f2261a = new y();
        }
        return f2261a;
    }

    final synchronized void a(String str) {
        this.F = str;
    }

    final synchronized void b() {
        this.E = true;
        a("r_debugging_on", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
    }

    final synchronized void c() {
        a("r_debugging_off", new SimpleDateFormat("yyyy-MM-dd HH:mm:ssZ", Locale.ENGLISH).format(Long.valueOf(System.currentTimeMillis())), new String[0]);
        this.E = false;
        this.f2262b = false;
    }

    final synchronized void d() {
        this.B = null;
        this.C = null;
        f2261a = null;
    }

    final void a(String str, PackageManager packageManager) {
        try {
            a().b(str, packageManager);
            String strA = a().a(true);
            s sVar = new s(null);
            sVar.f2243b = strA;
            sVar.a(false);
            sVar.execute(l.b("https://monitorsdk.%s/remote-debug?app_id=") + str);
        } catch (Throwable th) {
        }
    }

    private boolean g() {
        return this.f2263c && (this.f2262b || this.E);
    }

    private synchronized void a(String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            this.B.put("brand", str);
            this.B.put("model", str2);
            this.B.put("platform", "Android");
            this.B.put("platform_version", str3);
            if (str4 != null && str4.length() > 0) {
                this.B.put("advertiserId", str4);
            }
            if (str5 != null && str5.length() > 0) {
                this.B.put("imei", str5);
            }
            if (str6 != null && str6.length() > 0) {
                this.B.put("android_id", str6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void a(String str, String str2, String str3, String str4) {
        try {
            this.B.put("sdk_version", str);
            if (str2 != null && str2.length() > 0) {
                this.B.put("devkey", str2);
            }
            if (str3 != null && str3.length() > 0) {
                this.B.put("originalAppsFlyerId", str3);
            }
            if (str4 != null && str4.length() > 0) {
                this.B.put("uid", str4);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized void b(String str, String str2, String str3, String str4) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    this.B.put("app_id", str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (str2 != null && str2.length() > 0) {
            this.B.put("app_version", str2);
        }
        if (str3 != null && str3.length() > 0) {
            this.B.put("channel", str3);
        }
        if (str4 != null && str4.length() > 0) {
            this.B.put("preInstall", str4);
        }
    }

    final void a(String str, String... strArr) {
        a("public_api_call", str, strArr);
    }

    final void a(Throwable th) {
        Throwable cause = th.getCause();
        a("exception", th.getClass().getSimpleName(), a(cause == null ? th.getMessage() : cause.getMessage(), cause == null ? th.getStackTrace() : cause.getStackTrace()));
    }

    final void a(String str, String str2) {
        a("server_request", str, str2);
    }

    final void a(String str, int i, String str2) {
        a("server_response", str, String.valueOf(i), str2);
    }

    final void b(String str, String str2) {
        a((String) null, str, str2);
    }

    private synchronized void a(String str, String str2, String... strArr) {
        String str3;
        if (g() && this.D < 98304) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String string = "";
                if (strArr.length > 0) {
                    StringBuilder sb = new StringBuilder();
                    for (int length = strArr.length - 1; length > 0; length--) {
                        sb.append(strArr[length]).append(", ");
                    }
                    sb.append(strArr[0]);
                    string = sb.toString();
                }
                String str4 = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.ENGLISH).format(Long.valueOf(jCurrentTimeMillis));
                if (str != null) {
                    str3 = String.format("%18s %5s _/%s [%s] %s %s", str4, Long.valueOf(Thread.currentThread().getId()), "AppsFlyer_4.8.3", str, str2, string);
                } else {
                    str3 = String.format("%18s %5s %s/%s %s", str4, Long.valueOf(Thread.currentThread().getId()), str2, "AppsFlyer_4.8.3", string);
                }
                this.C.put(str3);
                this.D = str3.getBytes().length + this.D;
            } catch (Throwable th) {
            }
        }
    }

    private synchronized String a(boolean z) {
        String string;
        string = null;
        try {
            System.currentTimeMillis();
            this.B.put("data", this.C);
            string = this.B.toString();
            if (z) {
                h();
            }
        } catch (JSONException e) {
        }
        return string;
    }

    private synchronized void b(String str, PackageManager packageManager) {
        g gVarA = g.a();
        f fVarC = f.c();
        String strA = gVarA.a("remote_debug_static_data");
        if (strA != null) {
            try {
                this.B = new JSONObject(strA);
            } catch (Throwable th) {
            }
        } else {
            this.B = new JSONObject();
            a(Build.BRAND, Build.MODEL, Build.VERSION.RELEASE, gVarA.a("advertiserId"), fVarC.g, fVarC.h);
            a("4.8.3.344", gVarA.a("AppsFlyerKey"), gVarA.a("KSAppsFlyerId"), gVarA.a("uid"));
            try {
                int i = packageManager.getPackageInfo(str, 0).versionCode;
                b(str, String.valueOf(i), gVarA.a("channel"), gVarA.a("preInstallName"));
            } catch (Throwable th2) {
            }
            gVarA.a("remote_debug_static_data", this.B.toString());
        }
        try {
            this.B.put("launch_counter", this.F);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private String[] a(String str, StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null) {
            return new String[]{str};
        }
        String[] strArr = new String[stackTraceElementArr.length + 1];
        strArr[0] = str;
        for (int i = 1; i < stackTraceElementArr.length; i++) {
            strArr[i] = stackTraceElementArr[i].toString();
        }
        return strArr;
    }

    private synchronized void h() {
        this.C = null;
        this.C = new JSONArray();
        this.D = 0;
    }

    final synchronized void e() {
        this.f2262b = false;
        h();
    }

    final boolean f() {
        return this.E;
    }
}
