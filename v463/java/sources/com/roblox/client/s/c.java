package com.roblox.client.s;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import c.x;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.ae.r;
import com.roblox.client.ae.s;
import com.roblox.client.ae.t;
import com.roblox.client.j;
import com.roblox.client.locale.i;
import com.roblox.client.o;
import com.roblox.client.p;
import com.roblox.client.q;
import com.roblox.client.s.a;
import com.roblox.client.t.c;
import com.roblox.client.u;
import com.roblox.engine.f;
import com.roblox.engine.jni.NativeSettingsInterface;
import com.roblox.engine.jni.user.NativeUserJavaInterface;
import com.roblox.platform.i;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements a.InterfaceC0169a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f6989a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f6990b;
    private static final Set<String> i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f6991c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f6992d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6993e;
    private com.roblox.client.analytics.e f;
    private boolean g;
    private boolean h;

    private enum a {
        APP_INIT_STATUS_NONE,
        APP_INIT_STATUS_STARTED,
        APP_INIT_STATUS_OK,
        APP_INIT_STATUS_ERROR
    }

    public enum b {
        APP_INIT_TYPE_UNKNOWN,
        APP_INIT_TYPE_SHELL,
        APP_INIT_TYPE_GAME
    }

    /* JADX INFO: renamed from: com.roblox.client.s.c$c, reason: collision with other inner class name */
    private static class C0170c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f7010a = new c();
    }

    public enum e {
        LOGOUT_BY_USER_IN_NATIVE,
        LOGOUT_BY_USER_IN_LUA,
        LOGOUT_BY_401_ERROR_IN_NATIVE,
        LOGOUT_BY_401_ERROR_IN_WEB,
        LOGOUT_BY_401_ERROR_IN_LUA
    }

    static {
        try {
            System.loadLibrary("fmod");
            System.loadLibrary("roblox");
            System.loadLibrary("shell-lib");
        } catch (UnsatisfiedLinkError e2) {
            k.b("rbx.AppManager", e2.getLocalizedMessage());
        }
        i = new HashSet(Arrays.asList(com.roblox.client.s.a.f6974a, com.roblox.client.s.a.f6975b, com.roblox.client.s.a.f6976c));
    }

    public static boolean a() {
        return f6989a;
    }

    public static void b() {
        f6990b = true;
    }

    public static boolean c() {
        if (!f6990b) {
            return false;
        }
        f6990b = false;
        return true;
    }

    public static c d() {
        return C0170c.f7010a;
    }

    private c() {
        this.f6991c = b.APP_INIT_TYPE_UNKNOWN;
        this.f6992d = a.APP_INIT_STATUS_NONE;
        k.b("rbx.AppManager", "[AppManager]: Constructor called.");
    }

    public void a(Context context) {
        SharedPreferences sharedPreferencesA = s.a(context, "DeviceInstallPreferences");
        boolean z = sharedPreferencesA.getBoolean("AppFirstLaunch", true);
        this.g = z;
        if (z) {
            k.b("rbx.AppManager", "First App launch!");
            com.roblox.client.s.f.b().c();
            SharedPreferences.Editor editorEdit = sharedPreferencesA.edit();
            editorEdit.putBoolean("AppFirstLaunch", false);
            editorEdit.putLong("AppFirstLaunchTime", System.currentTimeMillis());
            editorEdit.apply();
        }
    }

    public com.roblox.client.analytics.e e() {
        return this.f;
    }

    public boolean f() {
        return this.g;
    }

    public void a(Context context, b bVar) {
        if (bVar != b.APP_INIT_TYPE_SHELL && bVar != b.APP_INIT_TYPE_GAME) {
            throw new IllegalArgumentException("Invalid AppInitType: " + bVar);
        }
        if (this.f6992d != a.APP_INIT_STATUS_NONE) {
            return;
        }
        synchronized (c.class) {
            if (this.f6992d != a.APP_INIT_STATUS_NONE) {
                return;
            }
            this.f6992d = a.APP_INIT_STATUS_STARTED;
            this.f6991c = bVar;
            k.b("rbx.AppManager", "initialize: [" + this.f6991c + "] Start...");
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            boolean zA = l.a(context);
            this.f6993e = zA;
            if (zA) {
                c(context);
            }
            s sVarA = s.a(context.getApplicationContext());
            com.roblox.c.b.a();
            com.roblox.client.locale.a.a.a(context.getApplicationContext());
            try {
                u.e(context);
                NativeSettingsInterface.nativeSetBaseUrl(u.d(), u.n());
                NativeSettingsInterface.nativeSetRobloxChannel(u.e());
                NativeUserJavaInterface.setImplementation(new com.roblox.client.q.c());
                String strT = u.t();
                k.b("rbx.AppManager", "ROBLOX | User-Agent = " + strT);
                k.b("rbx.AppManager", "ROBLOX | Build = googleProd" + t.d("release") + ", ID = " + u.v());
                k.b("rbx.AppManager", "ROBLOX | Version = 2.463.417712, Code = 904");
                StringBuilder sb = new StringBuilder();
                sb.append("ROBLOX | BaseUrl = ");
                sb.append(u.b());
                k.b("rbx.AppManager", sb.toString());
                k.b("rbx.AppManager", "ROBLOX | OS Ver. = " + Build.VERSION.RELEASE + ", Lvl = " + Build.VERSION.SDK_INT);
                StringBuilder sb2 = new StringBuilder();
                sb2.append("ROBLOX | Arch = ");
                sb2.append(j.a().i().toString());
                k.b("rbx.AppManager", sb2.toString());
                i.a(strT);
                i.a(h());
                i.a(new com.roblox.client.http.t());
                i.a(new com.roblox.platform.b() { // from class: com.roblox.client.s.c.1
                    @Override // com.roblox.platform.b
                    public String a() {
                        if (com.roblox.client.b.Z()) {
                            return j.a().c();
                        }
                        return null;
                    }

                    @Override // com.roblox.platform.b
                    public String b() {
                        if (com.roblox.client.b.ab()) {
                            return j.a().e();
                        }
                        return null;
                    }
                });
                i.a(new d(context));
                i.a(com.roblox.client.l.a().b());
                g.a(context, null);
                com.roblox.abtesting.a aVarA = com.roblox.abtesting.a.a();
                aVarA.a(com.roblox.client.s.f.a());
                aVarA.a(new com.roblox.client.http.h());
                aVarA.a(sVarA);
                com.roblox.client.l.a().d();
                h.a();
                j.a().a((j.b) null);
                com.roblox.client.b.b.a().a(context);
                com.roblox.client.s.a.a(context).a(this);
                com.roblox.client.i.d.a();
                Locale locale = Locale.getDefault();
                com.roblox.client.locale.b.a().a(locale);
                com.roblox.client.analytics.d.a("Locale", "DeviceLocale", locale != null ? locale.toString() : "NULL");
                b(context);
                com.roblox.engine.a.a(new com.roblox.client.x.b());
                com.roblox.engine.f.a(new f());
                com.roblox.engine.f.a().a(com.roblox.client.analytics.d.a());
                com.roblox.engine.f.a().a(context.getApplicationContext());
                try {
                    if (!com.roblox.engine.f.a().d(context)) {
                        k.c("rbx.AppManager", "written: " + com.roblox.engine.f.a().a(context, "cacert.pem", context.getFilesDir().getAbsolutePath() + "/exe/ssl"));
                    } else {
                        k.c("rbx.AppManager", "cacert.pem up to date");
                    }
                } catch (IOException unused) {
                    k.e("rbx.AppManager", "Unable to write cacert.pem");
                }
                this.f6992d = a.APP_INIT_STATUS_OK;
                k.b("rbx.AppManager", "initialize: Completed OK. elapsedTime(ms) = " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
            } catch (IOException e2) {
                k.e("rbx.AppManager", "*** Exception caught in initConfig: " + e2.getMessage());
                this.f6992d = a.APP_INIT_STATUS_ERROR;
                throw new RuntimeException("IOException in RobloxSettings.initConfig()");
            }
        }
    }

    private com.roblox.platform.c h() {
        com.roblox.client.ae.d dVar = new com.roblox.client.ae.d();
        String strB = u.b();
        String strM = u.m();
        return new com.roblox.platform.c(u.f(), dVar.d(strB), strM != null ? dVar.d(strM) : "api");
    }

    private void b(Context context) {
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel notificationChannel = new NotificationChannel("channel_general", context.getString(o.j.Notifications_PushNotifications_Settings_ChannelNameGeneral), 3);
            NotificationChannel notificationChannel2 = new NotificationChannel("channel_games", context.getString(o.j.Notifications_PushNotifications_Settings_ChannelNameGames), 4);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            notificationManager.createNotificationChannel(notificationChannel);
            notificationManager.createNotificationChannel(notificationChannel2);
        }
    }

    @Override // com.roblox.client.s.a.InterfaceC0169a
    public void a(Context context, String str) {
        k.d("rbx.AppManager", "onActivityCreationLimit: activityName = " + str);
        com.roblox.client.analytics.d.a("ActivityTracker", "CreationLimit", str);
        if (com.roblox.client.b.U() && i.contains(str)) {
            k.e("rbx.AppManager", "!!!!! ACTIVITIES CREATED TOO MANY TIMES !!!!!");
            k.e("rbx.AppManager", "!!!!!           RESTART THE APP         !!!!!");
            com.roblox.client.analytics.d.a("ActivityTracker", "RestartApp", str);
            com.roblox.client.ae.o.a(context, 100L);
            com.roblox.client.ae.o.a();
        }
    }

    public boolean g() {
        return this.h;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(final Activity activity, e eVar) {
        k.b("rbx.AppManager", "handleLogout: logoutType = " + eVar + ", activity = " + activity.getLocalClassName());
        f6989a = true;
        a(eVar);
        final Bundle bundle = new Bundle();
        bundle.putSerializable("logout_type", eVar);
        if (eVar == e.LOGOUT_BY_USER_IN_NATIVE) {
            final q qVar = activity instanceof q ? (q) activity : null;
            if (qVar != null) {
                qVar.a((Context) qVar);
            }
            com.roblox.client.startup.c.a(activity).a((Context) activity, true, new c.a() { // from class: com.roblox.client.s.c.2
                @Override // com.roblox.client.t.c.a
                public void a() {
                    k.c("rbx.AppManager", "handleLogout: ... Logout API finished.");
                    new com.roblox.client.locale.i().a(activity, new i.a() { // from class: com.roblox.client.s.c.2.1
                        @Override // com.roblox.client.locale.i.a
                        public void a(boolean z) {
                            k.c("rbx.AppManager", "handleLogout: ... Get-Locale API finished.");
                            if (qVar != null && !qVar.isFinishing()) {
                                qVar.E();
                            }
                            com.roblox.client.s.e.a().a(2, bundle);
                            boolean unused = c.f6989a = false;
                        }
                    });
                }
            });
            return;
        }
        com.roblox.client.startup.c.a(activity).a((Context) activity, false, (c.a) null);
        com.roblox.client.s.e.a().a(2, bundle);
        f6989a = false;
    }

    /* JADX INFO: renamed from: com.roblox.client.s.c$3, reason: invalid class name */
    static /* synthetic */ class AnonymousClass3 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f7000a;

        static {
            int[] iArr = new int[e.values().length];
            f7000a = iArr;
            try {
                iArr[e.LOGOUT_BY_USER_IN_NATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7000a[e.LOGOUT_BY_USER_IN_LUA.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7000a[e.LOGOUT_BY_401_ERROR_IN_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7000a[e.LOGOUT_BY_401_ERROR_IN_WEB.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7000a[e.LOGOUT_BY_401_ERROR_IN_LUA.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private void a(e eVar) {
        int i2 = AnonymousClass3.f7000a[eVar.ordinal()];
        if (i2 == 1) {
            p.b("manual", "manual");
            return;
        }
        if (i2 == 2) {
            p.b("manual", "luaapp");
            return;
        }
        if (i2 == 3) {
            p.b("failedSessionCheck", "native");
            return;
        }
        if (i2 == 4) {
            p.b("failedSessionCheck", "webview");
            return;
        }
        if (i2 == 5) {
            p.b("failedSessionCheck", "luaapp");
            return;
        }
        k.d("rbx.AppManager", "fireLogoutEvent: Unknown logoutType:" + eVar);
    }

    public static e a(Bundle bundle) {
        e eVar;
        if (bundle != null && (eVar = (e) bundle.getSerializable("logout_type")) != null) {
            return eVar;
        }
        k.e("rbx.AppManager", "getLogoutTypeFromBundle: Logic error: Cannot find LogoutType enum in bundle!");
        return e.LOGOUT_BY_USER_IN_NATIVE;
    }

    private void c(Context context) {
        com.roblox.client.analytics.e eVarG = com.roblox.client.l.a().g();
        this.f = eVarG;
        eVarG.a(context);
    }

    public static class f implements f.a {
        @Override // com.roblox.engine.f.a
        public com.roblox.engine.f a() {
            return new com.roblox.engine.f() { // from class: com.roblox.client.s.c.f.1
                @Override // com.roblox.engine.f
                protected void a(Context context, String str) {
                    com.roblox.client.i.d(context);
                    if (com.roblox.client.b.cw() || com.roblox.client.x.c.n()) {
                        String strU = u.u();
                        NativeSettingsInterface.nativeSetDefaultAppPolicyFile(context.getDir("assets", 0).getPath() + "/content/guac/defaultConfigs/GuacDefaultPolicy-" + strU + ".json");
                    }
                }
            };
        }
    }

    public static class d extends com.roblox.platform.http.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f7011a;

        public d(Context context) {
            this.f7011a = context;
        }

        @Override // com.roblox.platform.http.c, com.roblox.platform.http.e
        public x a() {
            r.a(this.f7011a);
            return super.a();
        }
    }
}
