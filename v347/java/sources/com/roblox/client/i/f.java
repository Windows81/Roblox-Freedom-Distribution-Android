package com.roblox.client.i;

import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.j;
import com.roblox.client.http.t;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f7190c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.purchase.b f7191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7192b;

    private f() {
        this.f7192b = Math.random() * 100.0d < ((double) com.roblox.client.b.cc());
    }

    public static f a() {
        if (f7190c != null) {
            return f7190c;
        }
        synchronized (f.class) {
            if (f7190c == null) {
                f7190c = new f();
            }
        }
        return f7190c;
    }

    public void a(String str) {
        a(str, 1);
    }

    public void a(String str, long j) {
        new t(RobloxSettings.ephemeralSequenceStatsUrl() + RobloxSettings.ephemeralSequenceStatsParams(str, j)).c();
        if (this.f7192b) {
            b(str, j);
        }
    }

    public void b(String str, long j) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("featureName", "Mobile");
            jSONObject.put("measureName", str);
            jSONObject.put("value", j);
            new t(RobloxSettings.ephemeralSequenceStatsWithCountryCodeUrl(), jSONObject.toString(), null, RobloxSettings.getJsonContentType()).c();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void a(boolean z) {
        new com.roblox.client.g.a("Android-RobloxPlayer-SessionReport-Inferred").b("Session", z ? "Crash" : "Success").b();
        a(z ? "Android-ROBLOXPlayer-Session-Inferred-Crash" : "Android-ROBLOXPlayer-Session-Inferred-Success");
    }

    public void b() {
        a().a(com.roblox.client.util.h.a() ? "Mobile-DownloadCount-Amazon" : "Mobile-DownloadCount-Android");
    }

    static String a(String str, boolean z) {
        String str2 = "Unknown";
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length >= 2) {
            str2 = strArrSplit[1];
        }
        return (z ? "Amazon-AppStartup-Version-" : "Android-AppStartup-Version-") + str2;
    }

    void c() {
        boolean zA = com.roblox.client.util.h.a();
        String strA = a(RobloxSettings.version(), zA);
        a(zA ? "Amazon-AppStartup-Version-Total" : "Android-AppStartup-Version-Total");
        a(strA);
    }

    public void a(com.roblox.client.purchase.b bVar) {
        this.f7191a = bVar;
    }

    public void b(String str) {
        com.roblox.client.util.g.b("rbx.purchaseflow", str);
        if (this.f7191a != null) {
            this.f7191a.f7555d++;
            new com.roblox.client.g.a("Android-PurchaseFlow").a(true).b("Username", this.f7191a.f7552a).a("InAppPurchase", this.f7191a.f7554c).b("ProductId", this.f7191a.f7553b).b("Message", this.f7191a.f7555d + "- " + str).a("Rooted", Boolean.valueOf(com.roblox.client.c.a().g())).b();
        }
    }

    public void a(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Mobile-Payments-PurchaseStarted-InApp-Amazon" : "Mobile-Payments-PurchaseStarted-InApp-Android";
        } else {
            str = z2 ? "Mobile-Payments-PurchaseStarted-InGame-Amazon" : "Mobile-Payments-PurchaseStarted-InGame-Android";
        }
        a(str);
    }

    public void b(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PurchaseSuccess-InApp" : "Android-Payments-PurchaseSuccess-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PurchaseSuccess-InGame" : "Android-Payments-PurchaseSuccess-InGame";
        }
        a(str);
    }

    public void c(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PurchaseFailed-InApp" : "Android-Payments-PurchaseFailed-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PurchaseFailed-InGame" : "Android-Payments-PurchaseFailed-InGame";
        }
        a(str);
    }

    public void d(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PurchaseCancelled-InApp" : "Android-Payments-PurchaseCancelled-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PurchaseCancelled-InGame" : "Android-Payments-PurchaseCancelled-InGame";
        }
        a(str);
    }

    public void e(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PurchaseFlooded-InApp" : "Android-Payments-PurchaseFlooded-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PurchaseFlooded-InGame" : "Android-Payments-PurchaseFlooded-InGame";
        }
        a(str);
    }

    public void f(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PrecheckError-InApp" : "Android-Payments-PrecheckError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PrecheckError-InGame" : "Android-Payments-PrecheckError-InGame";
        }
        a(str);
    }

    public void g(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PrecheckRetry-InApp" : "Android-Payments-PrecheckRetry-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PrecheckRetry-InGame" : "Android-Payments-PrecheckRetry-InGame";
        }
        a(str);
    }

    public void h(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PrecheckBalanceError-InApp" : "Android-Payments-PrecheckBalanceError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PrecheckBalanceError-InGame" : "Android-Payments-PrecheckBalanceError-InGame";
        }
        a(str);
    }

    public void i(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-PrecheckUnknownError-InApp" : "Android-Payments-PrecheckUnknownError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-PrecheckUnknownError-InGame" : "Android-Payments-PrecheckUnknownError-InGame";
        }
        a(str);
    }

    public void j(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-VerificationError-InApp" : "Android-Payments-VerificationError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-VerificationError-InGame" : "Android-Payments-VerificationError-InGame";
        }
        a(str);
    }

    public void k(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-VerificationEmptyError-InApp" : "Android-Payments-VerificationEmptyError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-VerificationEmptyError-InGame" : "Android-Payments-VerificationEmptyError-InGame";
        }
        a(str);
    }

    public void l(boolean z, boolean z2) {
        String str;
        if (z) {
            str = z2 ? "Amazon-Payments-VerificationUnknownError-InApp" : "Android-Payments-VerificationUnknownError-InApp";
        } else {
            str = z2 ? "Amazon-Payments-VerificationUnknownError-InGame" : "Android-Payments-VerificationUnknownError-InGame";
        }
        a(str);
    }

    public void b(boolean z) {
        a(z ? "Android-Payments-IABLaunchPurchaseFlow-InApp" : "Android-Payments-IABLaunchPurchaseFlow-InGame");
    }

    public void c(boolean z) {
        a(z ? "Android-Payments-IABConsumeError-InApp" : "Android-Payments-IABConsumeError-InGame");
    }

    public void d(boolean z) {
        a(z ? "Android-Payments-IABHandleActivityError-InApp" : "Android-Payments-IABHandleActivityError-InGame");
    }

    public void e(boolean z) {
        a(z ? "Android-Payments-IABGrantPendingError-InApp" : "Android-Payments-IABGrantPendingError-InGame");
    }

    public void f(boolean z) {
        a(z ? "Android-Payments-ConsumeError-InApp" : "Android-Payments-ConsumeError-InGame");
    }

    public void g(boolean z) {
        a(z ? "Android-Payments-GetPriceError-InApp" : "Android-Payments-GetPriceError-InGame");
    }

    public void d() {
        a("Android-Payments-Api-V1-Precheck-Request");
    }

    public void e() {
        a("Android-Payments-Api-V1-Precheck-Response-200");
    }

    public void f() {
        a("Android-Payments-Api-V1-Precheck-Response-400");
    }

    public void g() {
        a("Android-Payments-Api-V1-Precheck-Response-401");
    }

    public void h() {
        a("Android-Payments-Api-V1-Precheck-Response-403");
    }

    public void i() {
        a("Android-Payments-Api-V1-Precheck-Response-404");
    }

    public void j() {
        a("Android-Payments-Api-V1-Precheck-Response-429");
    }

    public void k() {
        a("Android-Payments-Api-V1-Precheck-Response-500");
    }

    public void l() {
        a("Android-Payments-Api-V1-Precheck-Response-503");
    }

    public void m() {
        a("Android-Payments-Api-V1-Precheck-Response-Unknown");
    }

    public void n() {
        a("Android-Payments-Api-V1-Verify-Request");
    }

    public void o() {
        a("Android-Payments-Api-V1-Verify-Response-200");
    }

    public void p() {
        a("Android-Payments-Api-V1-Verify-Response-400");
    }

    public void q() {
        a("Android-Payments-Api-V1-Verify-Response-401");
    }

    public void r() {
        a("Android-Payments-Api-V1-Verify-Response-500");
    }

    public void s() {
        a("Android-Payments-Api-V1-Verify-Response-Unknown");
    }

    public void t() {
        a("Android-Payments-PurchaseIsEmulator");
    }

    public void a(String str, String str2, String str3) {
        d.a().a(str, str2, str3, com.roblox.client.util.h.a());
    }

    public void a(int i) {
        com.roblox.client.b.c.a("TwoStepVerification", "Success", Integer.toString(i));
        c("Android-App2SV-Success");
    }

    public void a(String str, String str2, j jVar) {
        int iB = jVar.b();
        com.roblox.client.b.c.a("TwoStepVerification", str, Integer.toString(iB));
        c("Android-App2SV-Failure");
        b(str, iB, jVar.c(), jVar.a(), str2, jVar.d(), -1L);
    }

    private void b(String str, int i, String str2, String str3, String str4, long j, long j2) {
        com.roblox.client.g.a aVarA = new com.roblox.client.g.a("Android2StepVerificationFailure").b("Status", str).b("requestUrl", str2).a("httpResponseCode", i).b("responseBody", str3).b("username", str4).a("responseTimeMs", j);
        if (j2 >= 0) {
            aVarA.a("timeSinceLastLoginMs", j2);
        }
        aVarA.b();
    }

    public void a(String str, int i, String str2, String str3, String str4, long j) {
        com.roblox.client.b.c.a("SignupAttempt", str, Integer.toString(i));
        c("Android-AppSignup-Failure");
        a("SignupFailureAndroid", str, i, str2, str3, str4, j, "regular");
    }

    private void a(String str, String str2, int i, String str3, String str4, String str5, long j, String str6) {
        new com.roblox.client.g.a(str).b("Status", str2).b("requestUrl", str3).b("responseBody", str4).b("username", str5).a("responseTimeMs", j).a("httpResponseCode", i).b("signupType", str6).b();
    }

    public void u() {
        com.roblox.client.b.c.a("Login", "Success", Integer.toString(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION));
        c("Android-AppLogin-Success");
    }

    public void a(String str, String str2, int i) {
        com.roblox.client.b.c.a("Login", str, Integer.toString(i));
        c("Android-AppLogin-Failure");
        c(str2);
    }

    public static void b(int i) {
        if (com.roblox.client.b.w()) {
            com.roblox.client.b.c.a("Login", "Success", Integer.toString(i));
            c("Android-AppLogin-Success");
        }
    }

    public static void c(int i) {
        if (com.roblox.client.b.w()) {
            com.roblox.client.b.c.a("SessionCheck", "Success", Integer.toString(i));
            a("Android-SessionCheck-Success", 1);
        }
    }

    public static void a(String str, String str2, int i, String str3, String str4, String str5, long j) {
        com.roblox.client.b.c.a("Login", str, Integer.toString(i));
        c("Android-AppLogin-Failure");
        c(str2);
        c(str, i, str3, str4, str5, j, -1L);
    }

    public static void a(String str, int i, String str2, String str3, String str4, long j, long j2) {
        String str5;
        switch (i) {
            case 401:
                str5 = "Android-SessionCheck-Failure-401-Unauthenticated";
                break;
            default:
                str5 = "Android-SessionCheck-Failure-UnknownError";
                break;
        }
        com.roblox.client.b.c.a("SessionCheck", str, Integer.toString(i));
        c("Android-SessionCheck-Failure");
        c(str5);
        c(str, i, str2, str3, str4, j, j2);
    }

    public static void d(int i) {
        if (com.roblox.client.b.w()) {
            com.roblox.client.b.c.a("SignupAttempt", "Success", Integer.toString(i));
            a("Android-AppSignup-Success", 1);
        }
    }

    public static void a(long j, long j2, long j3) {
        new com.roblox.client.g.a("AutoLoginFailures").a("initialLoginTimestamp", j).a("cookieExpirationTimestamp", j2).a("expectedCookieExpirationTimestamp", j3).b();
    }

    private static void c(String str, int i, String str2, String str3, String str4, long j, long j2) {
        com.roblox.client.g.a aVarA = new com.roblox.client.g.a("LoginFailure").b("Status", str).b("loginType", "loginType").b("requestUrl", str2).a("httpResponseCode", i).b("responseBody", str3).b("username", str4).a("responseTimeMs", j);
        if (j2 >= 0) {
            aVarA.a("timeSinceLastLoginMs", j2);
        }
        aVarA.b();
    }

    private static void c(String str) {
        a(str, 1);
    }

    private static void a(String str, int i) {
        new t(RobloxSettings.ephemeralCounterUrl() + RobloxSettings.ephemeralCounterParams(str, i)).c();
    }
}
