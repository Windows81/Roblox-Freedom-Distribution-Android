package com.roblox.client.login.mvp;

import com.roblox.client.ae.k;
import com.roblox.client.ae.s;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.h;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.post.LoginAuthRequestBody;
import com.roblox.client.u;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6578a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.ad.c f6580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.roblox.client.ad.b f6581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private s f6582e;

    public interface a {
        void a();

        void a(c cVar);

        void a(String str, String str2, String str3);

        void b();

        void c();

        void d();
    }

    d(com.roblox.client.ad.c cVar, com.roblox.client.ad.b bVar, s sVar) {
        this.f6580c = cVar;
        this.f6581d = bVar;
        this.f6582e = sVar;
    }

    String a() {
        String strB = b();
        if ((ContactRequestObject.JSON_FIELD_EMAIL.equals(strB) && !com.roblox.client.b.aO()) || ("PhoneNumber".equals(strB) && !com.roblox.client.b.aN())) {
            this.f6581d.a(this.f6580c.e(), "Username");
        }
        return this.f6581d.c();
    }

    String b() {
        return this.f6581d.b();
    }

    public String c() {
        return this.f6579b;
    }

    public void a(String str, String str2, String str3) {
        this.f6581d.a(str2, str);
        this.f6579b = str3;
    }

    void a(String str, String str2, String str3, String str4, String str5, final a aVar) {
        a(str2, str, str3);
        i iVar = new i() { // from class: com.roblox.client.login.mvp.d.1
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                JSONObject jSONObject;
                int iB = jVar.b();
                b bVar = null;
                c cVar = null;
                if (iB == 200) {
                    d.this.e();
                    try {
                        jSONObject = new JSONObject(jVar.a());
                    } catch (JSONException unused) {
                        k.e("rbx.authlogin", "callLoginWithAuthV1. Error parsing server response on 200. msg: " + jVar.a());
                        jSONObject = null;
                        cVar = new c("FailureJSON", "Android-AppLogin-Failure-UnknownError", -2010);
                    }
                    if (cVar == null && (cVar = d.this.a(jSONObject)) == null) {
                        if (jSONObject.has("twoStepVerificationData")) {
                            cVar = d.this.a(jSONObject, aVar);
                        } else {
                            k.b("rbx.authlogin", "callLoginWithAuthV1(). errorCode=200.");
                            d.this.d();
                            aVar.a();
                        }
                    }
                } else {
                    try {
                        bVar = new b(jVar.a());
                    } catch (JSONException unused2) {
                        k.e("rbx.authlogin", "Error parsing server error message. msg: " + jVar.a());
                    }
                    if (iB == 0) {
                        cVar = new c("FailureUnknownError", "Android-AppLogin-Failure-0-Timeout", -2018);
                    } else if (iB == 400) {
                        cVar = d.this.a(bVar);
                    } else if (iB == 429) {
                        d.this.e();
                        aVar.d();
                        cVar = new c("FailureLoginFloodcheck", "Android-AppLogin-Failure-429-Throttled", -2022);
                    } else {
                        cVar = iB != 500 ? iB != 403 ? iB != 404 ? new c("FailureUnknownError", "Android-AppLogin-Failure-UnknownError", -2010) : new c("FailureUnknownError", "Android-AppLogin-Failure-404-NotFound", -2019) : d.this.a(bVar, aVar) : new c("FailureUnknownError", "Android-AppLogin-Failure-500-InternalServerError", -2020);
                    }
                }
                if (cVar != null) {
                    cVar.f6577d = iB;
                    aVar.a(cVar);
                }
            }
        };
        new h().a(u.B(), new LoginAuthRequestBody(str, str2, str3, str4, str5), null, iVar).c();
    }

    void d() {
        k.b("rbx.authlogin", "onLoginOK.");
        com.roblox.client.s.h.a().a(this.f6580c.d());
        com.roblox.client.s.h.a().a(true);
        f();
        com.roblox.client.ad.b.a().b(a(), b());
    }

    void e() {
        this.f6578a = 0;
    }

    private void f() {
        this.f6582e.a().edit().putLong("user_logged_in_time", System.currentTimeMillis()).apply();
    }

    protected c a(JSONObject jSONObject, a aVar) {
        k.b("rbx.authlogin", "callLoginWithAuthV1(). errorCode=200. requires 2 step verification");
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("twoStepVerificationData");
            aVar.a(jSONObject2.getString("ticket"), jSONObject2.getString("mediaType"), this.f6580c.e());
            return null;
        } catch (JSONException unused) {
            k.e("rbx.authlogin", "callLoginWithApi. Error parsing 2SV response.");
            return new c("Failure2SVJSON", "Android-AppLogin-Failure-UnknownError", -2010);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(b bVar) {
        c cVar = new c();
        int i = bVar != null ? bVar.f7727a : 1000;
        if (i == 0) {
            cVar.f6576c = -2010;
            cVar.f6574a = "FailureServerError";
        } else if (i == 3) {
            cVar.f6576c = -2011;
            cVar.f6574a = "FailureInvalidUsernamePassword";
        } else if (i == 8) {
            cVar.f6576c = -2012;
            cVar.f6574a = "FailureCredentialNotSupported";
        } else {
            cVar.f6576c = -2010;
            cVar.f6574a = "FailureUnknownError";
        }
        cVar.f6575b = "Android-AppLogin-Failure-400-BadRequest";
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c a(b bVar, a aVar) {
        String str;
        String str2;
        int i = bVar != null ? bVar.f7727a : 1000;
        int i2 = -2022;
        if (i == 1) {
            int i3 = this.f6578a + 1;
            this.f6578a = i3;
            if (i3 > com.roblox.client.b.J()) {
                aVar.c();
            } else {
                i2 = -2013;
            }
            str = "FailureInvalidUsernamePassword";
            str2 = "Android-AppLogin-Failure-403-Credentials";
        } else if (i == 2) {
            e();
            i2 = -2021;
            str = "Captcha";
            str2 = "Android-AppLogin-Failure-403-Captcha";
        } else if (i == 4) {
            e();
            aVar.b();
            str = "FailureResetPasswordRequired";
            str2 = "Android-AppLogin-Failure-403-PasswordResetRequired";
        } else if (i == 5) {
            i2 = -2014;
            str = "FailureLoginNullPasswordSocialLogin";
            str2 = "Android-AppLogin-Failure-403-NullPassword";
        } else if (i == 6) {
            i2 = -2015;
            str = "FailureTwoStepVerification";
            str2 = "Android-AppLogin-Failure-403-TwoStepVerification";
        } else if (i == 9) {
            i2 = -2016;
            str = "FailureDefaultLoginRequired";
            str2 = "Android-AppLogin-Failure-403-DefaultLoginRequired";
        } else if (i == 10) {
            i2 = -2017;
            str = "FailureUnverifiedCredentials";
            str2 = "Android-AppLogin-Failure-403-UnverifiedCredentials";
        } else if (i != 14) {
            i2 = -2010;
            str = "FailureUnknownError";
            str2 = "Android-AppLogin-Failure-UnknownError";
        } else {
            i2 = -2023;
            str = "FailureLuobuUser";
            str2 = "Android-AppLogin-Failure-403-LuobuUser";
        }
        return new c(str, str2, i2);
    }

    protected c a(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject("user");
            this.f6580c.b(jSONObject2.getString("name"));
            this.f6580c.a(jSONObject2.getLong("id"));
            return null;
        } catch (JSONException unused) {
            return new c("MissingUserInfo", "Android-AppLogin-Failure-UnknownError", -2010);
        }
    }

    protected static class b extends com.roblox.platform.http.returntypes.a {
        b(String str) throws JSONException {
            super(str);
            if (!a()) {
                throw new JSONException("Invalid Error Payload");
            }
        }
    }
}
