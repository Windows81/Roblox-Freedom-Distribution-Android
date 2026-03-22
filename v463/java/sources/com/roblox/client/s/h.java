package com.roblox.client.s;

import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.roblox.client.ae.k;
import com.roblox.client.contacts.model.ContactRequestObject;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.m;
import com.roblox.client.l;
import com.roblox.client.login.a;
import com.roblox.client.p;
import com.roblox.client.pushnotification.o;
import com.roblox.client.t.c;
import com.roblox.client.u;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f7034a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7035b = false;

    public interface a {
        void a(boolean z, int i);
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h f7048a = new h();
    }

    public interface c {
        void a();
    }

    public interface d {
        void a();

        void b();

        void c();

        void d();
    }

    public static h a() {
        return b.f7048a;
    }

    public h() {
        e();
    }

    public long b() {
        return this.f7034a;
    }

    public void a(long j) {
        this.f7034a = j;
    }

    public boolean c() {
        return this.f7034a != -1;
    }

    public boolean d() {
        return this.f7035b;
    }

    public void a(boolean z) {
        this.f7035b = z;
        if (com.roblox.client.x.c.h() && z) {
            u.at();
        }
    }

    public void a(final a aVar, com.roblox.client.http.f fVar) {
        fVar.a(u.y(), null, new i() { // from class: com.roblox.client.s.h.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                com.roblox.client.ad.c cVarA = com.roblox.client.ad.c.a();
                int iJ = cVarA.j();
                boolean z = false;
                if (!jVar.a().isEmpty()) {
                    try {
                        iJ = new JSONObject(jVar.a()).optInt("robux");
                        cVarA.b(iJ);
                        z = true;
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(z, iJ);
                }
            }
        }).c();
    }

    public void a(final Context context, final d dVar) {
        com.roblox.client.ad.a aVar = new com.roblox.client.ad.a(new m() { // from class: com.roblox.client.s.h.2
            @Override // com.roblox.client.http.m
            public void a(j jVar) {
                int iB = jVar.b();
                long jH = h.this.h();
                long jCurrentTimeMillis = jH > 0 ? System.currentTimeMillis() - jH : -1L;
                if (iB == 200) {
                    dVar.a();
                    h.this.b(context, jVar.a(), new c() { // from class: com.roblox.client.s.h.2.1
                        @Override // com.roblox.client.s.h.c
                        public void a() {
                            dVar.c();
                        }
                    });
                    f.b(iB);
                } else {
                    if (iB == 401) {
                        h.this.a(context);
                        dVar.b();
                        f.a("FailureInvalidUserSession", iB, jVar.d(), jVar.a(), com.roblox.client.ad.c.a().e(), jVar.e(), jCurrentTimeMillis);
                        f.a(jH, System.currentTimeMillis(), h.this.i());
                        return;
                    }
                    dVar.d();
                    f.a("FailureSessionCheck", iB, jVar.d(), jVar.a(), com.roblox.client.ad.c.a().e(), jVar.e(), jCurrentTimeMillis);
                }
            }
        });
        f.c("autoLogin");
        aVar.b();
    }

    public void a(m mVar) {
        com.roblox.client.ad.a aVar = new com.roblox.client.ad.a(mVar);
        aVar.a();
        f.c("activeSession");
        aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, String str, final c cVar) {
        this.f7035b = true;
        a(str);
        com.roblox.client.login.a aVar = new com.roblox.client.login.a(context, "PostLogin", this.f7034a);
        aVar.a(new a.g() { // from class: com.roblox.client.s.h.3
            @Override // com.roblox.client.login.a.g
            public void a() {
                cVar.a();
            }
        });
        aVar.a();
    }

    private void a(String str) {
        if (str == null || str.isEmpty()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f7034a = jSONObject.optLong("UserId", this.f7034a);
            boolean z = true;
            int iOptInt = jSONObject.optInt("AgeBracket", 1);
            com.roblox.client.ad.c.a().a(this.f7034a);
            com.roblox.client.ad.c cVarA = com.roblox.client.ad.c.a();
            if (iOptInt != 1) {
                z = false;
            }
            cVarA.a(z);
            com.roblox.client.ad.c.a().b(jSONObject.optString("Username", com.roblox.client.ad.c.a().e()));
            com.roblox.client.ad.c.a().c(jSONObject.optString("DisplayName", ""));
            com.roblox.client.ad.c.a().e(jSONObject.optString("CountryCode", ""));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(ContactRequestObject.JSON_FIELD_EMAIL);
            if (jSONObjectOptJSONObject != null) {
                com.roblox.client.ad.c.a().a(jSONObjectOptJSONObject.optString("Value", null));
            }
            b(false);
            com.roblox.client.ad.c.a().c(jSONObject.optInt("MembershipType", 0));
            com.roblox.client.ad.c.a().b(jSONObject.optInt("RobuxBalance"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void a(Context context, String str, final c cVar) {
        this.f7035b = true;
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                this.f7034a = jSONObject.optLong("userId", this.f7034a);
                com.roblox.client.ad.c.a().a(this.f7034a);
                com.roblox.client.ad.c.a().a(jSONObject.optBoolean("isUnder13"));
                com.roblox.client.ad.c.a().b(jSONObject.optString("username", com.roblox.client.ad.c.a().e()));
                com.roblox.client.ad.c.a().c(jSONObject.optString("displayName", ""));
                b(false);
                com.roblox.client.ad.c.a().c(jSONObject.optInt("membershipType", 0));
                if (com.roblox.client.m.c.a().cI()) {
                    com.roblox.client.ad.c.a().e(jSONObject.optString("countryCode", ""));
                }
            } catch (JSONException e2) {
                k.b("onAccountInfoFromLua: Exception: + " + e2.getMessage());
            }
        }
        com.roblox.client.login.a aVar = new com.roblox.client.login.a(context, "PostLogin", this.f7034a);
        aVar.a(new a.g() { // from class: com.roblox.client.s.h.4
            @Override // com.roblox.client.login.a.g
            public void a() {
                cVar.a();
            }
        });
        aVar.a();
        if (com.roblox.client.x.c.i()) {
            k.b("SessionManager", "Post the request to RealtimeService to start SignalR asynchronously.");
            org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.g());
        }
    }

    public void a(Context context, boolean z, c.a aVar) {
        if (z) {
            a(aVar);
        }
        a(context);
        l.a().d().a();
        com.roblox.client.analytics.d.a("SessionManager", "logout");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context) {
        this.f7035b = false;
        a(-1L);
        g();
        j();
        b(true);
        com.roblox.client.e.a.b.a().c();
        com.roblox.client.ad.c.a().b();
        o.a().b();
        b(context);
        k.b("SessionManager", "Post the request to RealtimeService to close SignalR asynchronously.");
        org.greenrobot.eventbus.c.a().c(new com.roblox.client.l.h());
    }

    private void b(Context context) {
        if (context != null) {
            ((NotificationManager) context.getSystemService("notification")).cancelAll();
        }
    }

    private void a(final c.a aVar) {
        i iVar = new i() { // from class: com.roblox.client.s.h.5
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                k.b("rbx.login", "Logout: " + jVar);
                if (jVar.b() != 200) {
                    p.a("logout", jVar.d(), jVar.b(), -1);
                    com.roblox.platform.http.h.b().b(u.f(), u.d());
                }
                c.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
        };
        com.roblox.client.http.g.a().a(u.w(), null, null, iVar).c();
    }

    private void e() {
        SharedPreferences sharedPreferencesG = u.g();
        String string = sharedPreferencesG.getString("username", "");
        String string2 = sharedPreferencesG.getString("displayName", "");
        long j = sharedPreferencesG.getLong("userid_long", -1L);
        this.f7034a = j;
        if (j == -1) {
            this.f7034a = sharedPreferencesG.getInt("userid", -1);
        }
        com.roblox.client.ad.c.a().a(sharedPreferencesG.getBoolean("under13", true));
        com.roblox.client.ad.c.a().b(string);
        com.roblox.client.ad.c.a().c(string2);
    }

    private void b(boolean z) {
        SharedPreferences.Editor editorEdit = u.g().edit();
        editorEdit.remove("userid");
        if (z) {
            editorEdit.remove("userid_long");
            editorEdit.remove("displayName");
            editorEdit.remove("under13");
        } else {
            editorEdit.putString("username", com.roblox.client.ad.c.a().e());
            editorEdit.putString("displayName", com.roblox.client.ad.c.a().f());
            editorEdit.putLong("userid_long", this.f7034a);
            editorEdit.putBoolean("under13", com.roblox.client.ad.c.a().i());
        }
        editorEdit.apply();
    }

    public void a(String str, long j) {
        k.b("rbx.login", "onSignUpOK: username:" + str + ", userId:" + j);
        b(j);
    }

    private void b(long j) {
        this.f7034a = j;
        this.f7035b = true;
        f();
        com.roblox.client.ad.b.a().b(com.roblox.client.ad.c.a().e(), "Username");
    }

    private void f() {
        u.g().edit().putLong("user_logged_in_time", System.currentTimeMillis()).apply();
    }

    private void g() {
        u.g().edit().remove("user_logged_in_time").apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long h() {
        return u.g().getLong("user_logged_in_time", -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long i() {
        return u.g().getLong("last_auth_cookie_expir_key", -1L);
    }

    private void j() {
        u.g().edit().remove("last_auth_cookie_expir_key").apply();
    }
}
