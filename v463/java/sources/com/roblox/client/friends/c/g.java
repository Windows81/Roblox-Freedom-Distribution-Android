package com.roblox.client.friends.c;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.ae.k;
import com.roblox.client.ae.v;
import com.roblox.client.friends.c.e;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f6078a = !g.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ScheduledExecutorService f6080c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e f6081d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final com.roblox.client.friends.a f6082e;
    private final d f;
    private final v.a g;
    private final int h;
    private ScheduledFuture<?> i;
    private boolean j;
    private ScheduledFuture<?> k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f6079b = new Object();
    private final Runnable m = new Runnable() { // from class: com.roblox.client.friends.c.g.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ boolean f6083a = !g.class.desiredAssertionStatus();

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            k.c("NearbyUserTokenViewModel", "Validating token.");
            if (g.this.f()) {
                k.c("NearbyUserTokenViewModel", "Token invalid, do not validate.");
            } else {
                if (!f6083a && g.this.l.m_() == 0) {
                    throw new AssertionError();
                }
                g gVar = g.this;
                gVar.a((c) ((com.roblox.client.datastructures.d) gVar.l.m_()).f5980a, g.this.o);
            }
        }
    };
    private final Runnable n = new Runnable() { // from class: com.roblox.client.friends.c.g.2
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (g.this.f() || !g.this.e()) {
                return;
            }
            g gVar = g.this;
            gVar.a((com.roblox.client.datastructures.d<c>) gVar.a(1, (c) ((com.roblox.client.datastructures.d) gVar.l.m_()).f5980a));
        }
    };
    private final f o = new f() { // from class: com.roblox.client.friends.c.g.3
        @Override // com.roblox.client.friends.c.f
        public void a(c cVar) {
        }

        @Override // com.roblox.client.friends.c.f
        public void b(final c cVar) {
            k.c("NearbyUserTokenViewModel", "onInvalidToken triggered.");
            g.this.f6082e.a().execute(new Runnable() { // from class: com.roblox.client.friends.c.g.3.1

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                static final /* synthetic */ boolean f6087a = !g.class.desiredAssertionStatus();

                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public void run() {
                    if (!f6087a && g.this.l.m_() == 0) {
                        throw new AssertionError();
                    }
                    c cVar2 = (c) ((com.roblox.client.datastructures.d) g.this.l.m_()).f5980a;
                    if (!f6087a && cVar2 == null) {
                        throw new AssertionError();
                    }
                    if (g.this.f() || cVar.f6061a.equals(cVar2.f6061a)) {
                        g.this.a((com.roblox.client.datastructures.d<c>) g.this.a(1, cVar));
                    }
                }
            });
        }
    };
    private n<com.roblox.client.datastructures.d<c>> l = new n<>();

    public g(e eVar, int i, com.roblox.client.friends.a aVar, d dVar, v.a aVar2) {
        this.f6081d = eVar;
        this.h = i;
        b(a(5, (c) null));
        this.g = aVar2;
        this.f = dVar;
        this.f6082e = aVar;
        this.f6080c = Executors.newScheduledThreadPool(1);
    }

    public LiveData<com.roblox.client.datastructures.d<c>> b() {
        if (!this.j) {
            g();
        }
        if (f() || e()) {
            this.f.a();
            final LiveData<com.roblox.client.datastructures.d<c>> liveDataA = this.f6081d.a();
            this.l.a(liveDataA, new q<com.roblox.client.datastructures.d<c>>() { // from class: com.roblox.client.friends.c.g.4
                @Override // androidx.lifecycle.q
                public void a(final com.roblox.client.datastructures.d<c> dVar) {
                    k.c("NearbyUserTokenViewModel", "getToken.onChanged: " + dVar.f5981b);
                    g.this.l.a(liveDataA);
                    g.this.f6082e.a().execute(new Runnable() { // from class: com.roblox.client.friends.c.g.4.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            int i = dVar.f5981b;
                            int i2 = 3;
                            if (i == 0) {
                                g.this.f.b();
                                i2 = 0;
                                if (dVar.f5980a != 0) {
                                    k.c("NearbyUserTokenViewModel", "getToken.onChanged: " + ((c) dVar.f5980a).f6061a);
                                    g.this.a(((c) dVar.f5980a).a() * 1000);
                                }
                            } else if (i == 2) {
                                g.this.f.a(3);
                            } else if (i == 4) {
                                g.this.f.a(2);
                                i2 = 2;
                            } else if (i != 5) {
                                g.this.f.a(4);
                                i2 = 4;
                            } else {
                                g.this.f.f();
                                i2 = 1;
                            }
                            g.this.a((com.roblox.client.datastructures.d<c>) g.this.a(i2, (c) dVar.f5980a));
                        }
                    });
                }
            });
        } else {
            k.c("NearbyUserTokenViewModel", "Token is still valid, return it.");
            a(this.l.m_());
        }
        return this.l;
    }

    public void a(c cVar, f fVar) {
        if (cVar == null) {
            return;
        }
        k.c("NearbyUserTokenViewModel", "Validating my token.");
        this.f.c();
        this.f6081d.a(cVar, new AnonymousClass5(fVar, cVar));
    }

    /* JADX INFO: renamed from: com.roblox.client.friends.c.g$5, reason: invalid class name */
    class AnonymousClass5 implements e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ f f6094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f6095b;

        AnonymousClass5(f fVar, c cVar) {
            this.f6094a = fVar;
            this.f6095b = cVar;
        }

        @Override // com.roblox.client.friends.c.e.a
        public void a(c cVar) {
            k.c("NearbyUserTokenViewModel", "My token is valid.");
            g.this.f.d();
            this.f6094a.a(cVar);
        }

        @Override // com.roblox.client.friends.c.e.a
        public void a(final com.roblox.client.datastructures.d<c> dVar) {
            g.this.f6082e.a().execute(new Runnable() { // from class: com.roblox.client.friends.c.g.5.1
                @Override // java.lang.Runnable
                public void run() {
                    int i = dVar.f5981b;
                    if (i == 2) {
                        g.this.f.b(3);
                        return;
                    }
                    if (i == 3) {
                        k.c("NearbyUserTokenViewModel", "INVALIDATE MY TOKEN!.");
                        g.this.f.e();
                        g.this.f6082e.b().execute(new Runnable() { // from class: com.roblox.client.friends.c.g.5.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass5.this.f6094a.b(AnonymousClass5.this.f6095b);
                            }
                        });
                    } else if (i != 4) {
                        g.this.f.b(4);
                    } else {
                        g.this.f.a(2);
                    }
                }
            });
        }
    }

    public void c() {
        this.f6081d.b();
    }

    public void d() {
        ScheduledFuture<?> scheduledFuture = this.i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.j = false;
        }
        ScheduledFuture<?> scheduledFuture2 = this.k;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.datastructures.d<c> dVar) {
        synchronized (this.f6079b) {
            this.l.a(dVar);
        }
    }

    private void b(com.roblox.client.datastructures.d<c> dVar) {
        synchronized (this.f6079b) {
            this.l.b(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        if (f()) {
            throw new IllegalStateException("Invalid token resource to check expiration to.");
        }
        if (!f6078a && this.l.m_() == null) {
            throw new AssertionError();
        }
        if (f6078a || this.l.m_().f5980a != null) {
            return this.g.b() > this.l.m_().f5980a.a();
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.l.m_() == null || this.l.m_().f5981b != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.datastructures.d<c> a(int i, c cVar) {
        return new com.roblox.client.datastructures.d<>(i, cVar);
    }

    private void g() {
        ScheduledExecutorService scheduledExecutorService;
        int i = this.h;
        if (i <= 0 || (scheduledExecutorService = this.f6080c) == null) {
            return;
        }
        this.i = scheduledExecutorService.scheduleWithFixedDelay(this.m, i, i, TimeUnit.SECONDS);
        this.j = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j) {
        if (this.f6080c != null) {
            long jB = j - this.g.b();
            k.c("NearbyUserTokenViewModel", "Scheduling token retrieval in: " + jB);
            ScheduledFuture<?> scheduledFuture = this.k;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.k = this.f6080c.schedule(this.n, jB, TimeUnit.MILLISECONDS);
        }
    }

    @Override // androidx.lifecycle.u
    protected void a() {
        super.a();
        this.f6080c = null;
        ScheduledFuture<?> scheduledFuture = this.i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledFuture<?> scheduledFuture2 = this.k;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(true);
        }
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f6100a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f6101b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.roblox.client.friends.a f6102c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final d f6103d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final v.a f6104e;

        public a(e eVar, int i, com.roblox.client.friends.a aVar, d dVar, v.a aVar2) {
            this.f6100a = eVar;
            this.f6101b = i;
            this.f6102c = aVar;
            this.f6103d = dVar;
            this.f6104e = aVar2;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new g(this.f6100a, this.f6101b, this.f6102c, this.f6103d, this.f6104e);
        }
    }
}
