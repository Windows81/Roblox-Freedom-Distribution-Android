package com.roblox.client.analytics;

import android.content.Context;
import com.roblox.client.ae.t;
import com.roblox.client.l;
import com.roblox.client.u;
import java.lang.Thread;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public a.a.a f5653a;

    /* JADX INFO: renamed from: com.roblox.client.analytics.a$a, reason: collision with other inner class name */
    private static class C0123a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f5654a = new a();
    }

    public static a a() {
        return C0123a.f5654a;
    }

    private a() {
    }

    public void a(Context context) {
        if (this.f5653a == null) {
            a.a.a aVar = new a.a.a(context, new a.a.b(com.roblox.client.m.c.a().aZ(), com.roblox.client.m.c.a().ba()));
            this.f5653a = aVar;
            aVar.a(new a.a.d.a() { // from class: com.roblox.client.analytics.-$$Lambda$a$o6j5MDE0Hx3LMb4yBxJ4NmMGnCg
                @Override // a.a.d.a
                public final a.a.g.a onEvent(a.a.g.a aVar2) {
                    return a.a(aVar2);
                }
            });
            new b(this.f5653a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a.a.g.a a(a.a.g.a aVar) {
        aVar.g.put("BaseUrl", u.d());
        aVar.g.put("UserId", Long.toString(com.roblox.client.ad.c.a().d()));
        aVar.g.put("IsInGame", Boolean.toString(l.a().h().b()));
        aVar.g.put("BuildVariant", "googleProd" + t.d("release"));
        aVar.g.put("BuildId", u.v());
        return aVar;
    }

    public static class b implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Thread.UncaughtExceptionHandler f5655a = Thread.getDefaultUncaughtExceptionHandler();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Thread.UncaughtExceptionHandler f5656b;

        public b(a.a.a aVar) {
            a.a.g.b.a(aVar);
            this.f5656b = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (a()) {
                com.roblox.platform.e.a("rbx.backtrace").c("uncaughtException() using: " + this.f5656b);
                if (this.f5656b != null) {
                    a(true);
                    this.f5656b.uncaughtException(thread, th);
                    return;
                }
                return;
            }
            com.roblox.platform.e.a("rbx.backtrace").c("uncaughtException() using: " + this.f5655a);
            if (this.f5655a != null) {
                a(false);
                this.f5655a.uncaughtException(thread, th);
            }
        }

        private boolean a() {
            return ((int) (Math.random() * 100.0d)) < com.roblox.client.m.c.a().aY();
        }

        private void a(boolean z) {
            if (com.roblox.client.m.c.a().bb()) {
                com.roblox.client.s.f.b().a(z ? "Android-Backtrace-UnhandledException-Sent" : "Android-Backtrace-UnhandledException-NotSent");
            }
        }
    }
}
