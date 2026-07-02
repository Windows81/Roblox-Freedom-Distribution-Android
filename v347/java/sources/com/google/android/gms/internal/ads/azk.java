package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class azk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f4667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f4668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzang f4670d;
    private kr<ayy> e;
    private kr<ayy> f;
    private bab g;
    private int h;

    public azk(Context context, zzang zzangVar, String str) {
        this.f4667a = new Object();
        this.h = 1;
        this.f4669c = str;
        this.f4668b = context.getApplicationContext();
        this.f4670d = zzangVar;
        this.e = new azw();
        this.f = new azw();
    }

    public azk(Context context, zzang zzangVar, String str, kr<ayy> krVar, kr<ayy> krVar2) {
        this(context, zzangVar, str);
        this.e = krVar;
        this.f = krVar2;
    }

    protected final bab a(final agv agvVar) {
        final bab babVar = new bab(this.f);
        nj.f5346a.execute(new Runnable(this, agvVar, babVar) { // from class: com.google.android.gms.internal.ads.azl

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final azk f4671a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final agv f4672b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private final bab f4673c;

            {
                this.f4671a = this;
                this.f4672b = agvVar;
                this.f4673c = babVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f4671a.a(this.f4672b, this.f4673c);
            }
        });
        babVar.a(new azt(this, babVar), new azu(this, babVar));
        return babVar;
    }

    final /* synthetic */ void a(agv agvVar, final bab babVar) {
        try {
            Context context = this.f4668b;
            zzang zzangVar = this.f4670d;
            final ayy ayjVar = ((Boolean) aoo.f().a(aro.aA)).booleanValue() ? new ayj(context, zzangVar) : new aza(context, zzangVar, agvVar, null);
            ayjVar.a(new ayz(this, babVar, ayjVar) { // from class: com.google.android.gms.internal.ads.azm

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                private final azk f4674a;

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                private final bab f4675b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                private final ayy f4676c;

                {
                    this.f4674a = this;
                    this.f4675b = babVar;
                    this.f4676c = ayjVar;
                }

                @Override // com.google.android.gms.internal.ads.ayz
                public final void a() {
                    final azk azkVar = this.f4674a;
                    final bab babVar2 = this.f4675b;
                    final ayy ayyVar = this.f4676c;
                    jm.f5184a.postDelayed(new Runnable(azkVar, babVar2, ayyVar) { // from class: com.google.android.gms.internal.ads.azn

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        private final azk f4677a;

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        private final bab f4678b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        private final ayy f4679c;

                        {
                            this.f4677a = azkVar;
                            this.f4678b = babVar2;
                            this.f4679c = ayyVar;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f4677a.a(this.f4678b, this.f4679c);
                        }
                    }, azv.f4697b);
                }
            });
            ayjVar.a("/jsLoaded", new azp(this, babVar, ayjVar));
            lo loVar = new lo();
            azq azqVar = new azq(this, agvVar, ayjVar, loVar);
            loVar.a(azqVar);
            ayjVar.a("/requestReload", azqVar);
            if (this.f4669c.endsWith(".js")) {
                ayjVar.a(this.f4669c);
            } else if (this.f4669c.startsWith("<html>")) {
                ayjVar.c(this.f4669c);
            } else {
                ayjVar.d(this.f4669c);
            }
            jm.f5184a.postDelayed(new azr(this, babVar, ayjVar), azv.f4696a);
        } catch (Throwable th) {
            jd.b("Error creating webview.", th);
            com.google.android.gms.ads.internal.aw.i().a(th, "SdkJavascriptFactory.loadJavascriptEngine");
            babVar.a();
        }
    }

    final /* synthetic */ void a(bab babVar, ayy ayyVar) {
        synchronized (this.f4667a) {
            if (babVar.b() == -1 || babVar.b() == 1) {
                return;
            }
            babVar.a();
            Executor executor = nj.f5346a;
            ayyVar.getClass();
            executor.execute(azo.a(ayyVar));
            jd.a("Could not receive loaded message in a timely manner. Rejecting.");
        }
    }

    public final azx b(agv agvVar) {
        azx azxVarC;
        synchronized (this.f4667a) {
            if (this.g == null || this.g.b() == -1) {
                this.h = 2;
                this.g = a((agv) null);
                azxVarC = this.g.c();
            } else if (this.h == 0) {
                azxVarC = this.g.c();
            } else if (this.h == 1) {
                this.h = 2;
                a((agv) null);
                azxVarC = this.g.c();
            } else {
                azxVarC = this.h == 2 ? this.g.c() : this.g.c();
            }
        }
        return azxVarC;
    }
}
