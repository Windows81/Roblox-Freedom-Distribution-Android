package com.roblox.client.login.mvp;

import com.roblox.client.RobloxSettings;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.h;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.post.LoginAuthRequestBody;
import com.roblox.client.util.g;
import com.roblox.client.util.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7474a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.q.d f7476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.q.c f7477d;
    private m e;

    public interface a {
        void a();

        void a(c cVar);

        void a(String str, String str2, String str3);

        void b();

        void c();

        void d();
    }

    d(com.roblox.client.q.d dVar, com.roblox.client.q.c cVar, m mVar) {
        this.f7476c = dVar;
        this.f7477d = cVar;
        this.e = mVar;
    }

    String a() {
        String strB = b();
        if ((ContactRequestObject.JSON_FIELD_EMAIL.equals(strB) && !com.roblox.client.b.bM()) || ("PhoneNumber".equals(strB) && !com.roblox.client.b.bL())) {
            this.f7477d.a(this.f7476c.f(), "Username");
        }
        return this.f7477d.c();
    }

    String b() {
        return this.f7477d.b();
    }

    public String c() {
        return this.f7476c.f();
    }

    public String d() {
        return this.f7475b;
    }

    void a(String str, String str2, String str3, final a aVar) {
        g.c("rbx.authlogin", "credential: " + str + ". ctype: " + str2 + ". pass: " + str3);
        this.f7477d.a(str, str2);
        this.f7475b = str3;
        new h().a(RobloxSettings.loginAuthUrlV1(), new LoginAuthRequestBody(str, str2, str3), null, new i() { // from class: com.roblox.client.login.mvp.d.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                b bVar;
                c cVar;
                JSONObject jSONObject = null;
                int iB = jVar.b();
                if (iB == 200) {
                    d.this.f();
                    try {
                        cVar = null;
                        jSONObject = new JSONObject(jVar.a());
                    } catch (JSONException e) {
                        g.e("rbx.authlogin", "callLoginWithAuthV1. Error parsing server response on 200. msg: " + jVar.a());
                        cVar = new c("FailureJSON", "Android-AppLogin-Failure-UnknownError", -2010);
                    }
                    if (cVar == null && (cVar = d.this.a(jSONObject)) == null) {
                        if (jSONObject.has("twoStepVerificationData")) {
                            cVar = d.this.a(jSONObject, aVar);
                        } else {
                            g.b("rbx.authlogin", "callLoginWithAuthV1(). errorCode=200.");
                            d.this.e();
                            aVar.a();
                        }
                    }
                } else {
                    try {
                        bVar = new b(jVar.a());
                    } catch (JSONException e2) {
                        g.e("rbx.authlogin", "Error parsing server error message. msg: " + jVar.a());
                        bVar = null;
                    }
                    switch (iB) {
                        case 0:
                            cVar = new c("FailureUnknownError", "Android-AppLogin-Failure-0-Timeout", -2018);
                            break;
                        case 400:
                            cVar = d.this.a(bVar);
                            break;
                        case 403:
                            cVar = d.this.a(bVar, aVar);
                            break;
                        case 404:
                            cVar = new c("FailureUnknownError", "Android-AppLogin-Failure-404-NotFound", -2019);
                            break;
                        case 429:
                            d.this.f();
                            aVar.d();
                            cVar = new c("FailureLoginFloodcheck", "Android-AppLogin-Failure-429-Throttled", -2022);
                            break;
                        case 500:
                            cVar = new c("FailureUnknownError", "Android-AppLogin-Failure-500-InternalServerError", -2020);
                            break;
                        default:
                            cVar = new c("FailureUnknownError", "Android-AppLogin-Failure-UnknownError", -2010);
                            break;
                    }
                }
                if (cVar != null) {
                    cVar.f7473d = iB;
                    aVar.a(cVar);
                }
            }
        }).c();
    }

    void e() {
        g.b("rbx.authlogin", "onLoginOK.");
        com.roblox.client.i.h.a().a(this.f7476c.e());
        com.roblox.client.i.h.a().a(true);
        g();
        com.roblox.client.q.c.a().b(a(), b());
    }

    void f() {
        this.f7474a = 0;
    }

    private void g() {
        this.e.a().edit().putLong("user_logged_in_time", System.currentTimeMillis()).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(JSONObject jSONObject, a aVar) {
        g.b("rbx.authlogin", "callLoginWithAuthV1(). errorCode=200. requires 2 step verification");
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("twoStepVerificationData");
            aVar.a(jSONObject2.getString("ticket"), jSONObject2.getString("mediaType"), this.f7476c.f());
            return null;
        } catch (JSONException e) {
            g.e("rbx.authlogin", "callLoginWithApi. Error parsing 2SV response.");
            return new c("Failure2SVJSON", "Android-AppLogin-Failure-UnknownError", -2010);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(b bVar) {
        c cVar = new c();
        switch (bVar != null ? bVar.f7480a : 1000) {
            case 0:
                cVar.f7472c = -2010;
                cVar.f7470a = "FailureServerError";
                break;
            case 3:
                cVar.f7472c = -2011;
                cVar.f7470a = "FailureInvalidUsernamePassword";
                break;
            case 8:
                cVar.f7472c = -2012;
                cVar.f7470a = "FailureCredentialNotSupported";
                break;
            default:
                cVar.f7472c = -2010;
                cVar.f7470a = "FailureUnknownError";
                break;
        }
        cVar.f7471b = "Android-AppLogin-Failure-400-BadRequest";
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(b bVar, a aVar) {
        String str;
        String str2;
        int i = -2022;
        switch (bVar != null ? bVar.f7480a : 1000) {
            case 1:
                this.f7474a++;
                if (this.f7474a > com.roblox.client.b.ai()) {
                    aVar.c();
                } else {
                    i = -2013;
                }
                str = "FailureInvalidUsernamePassword";
                str2 = "Android-AppLogin-Failure-403-Credentials";
                break;
            case 2:
                f();
                i = -2021;
                str = "Captcha";
                str2 = "Android-AppLogin-Failure-403-Captcha";
                break;
            case 3:
            case 7:
            case 8:
            default:
                i = -2010;
                str = "FailureUnknownError";
                str2 = "Android-AppLogin-Failure-UnknownError";
                break;
            case 4:
                f();
                aVar.b();
                str = "FailureResetPasswordRequired";
                str2 = "Android-AppLogin-Failure-403-PasswordResetRequired";
                break;
            case 5:
                i = -2014;
                str = "FailureLoginNullPasswordSocialLogin";
                str2 = "Android-AppLogin-Failure-403-NullPassword";
                break;
            case 6:
                i = -2015;
                str = "FailureTwoStepVerification";
                str2 = "Android-AppLogin-Failure-403-TwoStepVerification";
                break;
            case 9:
                i = -2016;
                str = "FailureDefaultLoginRequired";
                str2 = "Android-AppLogin-Failure-403-DefaultLoginRequired";
                break;
            case 10:
                i = -2017;
                str = "FailureUnverifiedCredentials";
                str2 = "Android-AppLogin-Failure-403-UnverifiedCredentials";
                break;
        }
        return new c(str, str2, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("user");
            this.f7476c.b(jSONObject2.getString("name"));
            this.f7476c.a(jSONObject2.getLong("id"));
            return null;
        } catch (JSONException e) {
            return new c("MissingUserInfo", "Android-AppLogin-Failure-UnknownError", -2010);
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f7480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f7481b;

        b(String str) throws JSONException {
            JSONObject jSONObject = new JSONObject(str).getJSONArray("errors").getJSONObject(0);
            this.f7480a = jSONObject.getInt("code");
            this.f7481b = jSONObject.getString("message");
        }
    }
}
