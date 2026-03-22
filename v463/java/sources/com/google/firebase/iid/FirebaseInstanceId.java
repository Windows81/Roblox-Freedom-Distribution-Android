package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class FirebaseInstanceId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long f5175a = TimeUnit.HOURS.toSeconds(8);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static y f5176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ScheduledThreadPoolExecutor f5177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f5178d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.google.firebase.b f5179e;
    private final p f;
    private b g;
    private final s h;
    private final ac i;
    private boolean j;
    private final a k;

    public static FirebaseInstanceId a() {
        return getInstance(com.google.firebase.b.d());
    }

    public static synchronized FirebaseInstanceId getInstance(com.google.firebase.b bVar) {
        return (FirebaseInstanceId) bVar.a(FirebaseInstanceId.class);
    }

    FirebaseInstanceId(com.google.firebase.b bVar, com.google.firebase.a.d dVar) {
        this(bVar, new p(bVar.a()), ak.b(), ak.b(), dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    class a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f5181b = c();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.google.firebase.a.d f5182c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.google.firebase.a.b<com.google.firebase.a> f5183d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Boolean f5184e;

        a(com.google.firebase.a.d dVar) {
            this.f5182c = dVar;
            Boolean boolB = b();
            this.f5184e = boolB;
            if (boolB == null && this.f5181b) {
                com.google.firebase.a.b<com.google.firebase.a> bVar = new com.google.firebase.a.b(this) { // from class: com.google.firebase.iid.aq

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    private final FirebaseInstanceId.a f5232a;

                    {
                        this.f5232a = this;
                    }

                    @Override // com.google.firebase.a.b
                    public final void a(com.google.firebase.a.a aVar) {
                        FirebaseInstanceId.a aVar2 = this.f5232a;
                        synchronized (aVar2) {
                            if (aVar2.a()) {
                                FirebaseInstanceId.this.m();
                            }
                        }
                    }
                };
                this.f5183d = bVar;
                dVar.a(com.google.firebase.a.class, bVar);
            }
        }

        final synchronized boolean a() {
            if (this.f5184e != null) {
                return this.f5184e.booleanValue();
            }
            return this.f5181b && FirebaseInstanceId.this.f5179e.e();
        }

        private final Boolean b() {
            ApplicationInfo applicationInfo;
            Context contextA = FirebaseInstanceId.this.f5179e.a();
            SharedPreferences sharedPreferences = contextA.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = contextA.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(contextA.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }

        private final boolean c() {
            try {
                Class.forName("com.google.firebase.messaging.a");
                return true;
            } catch (ClassNotFoundException unused) {
                Context contextA = FirebaseInstanceId.this.f5179e.a();
                Intent intent = new Intent("com.google.firebase.MESSAGING_EVENT");
                intent.setPackage(contextA.getPackageName());
                ResolveInfo resolveInfoResolveService = contextA.getPackageManager().resolveService(intent, 0);
                return (resolveInfoResolveService == null || resolveInfoResolveService.serviceInfo == null) ? false : true;
            }
        }
    }

    private FirebaseInstanceId(com.google.firebase.b bVar, p pVar, Executor executor, Executor executor2, com.google.firebase.a.d dVar) {
        this.h = new s();
        this.j = false;
        if (p.a(bVar) == null) {
            throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
        }
        synchronized (FirebaseInstanceId.class) {
            if (f5176b == null) {
                f5176b = new y(bVar.a());
            }
        }
        this.f5179e = bVar;
        this.f = pVar;
        if (this.g == null) {
            b bVar2 = (b) bVar.a(b.class);
            if (bVar2 != null && bVar2.b()) {
                this.g = bVar2;
            } else {
                this.g = new ar(bVar, pVar, executor);
            }
        }
        this.g = this.g;
        this.f5178d = executor2;
        this.i = new ac(f5176b);
        a aVar = new a(dVar);
        this.k = aVar;
        if (aVar.a()) {
            m();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m() {
        z zVarE = e();
        if (!j() || zVarE == null || zVarE.b(this.f.b()) || this.i.a()) {
            n();
        }
    }

    final com.google.firebase.b b() {
        return this.f5179e;
    }

    final synchronized void a(boolean z) {
        this.j = z;
    }

    private final synchronized void n() {
        if (!this.j) {
            a(0L);
        }
    }

    final synchronized void a(long j) {
        a(new aa(this, this.f, this.i, Math.min(Math.max(30L, j << 1), f5175a)), j);
        this.j = true;
    }

    static void a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            if (f5177c == null) {
                f5177c = new ScheduledThreadPoolExecutor(1);
            }
            f5177c.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    public String c() {
        m();
        return o();
    }

    private static String o() {
        return p.a(f5176b.b("").a());
    }

    public com.google.android.gms.f.g<com.google.firebase.iid.a> d() {
        return b(p.a(this.f5179e), "*");
    }

    private final com.google.android.gms.f.g<com.google.firebase.iid.a> b(final String str, final String str2) {
        final String strC = c(str2);
        final com.google.android.gms.f.h hVar = new com.google.android.gms.f.h();
        this.f5178d.execute(new Runnable(this, str, str2, hVar, strC) { // from class: com.google.firebase.iid.an

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final FirebaseInstanceId f5217a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final String f5218b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final String f5219c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final com.google.android.gms.f.h f5220d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private final String f5221e;

            {
                this.f5217a = this;
                this.f5218b = str;
                this.f5219c = str2;
                this.f5220d = hVar;
                this.f5221e = strC;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5217a.a(this.f5218b, this.f5219c, this.f5220d, this.f5221e);
            }
        });
        return hVar.a();
    }

    final z e() {
        return c(p.a(this.f5179e), "*");
    }

    private static z c(String str, String str2) {
        return f5176b.a("", str, str2);
    }

    final String f() throws IOException {
        return a(p.a(this.f5179e), "*");
    }

    public String a(String str, String str2) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        return ((com.google.firebase.iid.a) a(b(str, str2))).a();
    }

    private final <T> T a(com.google.android.gms.f.g<T> gVar) throws IOException {
        try {
            return (T) com.google.android.gms.f.j.a(gVar, 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | TimeoutException unused) {
            throw new IOException("SERVICE_NOT_AVAILABLE");
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof IOException) {
                if ("INSTANCE_ID_RESET".equals(cause.getMessage())) {
                    h();
                }
                throw ((IOException) cause);
            }
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new IOException(e2);
        }
    }

    final void a(String str) throws IOException {
        z zVarE = e();
        if (zVarE == null || zVarE.b(this.f.b())) {
            throw new IOException("token not available");
        }
        a(this.g.a(o(), zVarE.f5294a, str));
    }

    final void b(String str) throws IOException {
        z zVarE = e();
        if (zVarE == null || zVarE.b(this.f.b())) {
            throw new IOException("token not available");
        }
        a(this.g.b(o(), zVarE.f5294a, str));
    }

    static boolean g() {
        if (Log.isLoggable("FirebaseInstanceId", 3)) {
            return true;
        }
        return Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3);
    }

    final synchronized void h() {
        f5176b.b();
        if (this.k.a()) {
            n();
        }
    }

    final boolean i() {
        return this.g.b();
    }

    final boolean j() {
        return this.g.a();
    }

    final void k() throws IOException {
        a(this.g.a(o(), z.a(e())));
    }

    final void l() {
        f5176b.c("");
        n();
    }

    private static String c(String str) {
        return (str.isEmpty() || str.equalsIgnoreCase(AppMeasurement.FCM_ORIGIN) || str.equalsIgnoreCase("gcm")) ? "*" : str;
    }

    final /* synthetic */ void a(final String str, String str2, final com.google.android.gms.f.h hVar, final String str3) {
        final String strO = o();
        z zVarC = c(str, str2);
        if (zVarC != null && !zVarC.b(this.f.b())) {
            hVar.a(new ax(strO, zVarC.f5294a));
        } else {
            final String strA = z.a(zVarC);
            this.h.a(str, str3, new u(this, strO, strA, str, str3) { // from class: com.google.firebase.iid.ao

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final FirebaseInstanceId f5222a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final String f5223b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final String f5224c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final String f5225d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private final String f5226e;

                {
                    this.f5222a = this;
                    this.f5223b = strO;
                    this.f5224c = strA;
                    this.f5225d = str;
                    this.f5226e = str3;
                }

                @Override // com.google.firebase.iid.u
                public final com.google.android.gms.f.g a() {
                    return this.f5222a.a(this.f5223b, this.f5224c, this.f5225d, this.f5226e);
                }
            }).a(this.f5178d, new com.google.android.gms.f.c(this, str, str3, hVar, strO) { // from class: com.google.firebase.iid.ap

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final FirebaseInstanceId f5227a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final String f5228b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final String f5229c;

                /* JADX INFO: renamed from: d, reason: collision with root package name */
                private final com.google.android.gms.f.h f5230d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                private final String f5231e;

                {
                    this.f5227a = this;
                    this.f5228b = str;
                    this.f5229c = str3;
                    this.f5230d = hVar;
                    this.f5231e = strO;
                }

                @Override // com.google.android.gms.f.c
                public final void a(com.google.android.gms.f.g gVar) {
                    this.f5227a.a(this.f5228b, this.f5229c, this.f5230d, this.f5231e, gVar);
                }
            });
        }
    }

    final /* synthetic */ void a(String str, String str2, com.google.android.gms.f.h hVar, String str3, com.google.android.gms.f.g gVar) {
        if (gVar.b()) {
            String str4 = (String) gVar.d();
            f5176b.a("", str, str2, str4, this.f.b());
            hVar.a(new ax(str3, str4));
            return;
        }
        hVar.a(gVar.e());
    }

    final /* synthetic */ com.google.android.gms.f.g a(String str, String str2, String str3, String str4) {
        return this.g.a(str, str2, str3, str4);
    }
}
