package com.roblox.client.signup;

import android.text.TextUtils;
import com.roblox.client.ae.k;
import com.roblox.client.ae.t;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.u;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.http.f f7125a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.http.c f7126b;

    interface a {
        void a(boolean z);
    }

    interface b {
        void a(boolean z, String str);
    }

    e(com.roblox.client.http.f fVar) {
        k.b("rbx.signup", "[SignUpHelper] Constructor called.");
        this.f7125a = fVar;
    }

    void a(String str, String str2, final b bVar) {
        this.f7125a.a(u.c(str, t.a(str2)), null, new i() { // from class: com.roblox.client.signup.e.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                JSONObject jSONObject;
                k.b("rbx.signup", "UsernameSuggestion: responseCode=" + jVar.b());
                if (jVar.b() != 200) {
                    bVar.a(false, null);
                    com.roblox.client.analytics.d.a("SignUpPreValidation", "UsernameSuggestion", "Failure_" + jVar.b());
                    return;
                }
                k.b("rbx.signup", "UsernameSuggestion: body=" + jVar.a());
                try {
                    jSONObject = new JSONObject(jVar.a());
                    com.roblox.client.analytics.d.a("SignUpPreValidation", "UsernameSuggestion", "Success");
                } catch (JSONException unused) {
                    jSONObject = new JSONObject();
                    com.roblox.client.analytics.d.a("SignUpPreValidation", "UsernameSuggestion", "JsonException");
                }
                bVar.a(jSONObject.optBoolean("didGenerateNewUsername"), jSONObject.optString("suggestedUsername"));
            }
        }).c();
    }

    void a(String str, final a aVar) {
        com.roblox.client.http.c cVar = this.f7126b;
        if (cVar != null) {
            cVar.cancel(true);
            this.f7126b = null;
        }
        if (TextUtils.isEmpty(str)) {
            aVar.a(true);
            return;
        }
        try {
            String strEncode = URLEncoder.encode(str, "UTF-8");
            com.roblox.client.http.c cVarA = this.f7125a.a(u.d(strEncode), null, new i() { // from class: com.roblox.client.signup.e.2
                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                public void a(j jVar) {
                    boolean zOptBoolean;
                    JSONObject jSONObject;
                    k.b("rbx.signup", "EmailValidation: responseCode=" + jVar.b());
                    if (jVar.b() == 200) {
                        k.b("rbx.signup", "EmailValidation: body=" + jVar.a());
                        try {
                            jSONObject = new JSONObject(jVar.a());
                            com.roblox.client.analytics.d.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "Success");
                        } catch (JSONException unused) {
                            com.roblox.client.analytics.d.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "JsonException");
                            jSONObject = new JSONObject();
                        }
                        zOptBoolean = jSONObject.optBoolean("isEmailValid");
                    } else {
                        com.roblox.client.analytics.d.a("SignUpPreValidation", ContactRequestObject.JSON_FIELD_EMAIL, "Failure_" + jVar.b());
                        zOptBoolean = false;
                    }
                    aVar.a(zOptBoolean);
                    e.this.f7126b = null;
                }
            });
            this.f7126b = cVarA;
            cVarA.c();
        } catch (UnsupportedEncodingException unused) {
            aVar.a(false);
        }
    }
}
