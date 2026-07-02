package com.roblox.client.p;

import com.roblox.client.RobloxSettings;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.post.TwoStepVerificationResendCodeRequestBody;
import com.roblox.client.http.post.TwoStepVerifyCodeRequestBody;
import com.roblox.client.i.f;
import com.roblox.client.util.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f7530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.roblox.client.http.f f7531b;

    public interface a {
        void a();

        void a(int i);

        void a(long j);

        void a(String str, String str2);
    }

    public b(f fVar, com.roblox.client.http.f fVar2) {
        this.f7530a = fVar;
        this.f7531b = fVar2;
    }

    public void a(final String str, String str2, String str3, boolean z, final a aVar) {
        this.f7531b.a(RobloxSettings.twoSVLoginVerifyUrl(), new TwoStepVerifyCodeRequestBody(str, str3, str2, z), null, new i() { // from class: com.roblox.client.p.b.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                String str4;
                int i;
                String str5;
                boolean z2;
                C0124b c0124b = null;
                int iB = jVar.b();
                if (iB == 200) {
                    g.b("rbx.2sv", "callVerify2SVCode. 2SV code verified.");
                    b.this.f7530a.a(jVar.b());
                    long j = -1;
                    try {
                        j = new JSONObject(jVar.a()).getLong("userId");
                    } catch (JSONException e) {
                        g.e("rbx.2sv", "callVerify2SVCode. Error parsing server response on 200.");
                    }
                    aVar.a(j);
                    z2 = false;
                    i = -1000;
                    str5 = null;
                } else {
                    try {
                        str4 = null;
                        c0124b = new C0124b(jVar.a());
                    } catch (JSONException e2) {
                        str4 = "FailureJSON";
                    }
                    if (c0124b == null) {
                        i = -1000;
                        str5 = str4;
                        z2 = false;
                    } else {
                        switch (iB) {
                            case 403:
                                switch (c0124b.f7538a) {
                                    case 1:
                                        str5 = "Failure2SVUserNotFound";
                                        i = -1001;
                                        z2 = false;
                                        break;
                                    case 2:
                                        str5 = "Failure2SVDisabled";
                                        i = -1002;
                                        z2 = false;
                                        break;
                                    case 3:
                                    default:
                                        i = -1000;
                                        str5 = "FailureUnknownError";
                                        z2 = false;
                                        break;
                                    case 4:
                                        str5 = "Failure2SVCredentialsCheck";
                                        i = -1003;
                                        z2 = false;
                                        break;
                                    case 5:
                                        aVar.a();
                                        z2 = true;
                                        str5 = "Failure2SVInvalidCode";
                                        i = -1000;
                                        break;
                                }
                                break;
                            case 404:
                                str5 = "Failure2SVDisabled";
                                i = -1004;
                                z2 = false;
                                break;
                            case 429:
                                str5 = "Failure2SVFloodCheck";
                                i = -1005;
                                z2 = false;
                                break;
                            default:
                                i = -1000;
                                str5 = "FailureUnknownError";
                                z2 = false;
                                break;
                        }
                    }
                }
                if (str5 != null) {
                    g.b("rbx.2sv", "SM.callVerify2SVCode() code:" + jVar.b() + " error:" + str5);
                    b.this.f7530a.a(str5, str, jVar);
                    if (!z2) {
                        aVar.a(i);
                    }
                }
            }
        }).c();
    }

    public void a(final String str, String str2, final a aVar) {
        i iVar = new i() { // from class: com.roblox.client.p.b.2
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                C0124b c0124b;
                String str3 = null;
                int i = -1000;
                int iB = jVar.b();
                if (iB == 200) {
                    g.b("rbx.2sv", "callResend2SVCode. 2SV code resent.");
                    try {
                        JSONObject jSONObject = new JSONObject(jVar.a());
                        aVar.a(jSONObject.getString("tl"), jSONObject.getString("mediaType"));
                    } catch (JSONException e) {
                        g.e("rbx.2sv", "callResend2SVCode. Error parsing json response.");
                        str3 = "FailureJSON";
                    }
                } else {
                    try {
                        c0124b = new C0124b(jVar.a());
                    } catch (JSONException e2) {
                        str3 = "FailureJSON";
                        c0124b = null;
                    }
                    if (c0124b != null) {
                        switch (iB) {
                            case 403:
                                switch (c0124b.f7538a) {
                                    case 1:
                                        i = -1001;
                                        str3 = "Failure2SVUserNotFound";
                                        break;
                                    case 2:
                                        i = -1002;
                                        str3 = "Failure2SVDisabled";
                                        break;
                                    case 3:
                                    default:
                                        str3 = "FailureUnknownError";
                                        break;
                                    case 4:
                                        i = -1003;
                                        str3 = "Failure2SVCredentialsCheck";
                                        break;
                                }
                                break;
                            case 404:
                                i = -1004;
                                str3 = "Failure2SVDisabled";
                                break;
                            case 429:
                                i = -1005;
                                str3 = "Failure2SVFloodCheck";
                                break;
                            default:
                                str3 = "FailureUnknownError";
                                break;
                        }
                    }
                }
                if (str3 != null) {
                    g.b("rbx.2sv", "callResend2SVCode. code:" + jVar.b() + " error:" + str3);
                    b.this.f7530a.a(str3, str, jVar);
                    aVar.a(i);
                }
            }
        };
        g.b("rbx.2sv", "callResend2SVCode. url=" + RobloxSettings.twoSVResendCodeUrl());
        this.f7531b.a(RobloxSettings.twoSVResendCodeUrl(), new TwoStepVerificationResendCodeRequestBody(str, str2), null, iVar).c();
    }

    /* JADX INFO: renamed from: com.roblox.client.p.b$b, reason: collision with other inner class name */
    private static class C0124b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f7538a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f7539b;

        public C0124b(String str) throws JSONException {
            JSONObject jSONObject = new JSONObject(str).getJSONArray("errors").getJSONObject(0);
            this.f7538a = jSONObject.getInt("code");
            this.f7539b = jSONObject.getString("message");
        }
    }
}
