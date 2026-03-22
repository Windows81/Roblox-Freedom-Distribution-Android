package com.roblox.client;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import c.ad;
import com.roblox.client.game.ActivityGame;
import com.roblox.client.game.d;
import com.roblox.client.landing.ActivityStartMVP;
import com.roblox.platform.http.postbody.notifications.RegisterPushNotificationPostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static l f6413b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6414a = "com.roblox.client.implementation.AppImplementations";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f6415c;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final com.roblox.client.game.i f6416a = new com.roblox.client.game.i();
    }

    public static l a() {
        if (f6413b == null) {
            synchronized (l.class) {
                if (f6413b == null) {
                    f6413b = new l();
                }
            }
        }
        return f6413b;
    }

    private l() {
        try {
            this.f6415c = Class.forName("com.roblox.client.implementation.AppImplementations").newInstance();
        } catch (ClassNotFoundException unused) {
            com.roblox.client.ae.k.d("rbx.main", "Failed to find implementation class");
        } catch (IllegalAccessException | InstantiationException unused2) {
            com.roblox.client.ae.k.d("rbx.main", "Failed to instantiate implementation");
        }
    }

    public com.roblox.platform.h b() throws RuntimeException {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.j) {
            return ((com.roblox.client.shell.j) obj).a();
        }
        com.roblox.client.ae.k.a("rbx.main", "Using default Provider");
        return new com.roblox.platform.a();
    }

    public com.roblox.client.game.d a(d.a aVar, d.b bVar) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.b) {
            return ((com.roblox.client.shell.b) obj).a(aVar, bVar);
        }
        com.roblox.client.ae.k.a("rbx.main", "Using default DataModelNotifications");
        return new com.roblox.client.game.d(aVar, bVar);
    }

    public com.roblox.client.n.b c() {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.e) {
            return ((com.roblox.client.shell.e) obj).a();
        }
        com.roblox.client.ae.k.c("rbx.main", "Using default GenericWebFragment");
        return new com.roblox.client.n.b();
    }

    public Intent a(Context context) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.l) {
            return ((com.roblox.client.shell.l) obj).a(context);
        }
        com.roblox.client.ae.k.a("rbx.main", "Using default Start class");
        return new Intent(context, (Class<?>) ActivityStartMVP.class);
    }

    public Intent b(Context context) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.g) {
            return ((com.roblox.client.shell.g) obj).a(context);
        }
        com.roblox.client.ae.k.a("rbx.main", "Using default Main class");
        return new Intent(context, (Class<?>) ActivityNativeMain.class);
    }

    public Intent c(Context context) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.c) {
            return ((com.roblox.client.shell.c) obj).a(context);
        }
        com.roblox.client.ae.k.a("rbx.main", "Using default Game class");
        return new Intent(context, (Class<?>) ActivityGame.class);
    }

    public com.roblox.client.v.a d() {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.m) {
            return ((com.roblox.client.shell.m) obj).a();
        }
        com.roblox.client.ae.k.c("rbx.main", "Using empty TSS");
        return new com.roblox.client.v.a();
    }

    public com.roblox.client.purchase.a.a a(Activity activity) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.h) {
            return ((com.roblox.client.shell.h) obj).a(activity);
        }
        com.roblox.client.ae.k.c("rbx.main", "Using empty Midas");
        return new com.roblox.client.purchase.a.a();
    }

    public e.b<ad> a(RegisterPushNotificationPostBody registerPushNotificationPostBody) {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.i) {
            return ((com.roblox.client.shell.i) obj).a(registerPushNotificationPostBody);
        }
        com.roblox.client.ae.k.c("rbx.main", "No default push registration call");
        return null;
    }

    public com.roblox.client.pushnotification.m e() {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.k) {
            return ((com.roblox.client.shell.k) obj).a();
        }
        com.roblox.client.ae.k.c("rbx.main", "No default push registrar");
        return null;
    }

    public com.roblox.client.s.d f() {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.a) {
            return ((com.roblox.client.shell.a) obj).getAppsFlyerManager();
        }
        com.roblox.client.ae.k.c("rbx.main", "No AppsFlyer");
        return new com.roblox.client.s.d();
    }

    public com.roblox.client.analytics.e g() {
        Object obj = this.f6415c;
        if (obj instanceof com.roblox.client.shell.f) {
            return ((com.roblox.client.shell.f) obj).createGoogleAnalyticsImpl();
        }
        com.roblox.client.ae.k.c("rbx.main", "No GA");
        return new com.roblox.client.analytics.e();
    }

    public com.roblox.client.game.i h() {
        Object obj = this.f6415c;
        if (!(obj instanceof com.roblox.client.shell.d)) {
            return a.f6416a;
        }
        return ((com.roblox.client.shell.d) obj).a();
    }
}
