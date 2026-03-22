package com.roblox.client.signup;

import android.text.TextUtils;
import com.roblox.client.RobloxSettings;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.util.n;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f7863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.http.c f7864b;

    interface a {
        void a(boolean z);
    }

    interface b {
        void a(boolean z, String str);
    }

    g(com.roblox.client.http.f fVar) {
        com.roblox.client.util.g.b("rbx.signup", "[SignUpHelper] Constructor called.");
        this.f7863a = fVar;
    }

    void a(String str, String str2, final b bVar) {
        this.f7863a.a(RobloxSettings.usernameSuggestionAuthUrl(str, n.a(str2)), null, new com.roblox.client.http.i() { // from class: com.roblox.client.signup.g.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(com.roblox.client.http.j jVar) {
                JSONObject jSONObject;
                com.roblox.client.util.g.b("rbx.signup", "UsernameSuggestion: responseCode=" + jVar.b());
                if (jVar.b() != 200) {
                    bVar.a(false, null);
                    com.roblox.client.b.c.a("SignUpPreValidation", "UsernameSuggestion", "Failure_" + jVar.b());
                    return;
                }
                com.roblox.client.util.g.b("rbx.signup", "UsernameSuggestion: body=" + jVar.a());
                try {
                    jSONObject = new JSONObject(jVar.a());
                    com.roblox.client.b.c.a("SignUpPreValidation", "UsernameSuggestion", "Success");
                } catch (JSONException e) {
                    jSONObject = new JSONObject();
                    com.roblox.client.b.c.a("SignUpPreValidation", "UsernameSuggestion", "JsonException");
                }
                bVar.a(jSONObject.optBoolean("didGenerateNewUsername"), jSONObject.optString("suggestedUsername"));
            }
        }).c();
    }

    void a(String str, final a aVar) {
        if (this.f7864b != null) {
            this.f7864b.cancel(true);
            this.f7864b = null;
        }
        if (TextUtils.isEmpty(str)) {
            aVar.a(true);
            return;
        }
        try {
            String strEncode = URLEncoder.encode(str, Constants.UTF8_NAME);
            this.f7864b = this.f7863a.a(RobloxSettings.emailValidationAuthUrl(strEncode), null, new com.roblox.client.http.i() { // from class: com.roblox.client.signup.g.2
                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                public void a(com.roblox.client.http.j jVar) {
                    JSONObject jSONObject;
                    com.roblox.client.util.g.b("rbx.signup", "EmailValidation: responseCode=" + jVar.b());
                    boolean zOptBoolean = false;
                    if (jVar.b() == 200) {
                        com.roblox.client.util.g.b("rbx.signup", "EmailValidation: body=" + jVar.a());
                        try {
                            jSONObject = new JSONObject(jVar.a());
                            com.roblox.client.b.c.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "Success");
                        } catch (JSONException e) {
                            com.roblox.client.b.c.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "JsonException");
                            jSONObject = new JSONObject();
                        }
                        zOptBoolean = jSONObject.optBoolean("isEmailValid");
                    } else {
                        com.roblox.client.b.c.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "Failure_" + jVar.b());
                    }
                    aVar.a(zOptBoolean);
                    g.this.f7864b = null;
                }
            });
            this.f7864b.c();
        } catch (UnsupportedEncodingException e) {
            aVar.a(false);
        }
    }
}
