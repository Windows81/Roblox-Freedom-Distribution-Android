package com.roblox.client.signup.multiscreen.b;

import android.text.TextUtils;
import androidx.lifecycle.LiveData;
import c.ad;
import com.roblox.client.signup.multiscreen.a.h;
import com.roblox.platform.http.postbody.webinterface.ChangeUsernamePostBody;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x extends t implements w {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Pattern f7239e = Pattern.compile("([A-Z]|[a-z]|[0-9]|_)*");
    private com.roblox.client.signup.multiscreen.c f;
    private s g;
    private com.roblox.client.signup.multiscreen.d.b h;
    private com.roblox.client.http.f i;
    private u j;
    private com.roblox.client.ad.c k;
    private com.roblox.client.ad.b l;
    private boolean m;
    private String n;

    @Override // com.roblox.client.signup.multiscreen.b.w
    public LiveData<com.roblox.client.signup.multiscreen.a.h> c() {
        return this;
    }

    public x(com.roblox.client.signup.multiscreen.c cVar, s sVar, com.roblox.client.http.f fVar, u uVar, com.roblox.client.ad.c cVar2, com.roblox.client.ad.b bVar) {
        this.f = cVar;
        this.g = sVar;
        this.i = fVar;
        this.j = uVar;
        this.k = cVar2;
        this.l = bVar;
    }

    @Override // com.roblox.client.signup.multiscreen.b.w
    public String a() {
        return this.n;
    }

    @Override // com.roblox.client.signup.multiscreen.b.w
    public LiveData<com.roblox.client.signup.multiscreen.a.h> a(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        b((String) null);
        d(str, aVar);
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.w
    public LiveData<com.roblox.client.signup.multiscreen.a.h> b(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        this.m = false;
        this.n = null;
        c(str, aVar);
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.w
    public LiveData<com.roblox.client.signup.multiscreen.a.h> a(String str) {
        c(str);
        return this;
    }

    @Override // com.roblox.client.signup.multiscreen.b.w
    public boolean b() {
        return this.m;
    }

    /* JADX INFO: renamed from: com.roblox.client.signup.multiscreen.b.x$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f7240a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.roblox.client.signup.multiscreen.a.a f7241b;

        AnonymousClass1(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
            this.f7240a = str;
            this.f7241b = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                final String strEncode = URLEncoder.encode(this.f7240a, "UTF-8");
                com.roblox.client.http.c cVarA = x.this.i.a(com.roblox.client.u.c(strEncode, com.roblox.client.ae.t.a(x.this.a(this.f7241b.f7140b, this.f7241b.f7141c, this.f7241b.f7139a))), null, new com.roblox.client.http.i() { // from class: com.roblox.client.signup.multiscreen.b.x.1.1
                    @Override // com.roblox.client.http.i, com.roblox.client.http.l
                    public void a(final com.roblox.client.http.j jVar) {
                        com.roblox.client.ae.k.b("UsernameValidatorImpl", "url: " + jVar.d());
                        x.this.f.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.x.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                JSONObject jSONObject;
                                com.roblox.client.ae.k.b("rbx.signup", "UsernameSuggestion: responseCode=" + jVar.b());
                                if (jVar.b() != 200) {
                                    x.this.a(com.roblox.client.signup.multiscreen.a.h.a(strEncode, h.a.SUGGESTION_ERROR));
                                    x.this.g.a(jVar.d(), jVar.b());
                                    return;
                                }
                                com.roblox.client.ae.k.b("rbx.signup", "UsernameSuggestion: body=" + jVar.a());
                                try {
                                    jSONObject = new JSONObject(jVar.a());
                                    x.this.g.b("Success");
                                } catch (JSONException unused) {
                                    jSONObject = new JSONObject();
                                    x.this.g.b("JsonException");
                                }
                                boolean zOptBoolean = jSONObject.optBoolean("didGenerateNewUsername");
                                String strOptString = jSONObject.optString("suggestedUsername");
                                if (zOptBoolean && !TextUtils.isEmpty(strOptString)) {
                                    x.this.a(com.roblox.client.signup.multiscreen.a.h.a(strOptString, h.a.NEW_SUGGESTION));
                                    x.this.g.c("Android-AppSignup-UsernameGenerated");
                                } else {
                                    x.this.a(com.roblox.client.signup.multiscreen.a.h.a(strEncode, h.a.SUGGESTION_ERROR));
                                    x.this.g.c("Android-AppSignup-UsernameNotGenerated");
                                }
                            }
                        });
                    }
                });
                x.this.g.c("Android-AppSignup-GenerateUsernameAttempt");
                cVarA.c();
            } catch (UnsupportedEncodingException unused) {
                x.this.g.a("UnsupportedEncodingException");
            }
        }
    }

    private void c(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        this.f.a().execute(new AnonymousClass1(str, aVar));
    }

    private void d(final String str, final com.roblox.client.signup.multiscreen.a.a aVar) {
        this.f.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.x.2
            /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    Method dump skipped, instruction units count: 249
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.signup.multiscreen.b.x.AnonymousClass2.run():void");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.signup.multiscreen.d.b e(String str, com.roblox.client.signup.multiscreen.a.a aVar) {
        if (com.roblox.client.b.ce()) {
            return new com.roblox.client.signup.multiscreen.d.c(str, aVar, this.g, this);
        }
        return new com.roblox.client.signup.multiscreen.d.a(str, aVar, this.g, this);
    }

    public String a(int i, int i2, int i3) {
        return com.roblox.client.ae.t.a("%d/%d/%d", Integer.valueOf(i + 1), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    private void c(String str) {
        com.roblox.client.ae.k.c("UsernameValidatorImpl", "Username: " + this.n + ". Password: " + str);
        if (!this.m) {
            b(com.roblox.client.signup.multiscreen.a.h.a(this.n, h.a.USERNAME_NOT_CHANGED));
            return;
        }
        this.g.c("Android-VAppSignup-ChangeUsernameAttempt");
        this.j.a(new ChangeUsernamePostBody(this.n, str)).a(new e.d<ad>() { // from class: com.roblox.client.signup.multiscreen.b.x.3
            @Override // e.d
            public void a(final e.b<ad> bVar, final e.l<ad> lVar) {
                x.this.f.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.x.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.client.ae.k.c("UsernameValidatorImpl", "Code: " + lVar.a() + ". ErrorBody: " + lVar.f() + ". Message: " + lVar.b() + ". Body: " + lVar.e());
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        if (bVar2.b()) {
                            x.this.g.c("Android-VAppSignup-ChangeUsernameSuccess");
                            x.this.l.b(x.this.n, "Username");
                            x.this.k.b(x.this.n);
                            x.this.a(com.roblox.client.signup.multiscreen.a.h.a(x.this.n, h.a.USERNAME_CHANGED));
                            return;
                        }
                        x.this.a(com.roblox.client.signup.multiscreen.a.h.a(x.this.n, h.a.USERNAME_NOT_CHANGED));
                        x.this.g.b(bVar.d().a().h(), bVar2.f7732a, bVar2.c());
                    }
                });
            }

            @Override // e.d
            public void a(final e.b<ad> bVar, final Throwable th) {
                x.this.f.a().execute(new Runnable() { // from class: com.roblox.client.signup.multiscreen.b.x.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.client.ae.k.c("UsernameValidatorImpl", "doSignUp.onFailure: " + th.getMessage());
                        x.this.a(com.roblox.client.signup.multiscreen.a.h.a("username", h.a.USERNAME_NOT_CHANGED));
                        x.this.g.b(bVar.d().a().h(), 0, -1);
                    }
                });
            }
        });
    }

    public void b(String str) {
        if (str == null) {
            this.m = false;
            this.n = null;
        } else {
            this.m = true;
            this.n = str;
        }
    }
}
