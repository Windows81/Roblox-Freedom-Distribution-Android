package com.roblox.client.startup;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.roblox.abtesting.a;
import com.roblox.client.ae.k;
import com.roblox.client.analytics.i;
import com.roblox.client.game.b;
import com.roblox.client.http.g;
import com.roblox.client.http.j;
import com.roblox.client.http.l;
import com.roblox.client.http.post.MobileDeviceInfoRequestBody;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.i;
import com.roblox.client.p;
import com.roblox.client.s.f;
import com.roblox.client.s.h;
import com.roblox.client.t.c;
import com.roblox.client.u;
import com.roblox.client.w;
import com.roblox.engine.jni.NativeAppBridgeInterface;
import com.roblox.engine.jni.NativeAppTracingInterface;
import com.roblox.engine.jni.NativeGLJavaInterface;
import com.roblox.engine.jni.NativeSettingsInterface;
import com.roblox.engine.jni.OnAppBridgeNotificationListener;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {
    private static c i;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<d> f7451d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7452e;
    private final Context f;
    private final f g;
    private final com.roblox.client.http.f h;
    private String l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7448a = "InitHelper";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f7449b = a.INIT_STATE_NONE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f7450c = e.SYSTEM;
    private l j = new l() { // from class: com.roblox.client.startup.c.9
        @Override // com.roblox.client.http.l
        public void b(j jVar) {
        }

        @Override // com.roblox.client.http.l
        public void a(j jVar) {
            if (jVar.b() != 200) {
                i.a("FinishRequestDeviceInfoFailure");
                if (!jVar.c() || !com.roblox.client.i.b.a()) {
                    c.this.c("BTID with response code not 200");
                } else {
                    c.this.d("SSLHandshakeException in getting BrowserTrackerId");
                }
                c.this.g.a("Android-AppLogin-BrowserTracker-Failed");
                return;
            }
            i.a("FinishRequestDeviceInfo");
            try {
                long j = new JSONObject(jVar.a()).getLong("browserTrackerId");
                c.this.g.a("Android-AppLogin-BrowserTracker-Success");
                k.b("InitHelper", "BrowserTrackerIdCallback: Got BTID = " + j);
                com.roblox.client.j.a().a(j);
                com.roblox.abtesting.a.a().a(j);
                c.this.m();
                c.this.l();
            } catch (JSONException unused) {
                c.this.g.a("Android-AppLogin-BrowserTracker-JsonFailed");
                c.this.c("BTID parse exc.");
            }
        }
    };
    private OnAppBridgeNotificationListener k = new OnAppBridgeNotificationListener() { // from class: com.roblox.client.startup.c.11
        @Override // com.roblox.engine.jni.OnAppBridgeNotificationListener
        public void a(String str, String str2) {
            c.this.a(str, str2);
        }
    };

    enum a {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_SETTINGS_LOADED_OK,
        INIT_STATE_DONE_OK,
        INIT_STATE_NO_USER_ID,
        INIT_STATE_UNAUTHORIZED,
        INIT_STATE_SERVICE_UNAVAILABLE,
        INIT_STATE_FAILED_BTID,
        INIT_STATE_FAILED_APP_SETTINGS
    }

    public static c a(Context context) {
        if (i == null) {
            synchronized (c.class) {
                if (i == null) {
                    i = new c(context, f.b());
                }
            }
        }
        return i;
    }

    c(Context context, f fVar) {
        k.b("InitHelper", "InitHelper created.");
        this.f = context.getApplicationContext();
        this.g = fVar;
        this.h = g.a();
        com.roblox.client.analytics.g.a().b();
    }

    public void a(d dVar) {
        this.f7451d = new WeakReference<>(dVar);
    }

    public void b(d dVar) {
        d dVar2;
        WeakReference<d> weakReference = this.f7451d;
        if (weakReference == null || (dVar2 = weakReference.get()) == null || dVar2 != dVar) {
            return;
        }
        this.f7451d = null;
    }

    public void a() {
        s().a(this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public d f() {
        WeakReference<d> weakReference = this.f7451d;
        if (weakReference == null || weakReference.get() == null) {
            this.f7451d = new WeakReference<>(new b());
        }
        return this.f7451d.get();
    }

    public void a(e eVar) {
        this.f7450c = eVar;
    }

    public boolean b() {
        return this.f7449b != a.INIT_STATE_NONE;
    }

    public void c() {
        k.b("InitHelper", "start: initState = " + this.f7449b + ", StartedFor: " + this.f7450c);
        if (this.f7449b == a.INIT_STATE_DONE_OK) {
            if (System.currentTimeMillis() - this.f7452e < 31449600000L) {
                k.b("InitHelper", "The app was recently initialized successfully. Done.");
                f().u();
                return;
            }
            this.f7449b = a.INIT_STATE_NONE;
        }
        if (this.f7449b == a.INIT_STATE_NONE || this.f7449b == a.INIT_STATE_FAILED_APP_SETTINGS) {
            this.f7449b = a.INIT_STATE_IN_PROGRESS;
            j();
            return;
        }
        if (this.f7449b == a.INIT_STATE_SETTINGS_LOADED_OK) {
            if (com.roblox.client.x.c.h()) {
                q();
            }
        } else if (this.f7449b == a.INIT_STATE_FAILED_BTID) {
            k.b("InitHelper", "Helper starting. Fetching Browser Tracker Id (BTID)");
            this.f7449b = a.INIT_STATE_IN_PROGRESS;
            k();
        } else if (this.f7449b == a.INIT_STATE_SERVICE_UNAVAILABLE || this.f7449b == a.INIT_STATE_NO_USER_ID || this.f7449b == a.INIT_STATE_UNAUTHORIZED) {
            this.f7449b = a.INIT_STATE_IN_PROGRESS;
            o();
        } else {
            k.b("InitHelper", "The initialization must be in progress. Do nothing.");
        }
    }

    public void a(Context context, boolean z, c.a aVar) {
        k.b("InitHelper", "logout: callServer = " + z + ", initState = " + this.f7449b);
        this.f7449b = a.INIT_STATE_NO_USER_ID;
        h.a().a(context, z, aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (com.roblox.client.b.n()) {
            new com.roblox.client.locale.d.a().a(this.f, new a.InterfaceC0156a() { // from class: com.roblox.client.startup.c.1
                @Override // com.roblox.client.locale.db.a.InterfaceC0156a
                public void a() {
                    c.this.h();
                }
            });
        } else {
            h();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        k.b("rbx.locale", " mContext: " + this.f);
        if (this.f != null) {
            k.b("rbx.locale", "using new locale api");
            i.a("StartGetLocales");
            final String strA = NativeAppTracingInterface.a("nativeGetLocale", NativeAppTracingInterface.f7638a);
            new com.roblox.client.locale.i().a(this.f, new i.a() { // from class: com.roblox.client.startup.c.4
                @Override // com.roblox.client.locale.i.a
                public void a(boolean z) {
                    NativeAppTracingInterface.a(strA);
                    com.roblox.client.analytics.i.a("FinishGetLocales");
                    c.this.i();
                }
            });
            return;
        }
        i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        if (com.roblox.client.b.n() && this.f != null) {
            final com.roblox.client.locale.d.a aVar = new com.roblox.client.locale.d.a();
            final com.roblox.client.locale.f fVarB = com.roblox.client.locale.b.a().b();
            com.roblox.client.analytics.i.a("StartLoadStringUpdates");
            aVar.a(this.f, fVarB, new b.a() { // from class: com.roblox.client.startup.c.5
                @Override // com.roblox.client.locale.db.b.a
                public void a(HashMap<String, String> map) {
                    com.roblox.client.analytics.i.a("FinishLoadStringUpdates");
                    if (map != null) {
                        aVar.a(map, fVarB);
                    }
                    com.roblox.client.analytics.g.a().a(true);
                    c.this.o();
                    aVar.a(c.this.f, true);
                }
            });
            return;
        }
        com.roblox.client.analytics.g.a().a(true);
        o();
    }

    private void j() {
        k.b("InitHelper", "getAllAppSettings:...");
        final String strA = NativeAppTracingInterface.a("nativeClientSettings", NativeAppTracingInterface.f7638a);
        com.roblox.client.game.b.a().a(this.f, new b.g() { // from class: com.roblox.client.startup.c.6
            @Override // com.roblox.client.game.b.g
            public void a(int i2) {
                com.roblox.client.analytics.a.a().a(c.this.f);
                if (i2 != 0) {
                    c.this.r();
                    return;
                }
                k.b("InitHelper", "getAllAppSettings: ... Settings loaded.");
                c.this.f7449b = a.INIT_STATE_SETTINGS_LOADED_OK;
                NativeAppTracingInterface.a(strA);
                if (!com.roblox.client.x.c.h()) {
                    c.this.k();
                    NativeSettingsInterface.nativeSetDeviceInfo(com.roblox.client.game.e.a(c.this.f).a());
                }
                if (com.roblox.client.m.c.a().cK()) {
                    c.this.a();
                }
                c.this.q();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        k.b("InitHelper", "getBrowserTrackerId:...");
        com.roblox.client.analytics.i.a("StartRequestDeviceInfo");
        com.roblox.client.http.d dVarA = this.h.a(u.ai(), new MobileDeviceInfoRequestBody(u.f7519c), null, this.j);
        dVarA.a(new com.roblox.client.http.a.b());
        dVarA.c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        com.roblox.client.ae.b.b().a(this.f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        k.b("InitHelper", "doAfterFetchBrowserTrackerId:...");
        p.a("appLaunch");
        if (com.roblox.client.b.aa()) {
            com.roblox.platform.http.h.b().a(u.f(), com.roblox.client.j.a().d());
        }
        if (com.roblox.client.b.ab()) {
            com.roblox.platform.http.h.b().a(u.f(), com.roblox.client.j.a().f());
        }
        if (com.roblox.client.b.bx()) {
            com.roblox.client.j.a().a(this.f);
        }
        com.roblox.engine.f.a().b(this.f);
        n();
    }

    private void n() {
        if (!com.roblox.client.x.c.h() || com.roblox.client.b.cu()) {
            com.roblox.abtesting.a.a().r();
        }
        com.roblox.client.analytics.i.a("StartCheckABTestEnrollments");
        final String strA = NativeAppTracingInterface.a("nativeBtidABTest", NativeAppTracingInterface.f7638a);
        com.roblox.abtesting.a.a().d(new a.InterfaceC0117a() { // from class: com.roblox.client.startup.c.7
            @Override // com.roblox.abtesting.a.InterfaceC0117a
            public void a() {
                NativeAppTracingInterface.a(strA);
                com.roblox.client.analytics.i.a("FinishCheckABTestEnrollments");
                c.this.g();
            }
        });
        if (!com.roblox.client.m.c.a().cK()) {
            a();
        }
        com.roblox.client.s.a.a(this.f).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        f().p();
        if (com.roblox.client.x.c.h()) {
            k.b("InitHelper", "SessionCheck... New startup flow. Go directly to the Main screen.");
            this.f7449b = a.INIT_STATE_DONE_OK;
            f().v();
        } else {
            if (!h.a().c()) {
                k.b("InitHelper", "SessionCheck... No saved UserId. Go to the landing screen.");
                this.f7449b = a.INIT_STATE_NO_USER_ID;
                this.f7452e = System.currentTimeMillis();
                com.roblox.client.analytics.g.a().b(false);
                f().u();
                return;
            }
            com.roblox.client.analytics.i.a("StartSessionCheck");
            h.a().a(this.f, new h.d() { // from class: com.roblox.client.startup.c.8
                @Override // com.roblox.client.s.h.d
                public void a() {
                    k.b("InitHelper", "SessionCheck SUCCESS.");
                    com.roblox.client.analytics.i.a("FinishSessionCheckSuccess");
                    com.roblox.client.analytics.g.a().b(true);
                }

                @Override // com.roblox.client.s.h.d
                public void b() {
                    k.b("InitHelper", "SessionCheck... Unauthorized. Still considered Done.");
                    com.roblox.client.analytics.i.a("FinishSessionCheckUnauthorized");
                    c.this.f7449b = a.INIT_STATE_UNAUTHORIZED;
                    c.this.f7452e = System.currentTimeMillis();
                    com.roblox.client.analytics.g.a().b(false);
                    c.this.f().u();
                }

                @Override // com.roblox.client.s.h.d
                public void c() {
                    k.b("InitHelper", "SessionCheck... Post login completed.");
                    com.roblox.client.analytics.i.a("FinishSessionCheckPostLoginCompleted");
                    c.this.f7449b = a.INIT_STATE_DONE_OK;
                    c.this.f7452e = System.currentTimeMillis();
                    com.roblox.client.analytics.g.a().c();
                    c.this.f().u();
                    c.this.p();
                }

                @Override // com.roblox.client.s.h.d
                public void d() {
                    k.b("InitHelper", "SessionCheck... Service unavailable.");
                    com.roblox.client.analytics.i.a("FinishSessionCheckServiceUnavailable");
                    c.this.f7449b = a.INIT_STATE_SERVICE_UNAVAILABLE;
                    com.roblox.client.analytics.g.a().b(false);
                    c.this.f().t();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        k.b("InitHelper", "After post login. StartedFor: " + this.f7450c);
        long jCurrentTimeMillis = System.currentTimeMillis();
        switch (AnonymousClass3.f7460a[this.f7450c.ordinal()]) {
            case 1:
                if (com.roblox.abtesting.a.a().c() && !com.roblox.client.ad.c.a().i()) {
                    com.roblox.client.remindernotification.a.a(this.f.getApplicationContext(), com.roblox.client.ad.c.a().e(), jCurrentTimeMillis);
                }
                s().c(this.f);
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
                s().b(this.f);
                break;
        }
        if (!com.roblox.abtesting.a.a().c() || com.roblox.client.ad.c.a().i()) {
            return;
        }
        com.roblox.client.remindernotification.a.a(this.f.getApplicationContext(), jCurrentTimeMillis);
    }

    /* JADX INFO: renamed from: com.roblox.client.startup.c$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7460a;

        static {
            int[] iArr = new int[e.values().length];
            f7460a = iArr;
            try {
                iArr[e.AFTER_SIGN_UP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7460a[e.AFTER_LOGIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7460a[e.AFTER_LOGIN_FOR_RESULT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7460a[e.LOADED_FROM_PUSH_NOTIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7460a[e.REMINDER_NOTIFICATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f7460a[e.PROTOCOL_LAUNCH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f7460a[e.SYSTEM.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        k.b("InitHelper", "Init FAILURE: (" + str + ")");
        this.f7449b = a.INIT_STATE_FAILED_BTID;
        com.roblox.client.analytics.g.a().a(false);
        f().r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        k.b("InitHelper", "Init FAILURE: (" + str + ")");
        this.f7449b = a.INIT_STATE_FAILED_BTID;
        com.roblox.client.analytics.g.a().a(false);
        f().s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        k.b("InitHelper", "AppSettings loaded.");
        com.roblox.client.b.b.a().a(com.roblox.client.b.N(), com.roblox.client.b.O(), com.roblox.client.b.P(), com.roblox.client.b.Q(), TimeUnit.MINUTES.toMillis(com.roblox.client.b.L()), com.roblox.client.b.R());
        f().q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        k.b("InitHelper", "AppSettings FAILURE");
        this.f7449b = a.INIT_STATE_FAILED_APP_SETTINGS;
        com.roblox.client.analytics.g.a().a(false);
        f().r();
    }

    private com.roblox.client.s.d s() {
        return com.roblox.client.l.a().f();
    }

    public void d() {
        k.b("InitHelper", "startV2: initState = " + this.f7449b + ", StartedFor: " + this.f7450c);
        if (this.f7449b == a.INIT_STATE_DONE_OK || this.f7449b == a.INIT_STATE_UNAUTHORIZED || this.f7449b == a.INIT_STATE_NO_USER_ID) {
            k.b("InitHelper", "The initialization is done or unauthorized. Go to Main screen.");
            f().v();
        } else if (this.f7449b == a.INIT_STATE_SETTINGS_LOADED_OK) {
            k.b("InitHelper", "App Settings have been loaded. Start the new Phase-2 AppBridge...");
            this.f7449b = a.INIT_STATE_IN_PROGRESS;
            t();
        } else if (this.f7449b == a.INIT_STATE_FAILED_BTID) {
            this.f7449b = a.INIT_STATE_IN_PROGRESS;
            t();
        } else {
            k.b("InitHelper", "The initialization must be in progress. Do nothing.");
        }
    }

    private void t() {
        k.b("InitHelper", "startAppBridge:...");
        NativeSettingsInterface.nativeSetDeviceInfo(com.roblox.client.game.e.a(this.f).a());
        this.l = NativeAppTracingInterface.a("startupController", NativeAppTracingInterface.f7638a);
        NativeGLJavaInterface.setAppBridgeNotificationListener(this.k);
        NativeAppBridgeInterface.nativeAppBridgeAppStart(u.d(), u.t(), u.i(), u.f7519c, u.R());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final String str2) {
        NativeAppTracingInterface.a(this.l);
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.roblox.client.startup.c.10
            @Override // java.lang.Runnable
            public void run() {
                k.b("InitHelper", "handleAppBridgeNotification: type = " + str + ", data = " + str2 + ".");
                w.c cVar = new w.c();
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    if (jSONObject.getInt("result") != 0) {
                        c.this.g.a("Android-AppLogin-BrowserTracker-JsonFailed");
                        c.this.c("AppBridgeNotification: JSON Result failure");
                        return;
                    }
                    long j = jSONObject.getLong("btid");
                    int i2 = jSONObject.getInt("upgradeStatus");
                    if (i2 == 1) {
                        cVar.d();
                    } else if (i2 == 2) {
                        cVar.c();
                    } else {
                        cVar.e();
                    }
                    c.this.g.a("Android-AppLogin-BrowserTracker-Success");
                    k.b("InitHelper", "handleAppBridgeNotification: Got BTID = " + j);
                    com.roblox.client.j.a().a(j);
                    com.roblox.abtesting.a.a().a(j);
                    c.this.u();
                    if (cVar.b() || cVar.a()) {
                        w.a().a(cVar);
                    }
                    c.this.m();
                    c.this.l();
                } catch (JSONException unused) {
                    c.this.g.a("Android-AppLogin-BrowserTracker-JsonFailed");
                    c.this.c("AppBridgeNotification: JSON Parsing failure");
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        String strNativeGetCookiesForDomain = NativeSettingsInterface.nativeGetCookiesForDomain(u.c());
        k.c("InitHelper", "updateCookiesFromEngine: nativeGetCookiesForDomain Got Cookies = " + strNativeGetCookiesForDomain);
        for (String str : strNativeGetCookiesForDomain.split(";")) {
            String strTrim = str.trim();
            String[] strArrSplit = strTrim.split("\t");
            if (strArrSplit.length != 7 && strArrSplit.length != 6) {
                k.e("InitHelper", "updateCookiesFromEngine: Invalid cookie format: [" + strTrim + "]");
            } else if (strArrSplit[0].endsWith(u.f())) {
                String str2 = strArrSplit[5] + "=" + (strArrSplit.length == 7 ? strArrSplit[6] : "") + "; Domain=" + u.f();
                com.roblox.platform.http.h.b().a(u.f(), str2);
                k.b("InitHelper", "updateCookiesFromEngine: Set Cookies : " + str2);
            }
        }
    }

    public void e() {
        k.b("InitHelper", "onLoginRequestFromLua: initState = " + this.f7449b);
        this.f7449b = a.INIT_STATE_UNAUTHORIZED;
        com.roblox.client.analytics.g.a().b(false);
        f().u();
    }

    public void a(String str) {
        k.b("InitHelper", "onDidLoginEventFromLua: initState = " + this.f7449b + ", data = " + str);
        this.f7449b = a.INIT_STATE_DONE_OK;
        u();
        com.roblox.client.analytics.g.a().b(true);
        final String strA = NativeAppTracingInterface.a("nativePostLogin", NativeAppTracingInterface.f7638a);
        h.a().a(this.f, str, new h.c() { // from class: com.roblox.client.startup.c.2
            @Override // com.roblox.client.s.h.c
            public void a() {
                k.b("InitHelper", "onDidLoginEventFromLua: ... onPostLoginCompleted.");
                NativeAppTracingInterface.a(strA);
                com.roblox.client.analytics.g.a().c();
                com.roblox.client.analytics.g.a().e();
                c.this.f().v();
                c.this.p();
            }
        });
    }

    public void b(String str) {
        k.b("InitHelper", "onDidSignUpEventFromLua: initState = " + this.f7449b + ", data = " + str);
        a(e.AFTER_SIGN_UP);
    }

    private static class b implements d {
        @Override // com.roblox.client.startup.d
        public void p() {
        }

        @Override // com.roblox.client.startup.d
        public void q() {
        }

        @Override // com.roblox.client.startup.d
        public void r() {
        }

        @Override // com.roblox.client.startup.d
        public void s() {
        }

        @Override // com.roblox.client.startup.d
        public void t() {
        }

        @Override // com.roblox.client.startup.d
        public void u() {
        }

        @Override // com.roblox.client.startup.d
        public void v() {
        }

        private b() {
        }
    }
}
