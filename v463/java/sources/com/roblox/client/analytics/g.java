package com.roblox.client.analytics;

import com.roblox.client.ae.k;
import com.roblox.client.ae.v;
import com.roblox.client.datastructures.NameValuePair;
import com.roblox.client.p;
import com.roblox.engine.jni.NativeAppTracingInterface;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {
    private static g i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f5681a = "app_start_loadtime";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5682b = "startup_to_lua";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5683c = "startup_to_web";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f5684d = a.LAUNCH_STATE_NONE;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f5685e = 0;
    private long f = 0;
    private final v.a g;
    private final com.roblox.client.s.f h;

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

    public static g a() {
        if (i == null) {
            synchronized (g.class) {
                if (i == null) {
                    i = new g(com.roblox.client.s.f.b(), new v.b());
                }
            }
        }
        return i;
    }

    g(com.roblox.client.s.f fVar, v.a aVar) {
        k.b("LaunchTimeReporter", "[Constructor]: ENTER.");
        this.h = fVar;
        this.g = aVar;
    }

    public void b() {
        if (this.f5684d == a.LAUNCH_STATE_NONE) {
            this.f5684d = a.LAUNCH_STATE_INIT_STARTING;
            this.f5685e = this.g.a();
            NativeAppTracingInterface.f7638a = NativeAppTracingInterface.a("startup", null);
            NativeAppTracingInterface.b(NativeAppTracingInterface.f7638a);
        }
    }

    public void a(boolean z) {
        if (this.f5684d == a.LAUNCH_STATE_INIT_STARTING) {
            this.f5684d = z ? a.LAUNCH_STATE_INIT_DONE_OK : a.LAUNCH_STATE_INIT_STOPPED;
            long jA = this.g.a();
            this.f = jA;
            if (z) {
                d.a("Startup", "Launch", jA - this.f5685e);
            }
        }
    }

    public void b(boolean z) {
        if (this.f5684d == a.LAUNCH_STATE_INIT_DONE_OK) {
            this.f5684d = z ? a.LAUNCH_STATE_SESSION_CHECK_DONE_OK : a.LAUNCH_STATE_SESSION_CHECK_STOPPED;
            if (z) {
                d.a("Startup", "AutoLogin", this.g.a() - this.f);
            }
        }
    }

    public void c() {
        if (this.f5684d == a.LAUNCH_STATE_SESSION_CHECK_DONE_OK) {
            this.f5684d = a.LAUNCH_STATE_POST_LOGIN_DONE_OK;
        }
    }

    public void d() {
        if (this.f5684d != a.LAUNCH_STATE_UI_HOME_STARTING) {
            this.f5684d = a.LAUNCH_STATE_UI_PAUSED_BY_USER;
        }
    }

    public void e() {
        if (this.f5684d == a.LAUNCH_STATE_POST_LOGIN_DONE_OK) {
            this.f5684d = a.LAUNCH_STATE_UI_HOME_STARTING;
        }
    }

    public void c(boolean z) {
        if (this.f5684d != a.LAUNCH_STATE_UI_HOME_STARTING) {
            if (!com.roblox.client.x.c.h()) {
                return;
            }
            if (this.f5684d != a.LAUNCH_STATE_INIT_STARTING && this.f5684d != a.LAUNCH_STATE_INIT_DONE_OK && this.f5684d != a.LAUNCH_STATE_SESSION_CHECK_DONE_OK) {
                return;
            }
        }
        this.f5684d = a.LAUNCH_STATE_UI_HOME_LOADED_OK;
        long jA = this.g.a() - this.f5685e;
        if (jA < 0) {
            d.a("Startup time from Launch to Home is negative");
            return;
        }
        d.a("Startup", "Home", jA);
        this.h.a("Android-AppStartup-Launch-To-Home-Time", jA);
        p.a("app_start_loadtime", z ? "startup_to_lua" : "startup_to_web", a(jA));
        NativeAppTracingInterface.c(NativeAppTracingInterface.f7638a);
        NativeAppTracingInterface.f7638a = null;
    }

    private List<NameValuePair> a(long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new NameValuePair("target", "mobile"));
        arrayList.add(new NameValuePair("event_type", "app_start_loadtime"));
        arrayList.add(new NameValuePair("startup_state", "cold"));
        arrayList.add(new NameValuePair("startup_time", Long.toString(j)));
        return arrayList;
    }
}
