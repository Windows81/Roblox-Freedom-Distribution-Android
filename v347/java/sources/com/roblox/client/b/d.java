package com.roblox.client.b;

import com.roblox.client.util.g;
import com.roblox.client.util.p;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static d f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f6468a = a.LAUNCH_STATE_NONE;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6469b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f6470c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final p.a f6471d;
    private final com.roblox.client.i.f e;

    enum a {
        LAUNCH_STATE_NONE,
        LAUNCH_STATE_UI_PAUSED_BY_USER,
        LAUNCH_STATE_INIT_STARTING,
        LAUNCH_STATE_INIT_DONE_OK,
        LAUNCH_STATE_INIT_STOPPED,
        LAUNCH_STATE_SESSION_CHECK_DONE_OK,
        LAUNCH_STATE_SESSION_CHECK_STOPPED,
        LAUNCH_STATE_POST_LOGIN_DONE_OK,
        LAUNCH_STATE_UI_HOME_STARTING,
        LAUNCH_STATE_UI_HOME_LOADED_OK
    }

    public static d a() {
        if (f == null) {
            synchronized (d.class) {
                if (f == null) {
                    f = new d(com.roblox.client.i.f.a(), new p.b());
                }
            }
        }
        return f;
    }

    d(com.roblox.client.i.f fVar, p.a aVar) {
        g.b("LaunchTimeReporter", "[Constructor]: ENTER.");
        this.e = fVar;
        this.f6471d = aVar;
    }

    public void b() {
        if (this.f6468a == a.LAUNCH_STATE_NONE) {
            this.f6468a = a.LAUNCH_STATE_INIT_STARTING;
            this.f6469b = this.f6471d.a();
        }
    }

    public void a(boolean z) {
        if (this.f6468a == a.LAUNCH_STATE_INIT_STARTING) {
            this.f6468a = z ? a.LAUNCH_STATE_INIT_DONE_OK : a.LAUNCH_STATE_INIT_STOPPED;
            this.f6470c = this.f6471d.a();
            if (z) {
                long j = this.f6470c - this.f6469b;
                c.a("Startup", "Launch", j);
                this.e.a("Android-AppStartup-Launch-Time", j);
            }
        }
    }

    public void b(boolean z) {
        if (this.f6468a == a.LAUNCH_STATE_INIT_DONE_OK) {
            this.f6468a = z ? a.LAUNCH_STATE_SESSION_CHECK_DONE_OK : a.LAUNCH_STATE_SESSION_CHECK_STOPPED;
            if (z) {
                long jA = this.f6471d.a() - this.f6470c;
                c.a("Startup", "AutoLogin", jA);
                this.e.a("Android-AppStartup-Auto-Login-Time", jA);
            }
        }
    }

    public void c() {
        if (this.f6468a == a.LAUNCH_STATE_SESSION_CHECK_DONE_OK) {
            this.f6468a = a.LAUNCH_STATE_POST_LOGIN_DONE_OK;
        }
    }

    public void d() {
        if (this.f6468a != a.LAUNCH_STATE_UI_HOME_STARTING) {
            this.f6468a = a.LAUNCH_STATE_UI_PAUSED_BY_USER;
        }
    }

    public void e() {
        if (this.f6468a == a.LAUNCH_STATE_UI_HOME_STARTING) {
            this.f6468a = a.LAUNCH_STATE_UI_PAUSED_BY_USER;
        }
    }

    public void f() {
        if (this.f6468a == a.LAUNCH_STATE_POST_LOGIN_DONE_OK) {
            this.f6468a = a.LAUNCH_STATE_UI_HOME_STARTING;
        }
    }

    public void c(boolean z) {
        if (this.f6468a == a.LAUNCH_STATE_UI_HOME_STARTING) {
            this.f6468a = a.LAUNCH_STATE_UI_HOME_LOADED_OK;
            long jA = this.f6471d.a() - this.f6469b;
            if (jA < 0) {
                c.a("Startup time from Launch to Home is negative");
                return;
            }
            c.a("Startup", "Home", jA);
            this.e.a("Android-AppStartup-Launch-To-Home-Time", jA);
            if (com.roblox.client.b.cb()) {
                this.e.a(z ? "Android-AppStartup-Launch-To-Home-Time-Lua" : "Android-AppStartup-Launch-To-Home-Time-Web", jA);
            }
        }
    }
}
