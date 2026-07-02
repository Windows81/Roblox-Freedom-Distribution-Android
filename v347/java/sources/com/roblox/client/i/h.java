package com.roblox.client.i;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.widget.helper.ItemTouchHelper;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.chat.a.n;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.m;
import com.roblox.client.http.post.LoginApiRequestBody;
import com.roblox.client.http.r;
import com.roblox.client.j.b;
import com.roblox.client.login.d;
import com.roblox.client.pushnotification.o;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7195a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7196b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7197c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7198d = 0;

    public interface a {
        void a(boolean z, int i);
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h f7213a = new h();
    }

    public interface c {
        void a();

        void a(int i, String str);

        void a(Bundle bundle);

        void a(String str, String str2, String str3);

        void b();
    }

    public interface e {
        void a();
    }

    public interface f {
        void a();

        void b();

        void c();

        void d();
    }

    public static h a() {
        return b.f7213a;
    }

    public h() {
        g();
    }

    public long b() {
        return this.f7196b;
    }

    public void a(long j) {
        this.f7196b = j;
    }

    public boolean c() {
        return this.f7196b != -1;
    }

    public boolean d() {
        return this.f7197c;
    }

    public void a(boolean z) {
        this.f7197c = z;
    }

    public void a(final a aVar, com.roblox.client.http.f fVar) {
        fVar.a(RobloxSettings.balanceApiUrl(), null, new i() { // from class: com.roblox.client.i.h.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                boolean z = false;
                com.roblox.client.q.d dVarA = com.roblox.client.q.d.a();
                int iJ = dVarA.j();
                if (!jVar.a().isEmpty()) {
                    try {
                        iJ = new JSONObject(jVar.a()).optInt("robux");
                        dVarA.d(iJ);
                        z = true;
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                if (aVar != null) {
                    aVar.a(z, iJ);
                }
            }
        }).c();
    }

    public void a(String str, String str2, c cVar) {
        this.f7195a = str;
        b(str, str2, cVar);
    }

    public void a(final Context context, final f fVar) {
        new com.roblox.client.q.b(new m() { // from class: com.roblox.client.i.h.2
            @Override // com.roblox.client.http.m
            public void a(j jVar) {
                int iB = jVar.b();
                long j = h.this.j();
                long jCurrentTimeMillis = j > 0 ? System.currentTimeMillis() - j : -1L;
                switch (iB) {
                    case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        fVar.a();
                        h.this.a(context, jVar.a(), new e() { // from class: com.roblox.client.i.h.2.1
                            @Override // com.roblox.client.i.h.e
                            public void a() {
                                fVar.c();
                            }
                        });
                        com.roblox.client.i.f.c(iB);
                        break;
                    case 401:
                        h.this.a(context);
                        fVar.b();
                        com.roblox.client.i.f.a("FailureInvalidUserSession", iB, jVar.c(), jVar.a(), h.this.f7195a, jVar.d(), jCurrentTimeMillis);
                        com.roblox.client.i.f.a(j, System.currentTimeMillis(), h.this.k());
                        break;
                    default:
                        fVar.d();
                        com.roblox.client.i.f.a("FailureSessionCheck", iB, jVar.c(), jVar.a(), h.this.f7195a, jVar.d(), jCurrentTimeMillis);
                        break;
                }
            }
        }).b();
    }

    public void a(m mVar) {
        com.roblox.client.q.b bVar = new com.roblox.client.q.b(mVar);
        bVar.a();
        bVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, final e eVar) {
        this.f7197c = true;
        a(str);
        com.roblox.client.login.d dVar = new com.roblox.client.login.d(context, "PostLogin", this.f7196b);
        dVar.a(new d.g() { // from class: com.roblox.client.i.h.3
            @Override // com.roblox.client.login.d.g
            public void a() {
                eVar.a();
            }
        });
        dVar.a();
    }

    private void a(String str) {
        if (str != null && !str.isEmpty()) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f7196b = jSONObject.optLong("UserId", this.f7196b);
                com.roblox.client.q.d.a().a(jSONObject.optInt("AgeBracket", 1) == 1);
                this.f7195a = jSONObject.optString("Username", this.f7195a);
                com.roblox.client.q.d.a().b(this.f7195a);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ContactRequestObject.JSON_FIELD_EMAIL);
                if (jSONObjectOptJSONObject != null) {
                    com.roblox.client.q.d.a().a(jSONObjectOptJSONObject.optString("Value", null));
                }
                b(false);
                com.roblox.client.q.d.a().e(jSONObject.optInt("MembershipType", 0));
                com.roblox.client.q.d.a().d(jSONObject.optInt("RobuxBalance"));
                com.roblox.client.q.d.a().a(com.roblox.client.q.a.a(jSONObject));
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void a(Context context, boolean z) {
        a(context);
        com.roblox.client.b.c.a("SessionManager", "logout");
        if (z) {
            f();
        }
        com.roblox.client.i.e.a().a(2);
    }

    public void a(Context context, b.a aVar) {
        a(context);
        com.roblox.client.b.c.a("SessionManager", "logout");
        a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        this.f7197c = false;
        a(-1L);
        i();
        l();
        b(true);
        com.roblox.client.chat.a.a.a().c();
        n.a().c();
        com.roblox.client.q.d.a().b();
        o.a().b();
        b(context);
    }

    private void b(Context context) {
        if (context != null) {
            ((NotificationManager) context.getSystemService("notification")).cancelAll();
        }
    }

    private void a(final b.a aVar) {
        com.roblox.client.http.g.a().a(RobloxSettings.logoutApiUrl(), null, null, new i() { // from class: com.roblox.client.i.h.4
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                com.roblox.client.util.g.b("rbx.login", "Logout: " + jVar);
                if (jVar.b() != 200) {
                    com.roblox.client.http.b.c().a(RobloxSettings.getDomain(), RobloxSettings.baseUrlSecure());
                }
                aVar.a();
            }
        }).c();
    }

    private void f() {
        new r(RobloxSettings.logoutApiUrl(), null, null, new m() { // from class: com.roblox.client.i.h.5
            @Override // com.roblox.client.http.m
            public void a(j jVar) {
                com.roblox.client.util.g.b("rbx.login", "Logout: " + jVar);
                if (jVar.b() != 200) {
                    com.roblox.client.http.b.c().a(RobloxSettings.getDomain(), RobloxSettings.baseUrlSecure());
                }
            }
        }).c();
    }

    private void g() {
        SharedPreferences keyValues = RobloxSettings.getKeyValues();
        this.f7195a = keyValues.getString("username", "");
        this.f7196b = keyValues.getLong("userid_long", -1L);
        if (this.f7196b == -1) {
            this.f7196b = keyValues.getInt("userid", -1);
        }
        com.roblox.client.q.d.a().a(keyValues.getBoolean("under13", true));
        com.roblox.client.q.d.a().b(this.f7195a);
    }

    private void b(boolean z) {
        SharedPreferences.Editor editorEdit = RobloxSettings.getKeyValues().edit();
        editorEdit.remove("userid");
        if (z) {
            editorEdit.remove("userid_long");
            editorEdit.remove("under13");
        } else {
            editorEdit.putString("username", this.f7195a);
            editorEdit.putLong("userid_long", this.f7196b);
            editorEdit.putBoolean("under13", com.roblox.client.q.d.a().g());
        }
        editorEdit.apply();
    }

    public void e() {
        this.f7198d = 0;
    }

    public void b(long j) {
        com.roblox.client.util.g.b("rbx.login", "onLoginOK: userId:" + j);
        com.roblox.client.i.f.b(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
        c(j);
    }

    public void a(String str, long j) {
        com.roblox.client.util.g.b("rbx.login", "onSignUpOK: username:" + str + ", userId:" + this.f7196b);
        this.f7195a = str;
        c(j);
    }

    private void c(long j) {
        this.f7196b = j;
        this.f7197c = true;
        h();
        com.roblox.client.q.c.a().b(this.f7195a, "Username");
    }

    private void h() {
        RobloxSettings.getKeyValues().edit().putLong("user_logged_in_time", System.currentTimeMillis()).apply();
    }

    private void i() {
        RobloxSettings.getKeyValues().edit().remove("user_logged_in_time").apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long j() {
        return RobloxSettings.getKeyValues().getLong("user_logged_in_time", -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long k() {
        return RobloxSettings.getKeyValues().getLong("last_auth_cookie_expir_key", -1L);
    }

    private void l() {
        RobloxSettings.getKeyValues().edit().remove("last_auth_cookie_expir_key").apply();
    }

    private void b(final String str, String str2, final c cVar) {
        i iVar = new i() { // from class: com.roblox.client.i.h.6
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                int i;
                String str3;
                String str4;
                d dVar;
                String str5;
                String str6;
                int i2;
                String str7;
                int i3;
                String str8;
                String str9;
                JSONObject jSONObject;
                int iB = jVar.b();
                if (iB != 200) {
                    try {
                        str3 = null;
                        dVar = new d(jVar.a());
                        i = 0;
                        str4 = null;
                    } catch (JSONException e2) {
                        i = -1000;
                        str3 = "Android-AppLogin-Failure-UnknownError";
                        str4 = "FailureJSON";
                        dVar = null;
                    }
                    if (dVar == null) {
                        str5 = str4;
                        str6 = str3;
                        i2 = i;
                        str7 = null;
                    } else {
                        switch (iB) {
                            case 0:
                                str5 = "FailureUnknownError";
                                str6 = "Android-AppLogin-Failure-0-Timeout";
                                i2 = -1005;
                                str7 = null;
                                break;
                            case 400:
                                i2 = -1001;
                                str7 = dVar.f7215b;
                                str5 = "FailureInvalidUsernamePassword";
                                str6 = "Android-AppLogin-Failure-400-BadRequest";
                                break;
                            case 403:
                                switch (dVar.f7214a) {
                                    case 1:
                                        h.this.f7198d++;
                                        if (h.this.f7198d > com.roblox.client.b.ai()) {
                                            Bundle bundle = new Bundle();
                                            bundle.putInt("DialogTitle", R.string.Authentication_Login_Response_PleaseTryAgain);
                                            bundle.putInt("DialogMessage", R.string.Authentication_Login_Response_IncorrectCredentialsForgotPasswordMessage);
                                            bundle.putInt("PositiveButton", R.string.Authentication_Login_Action_ForgotPassword);
                                            bundle.putInt("NegativeButton", R.string.CommonUI_Features_Action_Ok);
                                            bundle.putString("CallContext", "WrongCredentialsForgotPassword");
                                            cVar.a(bundle);
                                        } else {
                                            i = -1002;
                                        }
                                        str5 = "FailureInvalidUsernamePassword";
                                        str6 = "Android-AppLogin-Failure-403-Credentials";
                                        i2 = i;
                                        str7 = null;
                                        break;
                                    case 2:
                                        h.this.e();
                                        str5 = "Captcha";
                                        str6 = "Android-AppLogin-Failure-403-Captcha";
                                        i2 = -1008;
                                        str7 = null;
                                        break;
                                    case 3:
                                    default:
                                        str5 = "FailureUnknownError";
                                        str6 = "Android-AppLogin-Failure-UnknownError";
                                        i2 = -1000;
                                        str7 = null;
                                        break;
                                    case 4:
                                        h.this.e();
                                        cVar.b();
                                        str5 = "FailureResetPasswordRequired";
                                        str6 = "Android-AppLogin-Failure-403-PasswordResetRequired";
                                        i2 = i;
                                        str7 = null;
                                        break;
                                    case 5:
                                        i2 = -1003;
                                        str7 = dVar.f7215b;
                                        str5 = "FailureLoginNullPasswordSocialLogin";
                                        str6 = "Android-AppLogin-Failure-403-NullPassword";
                                        break;
                                    case 6:
                                        i2 = -1004;
                                        str7 = dVar.f7215b;
                                        str5 = "FailureTwoStepVerification";
                                        str6 = "Android-AppLogin-Failure-403-TwoStepVerification";
                                        break;
                                }
                                break;
                            case 404:
                                str5 = "FailureUnknownError";
                                str6 = "Android-AppLogin-Failure-404-NotFound";
                                i2 = -1006;
                                str7 = null;
                                break;
                            case 429:
                                h.this.e();
                                Bundle bundle2 = new Bundle();
                                bundle2.putInt("DialogTitle", R.string.CommonUI_Messages_Response_TooManyAttemptsText);
                                bundle2.putInt("DialogMessage", R.string.Authentication_Login_Response_TooManyAttemptsMessage);
                                bundle2.putInt("PositiveButton", R.string.Authentication_ResetPassword_Label_ResetPassword);
                                bundle2.putInt("NegativeButton", R.string.CommonUI_Features_Action_Ok);
                                bundle2.putString("CallContext", "FloodcheckedResetPassword");
                                cVar.a(bundle2);
                                str5 = "FailureLoginFloodcheck";
                                str6 = "Android-AppLogin-Failure-429-Throttled";
                                i2 = i;
                                str7 = null;
                                break;
                            case 500:
                                i2 = -1007;
                                str7 = dVar.f7215b;
                                str5 = "FailureUnknownError";
                                str6 = "Android-AppLogin-Failure-500-InternalServerError";
                                break;
                            default:
                                str5 = "FailureUnknownError";
                                str6 = "Android-AppLogin-Failure-UnknownError";
                                i2 = -1000;
                                str7 = null;
                                break;
                        }
                    }
                } else {
                    h.this.e();
                    try {
                        str9 = null;
                        jSONObject = new JSONObject(jVar.a());
                        i3 = 0;
                        str8 = null;
                    } catch (JSONException e3) {
                        com.roblox.client.util.g.e("rbx.login", "callLoginWithApi. Error parsing server response on 200.");
                        i3 = -1000;
                        str8 = "Failure2SVJSON";
                        str9 = "Android-AppLogin-Failure-UnknownError";
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        String strOptString = jSONObject.optString("message", null);
                        long jOptLong = jSONObject.optLong("userId", -1L);
                        if ("TwoStepverificationRequired".equalsIgnoreCase(strOptString)) {
                            com.roblox.client.util.g.b("rbx.login", "callLoginWithApi(). code=200. requires 2 step verification");
                            try {
                                cVar.a(jSONObject.getString("tl"), jSONObject.getString("mediaType"), str);
                            } catch (JSONException e4) {
                                com.roblox.client.util.g.e("rbx.login", "callLoginWithApi. Error parsing 2SV response.");
                                i3 = -1000;
                                str8 = "FailureJSON";
                                str9 = "Android-AppLogin-Failure-UnknownError";
                            }
                        } else if (jOptLong == -1) {
                            com.roblox.client.util.g.e("rbx.login", "callLoginWithApi() Error no user ID");
                            i3 = -1000;
                            str8 = "MissingUserInfo";
                            str9 = "Android-AppLogin-Failure-UnknownError";
                        } else {
                            com.roblox.client.util.g.b("rbx.login", "callLoginWithApi(). code=200.");
                            h.this.b(jOptLong);
                            cVar.a();
                        }
                    }
                    str5 = str8;
                    str6 = str9;
                    i2 = i3;
                    str7 = null;
                }
                if (i2 != 0) {
                    cVar.a(i2, str7);
                }
                if (str5 != null) {
                    com.roblox.client.util.g.b("rbx.login", "callLoginWithApi() code:" + iB + " action:" + str5);
                    h.this.a(str5, str6, jVar);
                }
            }
        };
        new com.roblox.client.http.h().a(RobloxSettings.loginApiUrlV2(), a(str, str2), null, iVar).c();
    }

    private LoginApiRequestBody a(String str, String str2) {
        LoginApiRequestBody loginApiRequestBody = new LoginApiRequestBody(str, str2);
        if (com.roblox.client.b.aj()) {
            loginApiRequestBody.setDeviceHandle(com.roblox.client.c.a().c());
        }
        return loginApiRequestBody;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, j jVar) {
        com.roblox.client.i.f.a(str, str2, jVar.b(), jVar.c(), jVar.a(), this.f7195a, jVar.d());
    }

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f7214a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f7215b;

        d(String str) throws JSONException {
            JSONObject jSONObject = new JSONObject(str).getJSONArray("errors").getJSONObject(0);
            this.f7214a = jSONObject.getInt("code");
            this.f7215b = jSONObject.getString("message");
        }
    }
}
