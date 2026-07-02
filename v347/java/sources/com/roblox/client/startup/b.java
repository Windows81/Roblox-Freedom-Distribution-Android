package com.roblox.client.startup;

import android.content.Context;
import android.webkit.CookieManager;
import com.roblox.abtesting.a;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.MobileDeviceInfoRequestBody;
import com.roblox.client.i;
import com.roblox.client.i.f;
import com.roblox.client.i.h;
import com.roblox.client.j.b;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.f;
import com.roblox.client.o;
import com.roblox.client.startup.d;
import com.roblox.client.util.g;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static b l = null;
    private boolean e;
    private WeakReference<com.roblox.client.startup.c> f;
    private long g;
    private final Context h;
    private final f i;
    private final com.roblox.client.http.f j;
    private final d.b k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7881a = getClass().getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private EnumC0131b f7882b = EnumC0131b.INIT_STATE_NONE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f7883c = e.SYSTEM;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o.c f7884d = o.c.UnKnown;
    private l m = new l() { // from class: com.roblox.client.startup.b.8
        @Override // com.roblox.client.http.l
        public void a(j jVar) {
            if (jVar.b() != 200) {
                b.this.a("BTID with response code not 200");
                b.this.i.a("Android-AppLogin-BrowserTracker-Failed");
                return;
            }
            try {
                long j = new JSONObject(jVar.a()).getLong("browserTrackerId");
                b.this.i.a("Android-AppLogin-BrowserTracker-Success");
                com.roblox.client.c.a().a(j);
                com.roblox.abtesting.a.a().a(j);
                b.this.e();
                b.this.f();
            } catch (JSONException e) {
                b.this.i.a("Android-AppLogin-BrowserTracker-JsonFailed");
                b.this.a("BTID parse exc.");
            }
        }

        @Override // com.roblox.client.http.l
        public void b(j jVar) {
        }
    };

    /* JADX INFO: renamed from: com.roblox.client.startup.b$b, reason: collision with other inner class name */
    enum EnumC0131b {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_DONE_OK,
        INIT_STATE_NO_USER_ID,
        INIT_STATE_UNAUTHORIZED,
        INIT_STATE_SERVICE_UNAVAILABLE,
        INIT_STATE_FAILED_BTID,
        INIT_STATE_FAILED_APP_SETTINGS,
        INIT_STATE_UPGRADE_NEEDED
    }

    public static b a(Context context) {
        if (l == null) {
            synchronized (b.class) {
                if (l == null) {
                    l = new b(context, f.a(), new a());
                }
            }
        }
        return l;
    }

    public static class a implements d.b {
        @Override // com.roblox.client.startup.d.b
        public d a(Context context) {
            return new d(context);
        }
    }

    b(Context context, f fVar, d.b bVar) {
        g.b(this.f7881a, "InitHelper created.");
        this.h = context.getApplicationContext();
        this.i = fVar;
        this.j = com.roblox.client.http.g.a();
        this.k = bVar;
        com.roblox.client.b.d.a().b();
    }

    public void a(com.roblox.client.startup.c cVar) {
        this.f = new WeakReference<>(cVar);
    }

    public void b(com.roblox.client.startup.c cVar) {
        com.roblox.client.startup.c cVar2;
        if (this.f != null && (cVar2 = this.f.get()) != null && cVar2 == cVar) {
            this.f = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.startup.c a() {
        if (this.f == null || this.f.get() == null) {
            this.f = new WeakReference<>(new c());
        }
        return this.f.get();
    }

    public void a(e eVar) {
        g.c(this.f7881a, "start: initState = " + this.f7882b);
        this.f7883c = eVar;
        if (this.f7882b == EnumC0131b.INIT_STATE_DONE_OK) {
            if (System.currentTimeMillis() - this.g < 31449600000L) {
                g.b(this.f7881a, "The app was recently initialized successfully. Done.");
                a().v();
                return;
            }
            this.f7882b = EnumC0131b.INIT_STATE_NONE;
        }
        if (this.f7882b == EnumC0131b.INIT_STATE_NONE || this.f7882b == EnumC0131b.INIT_STATE_FAILED_BTID) {
            g.b(this.f7881a, "Helper starting. Fetching Browser Tracker Id (BTID)");
            this.f7882b = EnumC0131b.INIT_STATE_IN_PROGRESS;
            com.roblox.client.http.d dVarA = this.j.a(RobloxSettings.deviceIDUrl(), new MobileDeviceInfoRequestBody(RobloxSettings.mDeviceId), null, this.m);
            dVarA.a(new com.roblox.client.http.a.b());
            dVarA.c();
            return;
        }
        if (this.f7882b == EnumC0131b.INIT_STATE_FAILED_APP_SETTINGS) {
            this.f7882b = EnumC0131b.INIT_STATE_IN_PROGRESS;
            e();
            return;
        }
        if (this.f7882b == EnumC0131b.INIT_STATE_SERVICE_UNAVAILABLE || this.f7882b == EnumC0131b.INIT_STATE_NO_USER_ID || this.f7882b == EnumC0131b.INIT_STATE_UNAUTHORIZED) {
            this.f7882b = EnumC0131b.INIT_STATE_IN_PROGRESS;
            h();
        } else {
            if (this.f7882b == EnumC0131b.INIT_STATE_UPGRADE_NEEDED) {
                if (this.f7884d == o.c.Required) {
                    a().c(true);
                    return;
                } else if (this.e) {
                    g();
                    return;
                } else {
                    k();
                    return;
                }
            }
            g.b(this.f7881a, "The initialization must be in progress. Do nothing.");
        }
    }

    public void a(Context context, boolean z) {
        g.b(this.f7881a, "logout: callServer = " + z + ", initState = " + this.f7882b);
        this.f7882b = EnumC0131b.INIT_STATE_NO_USER_ID;
        h.a().a(context, z);
    }

    public void a(Context context, b.a aVar) {
        g.b(this.f7881a, "logout: initState = " + this.f7882b);
        this.f7882b = EnumC0131b.INIT_STATE_NO_USER_ID;
        h.a().a(context, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (com.roblox.client.b.s()) {
            new com.roblox.client.locale.c.a().a(this.h, new a.InterfaceC0116a() { // from class: com.roblox.client.startup.b.1
                @Override // com.roblox.client.locale.db.a.InterfaceC0116a
                public void a() {
                    b.this.c();
                }
            });
        } else {
            c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        g.b("rbx.locale", " mContext: " + this.h + " AndroidAppSettings.isInMultipleLocaleFetchApiRollOut(): " + com.roblox.client.b.o());
        if (com.roblox.client.b.o() && this.h != null) {
            g.b("rbx.locale", "using new locale api");
            new com.roblox.client.locale.f().a(this.h, new f.a() { // from class: com.roblox.client.startup.b.2
                @Override // com.roblox.client.locale.f.a
                public void a() {
                    b.this.d();
                }
            });
        } else {
            d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (com.roblox.client.b.s() && this.h != null) {
            final com.roblox.client.locale.c.a aVar = new com.roblox.client.locale.c.a();
            final com.roblox.client.locale.c cVarB = com.roblox.client.locale.a.a().b();
            aVar.a(this.h, cVarB, new b.a() { // from class: com.roblox.client.startup.b.3
                @Override // com.roblox.client.locale.db.b.a
                public void a(HashMap<String, String> map) {
                    if (map != null) {
                        aVar.a(map, cVarB);
                    }
                    com.roblox.client.b.d.a().a(true);
                    b.this.h();
                    aVar.a(b.this.h, true);
                }
            });
        } else {
            com.roblox.client.b.d.a().a(true);
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        d dVarA = this.k.a(this.h);
        dVarA.a(new d.c() { // from class: com.roblox.client.startup.b.4
            @Override // com.roblox.client.startup.d.c
            public void a(o.c cVar, boolean z) {
                g.b(b.this.f7881a, "PostDeviceInitHandler: complete. upgradeStatus = " + cVar + ", settingsSuccess = " + z);
                b.this.e = z;
                b.this.f7884d = cVar;
                if (cVar == o.c.Recommended || cVar == o.c.Required) {
                    b.this.f7882b = EnumC0131b.INIT_STATE_UPGRADE_NEEDED;
                    com.roblox.client.b.d.a().a(false);
                    b.this.a().c(cVar == o.c.Required);
                } else if (z) {
                    b.this.g();
                } else {
                    b.this.k();
                }
            }
        });
        dVarA.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.roblox.client.util.b.b().a(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        i.a("appLaunch");
        j();
        if (com.roblox.client.b.aC()) {
            CookieManager.getInstance().setCookie(RobloxSettings.getDomain(), com.roblox.client.c.a().d());
        }
        if (com.roblox.client.b.aD()) {
            CookieManager.getInstance().setCookie(RobloxSettings.getDomain(), com.roblox.client.c.a().f());
        }
        com.roblox.abtesting.a.a().k();
        com.roblox.abtesting.a.a().d(new a.InterfaceC0093a() { // from class: com.roblox.client.startup.b.5
            @Override // com.roblox.abtesting.a.InterfaceC0093a
            public void a() {
                b.this.b();
            }
        });
        com.roblox.client.i.d.a().a(this.h.getApplicationContext());
        com.roblox.client.i.a.a(this.h).a();
        if (RobloxSettings.eventsData == null) {
            this.j.a(RobloxSettings.eventsUrl(), null, new com.roblox.client.http.i() { // from class: com.roblox.client.startup.b.6
                @Override // com.roblox.client.http.i, com.roblox.client.http.l
                public void a(j jVar) {
                    if (!jVar.a().isEmpty()) {
                        try {
                            RobloxSettings.eventsData = new JSONObject("{\"Data\":" + jVar.a() + "}").toString();
                        } catch (Exception e) {
                            g.b("EventsRequest", e.toString());
                            RobloxSettings.eventsData = null;
                        }
                    }
                }
            }).c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        a().k();
        if (!h.a().c()) {
            g.b(this.f7881a, "SessionCheck... No saved UserId. Go to the landing screen.");
            this.f7882b = EnumC0131b.INIT_STATE_NO_USER_ID;
            this.g = System.currentTimeMillis();
            com.roblox.client.b.d.a().b(false);
            a().v();
            return;
        }
        h.a().a(this.h, new h.f() { // from class: com.roblox.client.startup.b.7
            @Override // com.roblox.client.i.h.f
            public void a() {
                g.b(b.this.f7881a, "SessionCheck SUCCESS.");
                com.roblox.client.b.d.a().b(true);
            }

            @Override // com.roblox.client.i.h.f
            public void b() {
                g.b(b.this.f7881a, "SessionCheck... Unauthorized. Still considered Done.");
                b.this.f7882b = EnumC0131b.INIT_STATE_UNAUTHORIZED;
                b.this.g = System.currentTimeMillis();
                com.roblox.client.b.d.a().b(false);
                b.this.a().v();
            }

            @Override // com.roblox.client.i.h.f
            public void c() {
                g.b(b.this.f7881a, "SessionCheck... Post login completed.");
                b.this.f7882b = EnumC0131b.INIT_STATE_DONE_OK;
                b.this.g = System.currentTimeMillis();
                com.roblox.client.b.d.a().c();
                b.this.a().v();
                b.this.i();
            }

            @Override // com.roblox.client.i.h.f
            public void d() {
                g.b(b.this.f7881a, "SessionCheck... Service unavailable.");
                b.this.f7882b = EnumC0131b.INIT_STATE_SERVICE_UNAVAILABLE;
                com.roblox.client.b.d.a().b(false);
                b.this.a().n();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        g.b(this.f7881a, "After post login. StartedFor: " + this.f7883c);
        long jCurrentTimeMillis = System.currentTimeMillis();
        switch (this.f7883c) {
            case AFTER_SIGN_UP:
                if (com.roblox.abtesting.a.a().d() && !com.roblox.client.q.d.a().g()) {
                    com.roblox.client.remindernotification.a.a(this.h.getApplicationContext(), com.roblox.client.q.d.a().f(), jCurrentTimeMillis);
                }
                com.roblox.client.i.d.a().c();
                break;
            case AFTER_LOGIN:
            case AFTER_LOGIN_FOR_RESULT:
            case LOADED_FROM_PUSH_NOTIFICATION:
            case REMINDER_NOTIFICATION:
            case PROTOCOL_LAUNCH:
            case SYSTEM:
                com.roblox.client.i.d.a().b();
                break;
        }
        if (com.roblox.abtesting.a.a().d() && !com.roblox.client.q.d.a().g()) {
            com.roblox.client.remindernotification.a.a(this.h.getApplicationContext(), jCurrentTimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        g.b(this.f7881a, "Init FAILURE: (" + str + ")");
        this.f7882b = EnumC0131b.INIT_STATE_FAILED_BTID;
        com.roblox.client.b.d.a().a(false);
        a().m();
    }

    private void j() {
        g.b(this.f7881a, "AppSettings loaded.");
        a().l();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        g.b(this.f7881a, "AppSettings FAILURE");
        this.f7882b = EnumC0131b.INIT_STATE_FAILED_APP_SETTINGS;
        com.roblox.client.b.d.a().a(false);
        a().m();
    }

    private static class c implements com.roblox.client.startup.c {
        private c() {
        }

        @Override // com.roblox.client.startup.c
        public void k() {
        }

        @Override // com.roblox.client.startup.c
        public void l() {
        }

        @Override // com.roblox.client.startup.c
        public void m() {
        }

        @Override // com.roblox.client.startup.c
        public void n() {
        }

        @Override // com.roblox.client.startup.c
        public void c(boolean z) {
        }

        @Override // com.roblox.client.startup.c
        public void v() {
        }
    }
}
