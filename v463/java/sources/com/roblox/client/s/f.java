package com.roblox.client.s;

import android.content.Context;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.http.r;
import com.roblox.client.j;
import com.roblox.client.p;
import com.roblox.client.u;
import com.roblox.engine.jni.NativeGLInterface;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static f f7029c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.purchase.d f7030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7031b;

    public interface a {
        f a();
    }

    public static a a() {
        return new a() { // from class: com.roblox.client.s.f.1
            @Override // com.roblox.client.s.f.a
            public f a() {
                return f.b();
            }
        };
    }

    private f() {
        this.f7031b = Math.random() * 100.0d < ((double) com.roblox.client.b.bi());
    }

    public static f b() {
        f fVar = f7029c;
        if (fVar != null) {
            return fVar;
        }
        synchronized (f.class) {
            if (f7029c == null) {
                f7029c = new f();
            }
        }
        return f7029c;
    }

    public void a(String str) {
        a(str, 1);
    }

    public void a(String str, long j) {
        new r(u.am() + u.a(str, j)).c();
        if (this.f7031b) {
            b(str, j);
        }
    }

    public void b(String str, long j) {
        if (com.roblox.client.x.c.k()) {
            NativeGLInterface.nativeReportToDiagByCountryCode("Mobile", str, j);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("featureName", "Mobile");
            jSONObject.put("measureName", str);
            jSONObject.put("value", j);
            new r(u.an(), jSONObject.toString(), null, u.s()).c();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void a(boolean z) {
        new com.roblox.client.o.a("Android-RobloxPlayer-SessionReport-Inferred").b("Session", z ? "Crash" : "Success").b();
        a(z ? "Android-ROBLOXPlayer-Session-Inferred-Crash" : "Android-ROBLOXPlayer-Session-Inferred-Success");
    }

    public void c() {
        b().a(l.a() ? "Mobile-DownloadCount-Amazon" : "Mobile-DownloadCount-Android");
    }

    static String a(String str, boolean z) {
        String[] strArrSplit = str.split("\\.");
        String str2 = strArrSplit.length >= 2 ? strArrSplit[1] : "Unknown";
        StringBuilder sb = new StringBuilder();
        sb.append(z ? "Amazon-AppStartup-Version-" : "Android-AppStartup-Version-");
        sb.append(str2);
        return sb.toString();
    }

    public void d() {
        if (com.roblox.client.b.cg() && l.c()) {
            x();
        }
    }

    private void x() {
        String strName = j.a().i().name();
        String strD = l.d();
        String str = String.format("Android-%s-Architecture-%s", strD, strName);
        String str2 = String.format("Android-%s-Architecture-Total", strD);
        a(str);
        a(str2);
    }

    void e() {
        boolean zA = l.a();
        String strA = a(u.h(), zA);
        a(zA ? "Amazon-AppStartup-Version-Total" : "Android-AppStartup-Version-Total");
        a(strA);
    }

    public void a(com.roblox.client.purchase.d dVar) {
        this.f7030a = dVar;
    }

    public void b(String str) {
        k.b("rbx.purchaseflow", str);
        com.roblox.client.purchase.d dVar = this.f7030a;
        if (dVar != null) {
            dVar.f6691d++;
            new com.roblox.client.o.a("Android-PurchaseFlow").a(true).b("Username", this.f7030a.f6688a).a("InAppPurchase", this.f7030a.f6690c).b("ProductId", this.f7030a.f6689b).b("Message", this.f7030a.f6691d + "- " + str).a("Rooted", Boolean.valueOf(j.a().g())).b();
        }
    }

    public void a(boolean z, boolean z2) {
        a(z ? z2 ? "Mobile-Payments-PurchaseStarted-InApp-Amazon" : "Mobile-Payments-PurchaseStarted-InApp-Android" : z2 ? "Mobile-Payments-PurchaseStarted-InGame-Amazon" : "Mobile-Payments-PurchaseStarted-InGame-Android");
    }

    public void b(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PurchaseSuccess-InApp" : "Android-Payments-PurchaseSuccess-InApp" : z2 ? "Amazon-Payments-PurchaseSuccess-InGame" : "Android-Payments-PurchaseSuccess-InGame");
    }

    public void c(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PurchaseFailed-InApp" : "Android-Payments-PurchaseFailed-InApp" : z2 ? "Amazon-Payments-PurchaseFailed-InGame" : "Android-Payments-PurchaseFailed-InGame");
    }

    public void d(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PurchaseCancelled-InApp" : "Android-Payments-PurchaseCancelled-InApp" : z2 ? "Amazon-Payments-PurchaseCancelled-InGame" : "Android-Payments-PurchaseCancelled-InGame");
    }

    public void e(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PurchaseFlooded-InApp" : "Android-Payments-PurchaseFlooded-InApp" : z2 ? "Amazon-Payments-PurchaseFlooded-InGame" : "Android-Payments-PurchaseFlooded-InGame");
    }

    public void f(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PrecheckError-InApp" : "Android-Payments-PrecheckError-InApp" : z2 ? "Amazon-Payments-PrecheckError-InGame" : "Android-Payments-PrecheckError-InGame");
    }

    public void g(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PrecheckRetry-InApp" : "Android-Payments-PrecheckRetry-InApp" : z2 ? "Amazon-Payments-PrecheckRetry-InGame" : "Android-Payments-PrecheckRetry-InGame");
    }

    public void h(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PrecheckBalanceError-InApp" : "Android-Payments-PrecheckBalanceError-InApp" : z2 ? "Amazon-Payments-PrecheckBalanceError-InGame" : "Android-Payments-PrecheckBalanceError-InGame");
    }

    public void i(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-PrecheckUnknownError-InApp" : "Android-Payments-PrecheckUnknownError-InApp" : z2 ? "Amazon-Payments-PrecheckUnknownError-InGame" : "Android-Payments-PrecheckUnknownError-InGame");
    }

    public void j(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-VerificationError-InApp" : "Android-Payments-VerificationError-InApp" : z2 ? "Amazon-Payments-VerificationError-InGame" : "Android-Payments-VerificationError-InGame");
    }

    public void k(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-VerificationEmptyError-InApp" : "Android-Payments-VerificationEmptyError-InApp" : z2 ? "Amazon-Payments-VerificationEmptyError-InGame" : "Android-Payments-VerificationEmptyError-InGame");
    }

    public void l(boolean z, boolean z2) {
        a(z ? z2 ? "Amazon-Payments-VerificationUnknownError-InApp" : "Android-Payments-VerificationUnknownError-InApp" : z2 ? "Amazon-Payments-VerificationUnknownError-InGame" : "Android-Payments-VerificationUnknownError-InGame");
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

    public void f() {
        a("Android-Payments-Api-V1-Precheck-Request");
    }

    public void g() {
        a("Android-Payments-Api-V1-Precheck-Response-200");
    }

    public void h() {
        a("Android-Payments-Api-V1-Precheck-Response-400");
    }

    public void i() {
        a("Android-Payments-Api-V1-Precheck-Response-401");
    }

    public void j() {
        a("Android-Payments-Api-V1-Precheck-Response-403");
    }

    public void k() {
        a("Android-Payments-Api-V1-Precheck-Response-404");
    }

    public void l() {
        a("Android-Payments-Api-V1-Precheck-Response-429");
    }

    public void m() {
        a("Android-Payments-Api-V1-Precheck-Response-500");
    }

    public void n() {
        a("Android-Payments-Api-V1-Precheck-Response-503");
    }

    public void o() {
        a("Android-Payments-Api-V1-Precheck-Response-Unknown");
    }

    public void p() {
        a("Android-Payments-Api-V1-Verify-Request");
    }

    public void q() {
        a("Android-Payments-Api-V1-Verify-Response-200");
    }

    public void r() {
        a("Android-Payments-Api-V1-Verify-Response-400");
    }

    public void s() {
        a("Android-Payments-Api-V1-Verify-Response-401");
    }

    public void t() {
        a("Android-Payments-Api-V1-Verify-Response-500");
    }

    public void u() {
        a("Android-Payments-Api-V1-Verify-Response-Unknown");
    }

    public void v() {
        a("Android-Payments-PurchaseIsEmulator");
    }

    public void a(String str, String str2, String str3) {
        com.roblox.client.l.a().f().a(str, str2, str3, l.a());
    }

    public void a(Context context) {
        if (context != null) {
            com.roblox.client.l.a().f().d(context);
        }
    }

    public void a(int i) {
        com.roblox.client.analytics.d.a("TwoStepVerification", "Success", Integer.toString(i));
        d("Android-App2SV-Success");
    }

    public void a(String str, String str2, com.roblox.client.http.j jVar) {
        int iB = jVar.b();
        com.roblox.client.analytics.d.a("TwoStepVerification", str, Integer.toString(iB));
        d("Android-App2SV-Failure");
        b(str, iB, jVar.d(), jVar.a(), str2, jVar.e(), -1L);
    }

    private void b(String str, int i, String str2, String str3, String str4, long j, long j2) {
        com.roblox.client.o.a aVarA = new com.roblox.client.o.a("Android2StepVerificationFailure").b("Status", str).b("requestUrl", str2).a("httpResponseCode", i).b("responseBody", str3).b("username", str4).a("responseTimeMs", j);
        if (j2 >= 0) {
            aVarA.a("timeSinceLastLoginMs", j2);
        }
        aVarA.b();
    }

    public void a(String str, String str2, int i, String str3, String str4, String str5, long j) {
        com.roblox.client.analytics.d.a("SignupAttempt", str2, Integer.toString(i));
        d(str);
        d("Android-AppSignup-Failure");
        a("SignupFailureAndroid", str2, i, str3, str4, str5, j, "regular");
    }

    private void a(String str, String str2, int i, String str3, String str4, String str5, long j, String str6) {
        new com.roblox.client.o.a(str).b("Status", str2).b("requestUrl", str3).b("responseBody", str4).b("username", str5).a("responseTimeMs", j).a("httpResponseCode", i).b("signupType", str6).b();
    }

    public void w() {
        com.roblox.client.analytics.d.a("Login", "Success", Integer.toString(200));
        d("Android-AppLogin-Success");
    }

    public void a(String str, String str2, int i) {
        com.roblox.client.analytics.d.a("Login", str, Integer.toString(i));
        d("Android-AppLogin-Failure");
        d(str2);
    }

    public static void b(int i) {
        if (com.roblox.client.b.r()) {
            com.roblox.client.analytics.d.a("SessionCheck", "Success", Integer.toString(i));
            a("Android-SessionCheck-Success", 1);
            c("success");
        }
    }

    public static void a(String str, int i, String str2, String str3, String str4, long j, long j2) {
        String str5 = i != 401 ? "Android-SessionCheck-Failure-UnknownError" : "Android-SessionCheck-Failure-401-Unauthenticated";
        com.roblox.client.analytics.d.a("SessionCheck", str, Integer.toString(i));
        d("Android-SessionCheck-Failure");
        d(str5);
        c(str, i, str2, str3, str4, j, j2);
        p.a("sessionCheck", str2, i, -1);
    }

    public static void c(String str) {
        p.d(str, "sessionCheck");
    }

    public static void c(int i) {
        if (com.roblox.client.b.r()) {
            com.roblox.client.analytics.d.a("SignupAttempt", "Success", Integer.toString(i));
            a("Android-AppSignup-Success", 1);
        }
    }

    public static void a(long j, long j2, long j3) {
        new com.roblox.client.o.a("AutoLoginFailures").a("initialLoginTimestamp", j).a("cookieExpirationTimestamp", j2).a("expectedCookieExpirationTimestamp", j3).b();
    }

    private static void c(String str, int i, String str2, String str3, String str4, long j, long j2) {
        com.roblox.client.o.a aVarA = new com.roblox.client.o.a("LoginFailure").b("Status", str).b("loginType", "loginType").b("requestUrl", str2).a("httpResponseCode", i).b("responseBody", str3).b("username", str4).a("responseTimeMs", j);
        if (j2 >= 0) {
            aVarA.a("timeSinceLastLoginMs", j2);
        }
        aVarA.b();
    }

    private static void d(String str) {
        a(str, 1);
    }

    private static void a(String str, int i) {
        new r(u.al() + u.a(str, i)).c();
    }
}
