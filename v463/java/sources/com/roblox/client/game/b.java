package com.roblox.client.game;

import android.content.Context;
import android.os.AsyncTask;
import android.view.Surface;
import com.roblox.client.b;
import com.roblox.client.components.b;
import com.roblox.client.u;
import com.roblox.engine.jni.EngineJavaCallback2;
import com.roblox.engine.jni.EngineJavaCallbackWrapper;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.NativeGLJavaInterface;
import com.roblox.platform.http.g;
import java.util.Vector;
import org.fmod.FMOD;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements g.a {
    private a f;
    private c g;
    private C0149b i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6236a = "rbx.appshell";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6237b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6238c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6239d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6240e = false;
    private Vector<com.roblox.engine.b.b> h = new Vector<>();

    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f6254a = new b();
    }

    public interface g {
        void a(int i);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        com.roblox.engine.jni.model.c f6247a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        com.roblox.engine.jni.model.b f6248b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f6249c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6250d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        long f6251e;
        boolean f;
        String g;
        int h;
        String i;

        public com.roblox.engine.jni.model.b a() {
            return this.f6248b;
        }
    }

    public static b a() {
        return d.f6254a;
    }

    public void a(Context context) {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.setup() " + this.f6237b);
        if (!this.f6237b) {
            this.f6237b = true;
            u.as();
            FMOD.init(context);
            NativeGLInterface.nativeGameGlobalInit();
            return;
        }
        u.at();
    }

    public void a(final Context context, final g gVar) {
        com.roblox.platform.e.b("rbx.appshell", "ASMA.loadAllAppSettings()");
        if (gVar == null) {
            throw new RuntimeException("loadAllAppSettings: Callback must not be null.");
        }
        com.roblox.client.b.a(context, new b.InterfaceC0127b() { // from class: com.roblox.client.game.b.1
            @Override // com.roblox.client.b.InterfaceC0127b
            public void a(boolean z, com.roblox.client.http.j jVar) {
                if (z) {
                    b.this.a(context);
                    b.this.a(new g() { // from class: com.roblox.client.game.b.1.1
                        @Override // com.roblox.client.game.b.g
                        public void a(int i) {
                            if (i == 0) {
                                com.roblox.client.x.c.g();
                                gVar.a(0);
                            } else {
                                gVar.a(1);
                            }
                        }
                    });
                } else {
                    gVar.a(1);
                }
            }
        });
    }

    public void a(final g gVar) {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.loadSettings() " + this.f6238c);
        if (this.f6238c) {
            com.roblox.platform.e.c("rbx.appshell", "ASMA.loadSettings() ... skipping because Init already does it!");
            if (gVar != null) {
                gVar.a(0);
                return;
            }
            return;
        }
        k();
        c cVar = new c(new g() { // from class: com.roblox.client.game.b.2
            @Override // com.roblox.client.game.b.g
            public void a(int i) {
                if (i == 0) {
                    b.this.f6238c = true;
                }
                g gVar2 = gVar;
                if (gVar2 != null) {
                    gVar2.a(i);
                }
            }
        });
        this.g = cVar;
        cVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    public void b(g gVar) {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.loadSettingsAndAssets() " + this.f6238c);
        new f("LoadSettingsAndAssets", gVar).a();
    }

    private void k() {
        if (this.g != null) {
            com.roblox.platform.e.b("rbx.appshell", "ASMA.resetTask: Cancel the current (running) task...");
            this.g.cancel(true);
        }
        this.g = null;
    }

    public void a(a aVar) {
        com.roblox.platform.e.b("rbx.appshell", "ASMA.initializeDataModel: mHasSettings:" + this.f6238c + ", mIsInitialized:" + this.f6239d);
        if (!this.f6238c || this.f6239d) {
            return;
        }
        l();
        com.roblox.platform.e.c("rbx.appshell", "ASMA.initializeDataModel()");
        this.f = aVar;
        this.f6239d = true;
        NativeGLInterface.nativeAppBridgeV2Init(aVar.f6247a, aVar.f6248b, u.d(), u.t(), u.i());
    }

    public void a(Surface surface) {
        if (this.f6239d) {
            l();
            a aVarG = g();
            NativeGLInterface.setTaskSchedulerBackgroundMode(false, "ASMA.start");
            NativeGLInterface.nativeAppBridgeV2StartApp(surface, aVarG.f6247a, aVarG.f6249c, aVarG.f6250d, aVarG.f6251e, aVarG.f, aVarG.g, aVarG.h, aVarG.i);
        }
    }

    public void a(Context context, Surface surface) {
        com.roblox.platform.e.b("rbx.appshell", "ASMA.restart");
        d();
        a(com.roblox.client.game.e.a(context));
        a(surface);
    }

    public void b() {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.stop");
        if (this.f6239d) {
            NativeGLInterface.nativeAppBridgeV2PauseApp();
            if (com.roblox.client.l.a().h().b()) {
                return;
            }
            NativeGLInterface.setTaskSchedulerBackgroundMode(true, "ASMA.stop");
        }
    }

    public void c() {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.pause");
        if (this.f6239d) {
            com.roblox.platform.e.b("rbx.appshell", "ASMA.pause(): Do nothing in AppBridge refactor!");
            if (com.roblox.client.l.a().h().b()) {
                return;
            }
            NativeGLInterface.setTaskSchedulerBackgroundMode(true, "ASMA.pause");
        }
    }

    public void a(Surface surface, float f2) {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.updateWindowHandle");
        if (this.f6239d) {
            NativeGLInterface.nativeAppBridgeV2UpdateSurfaceApp(surface, f2);
        }
    }

    public void d() {
        if (this.f6239d) {
            com.roblox.platform.e.b("rbx.appshell", "ASMA.destroy() ....");
            NativeGLInterface.nativeAppBridgeV2DestroyApp();
        }
        f();
    }

    public boolean e() {
        return this.f6239d;
    }

    public void f() {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.reset()");
        this.f6237b = false;
        this.f6239d = false;
        this.f6240e = false;
        this.f = null;
        NativeGLJavaInterface.replaceImplementation(C0149b.class, new EngineJavaCallback2());
        k();
    }

    public a g() {
        return this.f;
    }

    public void a(com.roblox.engine.b.c cVar) {
        if (!this.f6237b) {
            com.roblox.platform.e.d("rbx.appshell", "ASMA.sendAppEventOnGameLoaded: The manager is not yet setup. Ignore.");
        } else {
            NativeGLInterface.nativeAppBridgeV2SendAppEventOnGameLoaded(cVar.f7611b, cVar.f7612c, cVar.f7613d);
        }
    }

    public void a(com.roblox.engine.b.b bVar) {
        if (bVar == null) {
            return;
        }
        this.h.add(bVar);
        if (h()) {
            a(this.h);
        }
    }

    private void a(Vector<com.roblox.engine.b.b> vector) {
        while (!vector.isEmpty()) {
            com.roblox.engine.b.b bVarRemove = vector.remove(0);
            com.roblox.platform.e.c("rbx.appshell", "publishPendingReadyEvents() " + bVarRemove.f7611b + ", " + bVarRemove.f7612c + ", " + bVarRemove.f7613d + ", " + bVarRemove.f7610a);
            NativeGLInterface.nativeAppBridgeV2SendAppEventOnAppReady(bVarRemove.f7611b, bVarRemove.f7612c, bVarRemove.f7613d, bVarRemove.f7610a);
        }
    }

    public boolean h() {
        return this.f6240e;
    }

    public void a(String str) {
        com.roblox.platform.e.c("rbx.appshell", "ASMA.onAppReady() " + str);
        this.f6240e = true;
        a(this.h);
    }

    public void i() {
        NativeGLInterface.nativeHandleBackPressed();
    }

    public void a(EngineJavaCallback2 engineJavaCallback2) {
        C0149b c0149b = new C0149b(engineJavaCallback2);
        this.i = c0149b;
        NativeGLJavaInterface.setImplementation(c0149b);
    }

    private void l() {
        C0149b c0149b = this.i;
        if (c0149b != null) {
            NativeGLJavaInterface.setImplementation(c0149b);
        }
    }

    public void a(boolean z) {
        a(new com.roblox.engine.b.a(z));
    }

    @Override // com.roblox.platform.http.g.a
    public void j() {
        com.roblox.platform.e.b("rbx.appshell", "onCookieChanged.");
        u.at();
    }

    /* JADX INFO: renamed from: com.roblox.client.game.b$b, reason: collision with other inner class name */
    public class C0149b extends EngineJavaCallbackWrapper {
        public C0149b(EngineJavaCallback2 engineJavaCallback2) {
            super(engineJavaCallback2);
        }

        @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
        public void b(String str, String str2) {
            if (str.equals("APP_READY")) {
                b.this.a(str2);
            }
            super.b(str, str2);
        }
    }

    public static class c extends AsyncTask<Void, Void, Integer> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g f6253a;

        public c(g gVar) {
            this.f6253a = gVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer doInBackground(Void... voidArr) {
            return Integer.valueOf(NativeGLInterface.nativeInitClientSettings(com.roblox.client.b.c(), u.ab()));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Integer num) {
            g gVar = this.f6253a;
            if (gVar != null) {
                gVar.a(num.intValue());
            }
        }
    }

    public static class e extends AsyncTask<Void, Void, Void> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g f6255a;

        public e(g gVar) {
            this.f6255a = gVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            com.roblox.engine.f.a().b();
            com.roblox.platform.e.c("rbx.xapkmanager", "Unpacking complete");
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r2) {
            g gVar = this.f6255a;
            if (gVar != null) {
                gVar.a(0);
            }
        }
    }

    public static class f extends com.roblox.client.components.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private g f6256a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f6257b;

        public f(String str, g gVar) {
            super(str);
            this.f6256a = gVar;
            if (!com.roblox.client.x.c.h()) {
                a(new b.a() { // from class: com.roblox.client.game.b.f.1
                    @Override // com.roblox.client.components.b.a
                    public void a() {
                        b.a().a(new g() { // from class: com.roblox.client.game.b.f.1.1
                            @Override // com.roblox.client.game.b.g
                            public void a(int i) {
                                f.this.f6257b = i;
                                f.this.a("SettingsLoaded");
                            }
                        });
                    }
                });
            }
            a(new b.a() { // from class: com.roblox.client.game.b.f.2
                @Override // com.roblox.client.components.b.a
                public void a() {
                    new e(new g() { // from class: com.roblox.client.game.b.f.2.1
                        @Override // com.roblox.client.game.b.g
                        public void a(int i) {
                            f.this.a("AssetsUnpacked");
                        }
                    }).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
                }
            });
        }

        @Override // com.roblox.client.components.b
        public void c() {
            this.f6256a.a(this.f6257b);
        }
    }
}
