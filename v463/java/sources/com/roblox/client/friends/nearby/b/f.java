package com.roblox.client.friends.nearby.b;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import androidx.lifecycle.u;
import androidx.lifecycle.v;
import com.roblox.client.ae.k;
import com.roblox.client.ae.v;
import com.roblox.client.p;
import com.roblox.client.s.h;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f6166a = !f.class.desiredAssertionStatus();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f6168c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.roblox.client.friends.a f6169d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f6170e;
    private final int f;
    private final Map<com.roblox.client.friends.c.c, com.roblox.client.friends.nearby.b.a.a> g;
    private n<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> h;
    private ScheduledExecutorService i;
    private ScheduledFuture<?> j;
    private final v.a l;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f6167b = new Object();
    private final Runnable m = new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (f.this.g) {
                k.c("NearbyUserViewModel", "Validating users. In cache: " + f.this.g.values().size());
                for (final com.roblox.client.friends.c.c cVar : f.this.g.keySet()) {
                    if (cVar.a() <= f.this.l.b()) {
                        k.c("NearbyUserViewModel", "Expired user. Time: " + cVar.a());
                        f.this.f6169d.b().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                f.this.a(2, cVar);
                            }
                        });
                    }
                }
            }
        }
    };
    private boolean k = false;

    f(e eVar, int i, com.roblox.client.friends.a aVar, v.a aVar2, g gVar) {
        this.f6168c = eVar;
        this.f6169d = aVar;
        this.l = aVar2;
        this.f6170e = gVar;
        this.f = i;
        n<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> nVar = new n<>();
        this.h = nVar;
        nVar.b((com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>) null);
        this.g = Collections.synchronizedMap(new HashMap());
    }

    public LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> a(com.roblox.client.friends.c.c cVar) {
        if (!this.k) {
            d();
        }
        b(cVar);
        return this.h;
    }

    public void a(com.roblox.client.friends.nearby.b.a.a aVar) {
        final LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> liveDataA = this.f6168c.a(aVar);
        this.h.a(liveDataA, new q<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>>() { // from class: com.roblox.client.friends.nearby.b.f.2
            @Override // androidx.lifecycle.q
            public void a(final com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar) {
                f.this.h.a(liveDataA);
                f.this.f6169d.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.2.1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    static final /* synthetic */ boolean f6176a = !f.class.desiredAssertionStatus();

                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        if (dVar.f5981b == 0) {
                            com.roblox.client.friends.nearby.b.a.a aVar2 = (com.roblox.client.friends.nearby.b.a.a) dVar.f5980a;
                            if (!f6176a && aVar2 == null) {
                                throw new AssertionError();
                            }
                            com.roblox.client.friends.nearby.b.a.a aVar3 = (com.roblox.client.friends.nearby.b.a.a) f.this.g.get(aVar2.a());
                            if (aVar3 == null || aVar3.c() != aVar2.c()) {
                                return;
                            }
                            aVar3.a(aVar2.b());
                            k.c("NearbyUserViewModel", "Avatar obtained. Updating user: " + aVar3);
                            f.this.a((com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>) f.this.c(aVar3));
                        }
                    }
                });
            }
        });
    }

    public void b(final com.roblox.client.friends.nearby.b.a.a aVar) {
        final int iE = aVar.e();
        k.c("NearbyUserViewModel", "sendOrAccept request. Current status: " + iE);
        com.roblox.client.friends.nearby.b.a.a aVar2 = this.g.get(aVar.a());
        if (aVar2.c() == aVar.c()) {
            if (aVar.e() == 0) {
                if (com.roblox.client.b.cy()) {
                    p.f(String.valueOf(h.a().b()), String.valueOf(aVar.c()), "nearby");
                }
                aVar2.a(1);
            } else if (aVar.e() == 2) {
                if (com.roblox.client.b.cy()) {
                    p.g(String.valueOf(aVar.c()), String.valueOf(h.a().b()), "nearby");
                }
                aVar2.a(3);
            }
            b(c(aVar2));
            k.c("NearbyUserViewModel", "Send or accept friend request to userId: " + aVar.c());
            final LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> liveDataB = this.f6168c.b(aVar);
            this.h.a(liveDataB, new q<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>>() { // from class: com.roblox.client.friends.nearby.b.f.3
                @Override // androidx.lifecycle.q
                public void a(final com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar) {
                    f.this.h.a(liveDataB);
                    f.this.f6169d.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.3.1

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        static final /* synthetic */ boolean f6183a = !f.class.desiredAssertionStatus();

                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            String str;
                            if (!f6183a && dVar.f5980a == 0) {
                                throw new AssertionError();
                            }
                            com.roblox.client.friends.nearby.b.a.a aVar3 = (com.roblox.client.friends.nearby.b.a.a) dVar.f5980a;
                            if (dVar.f5981b != 0) {
                                com.roblox.client.friends.nearby.b.a.a aVar4 = (com.roblox.client.friends.nearby.b.a.a) f.this.g.get(aVar3.a());
                                if (aVar4.c() == aVar.c()) {
                                    aVar4.a(iE);
                                    k.c("NearbyUserViewModel", "Failure accepting/sending friend request. Setting back the status: " + iE);
                                    int i = dVar.f5981b;
                                    int i2 = 5;
                                    if (i != 3) {
                                        if (i == 7) {
                                            str = "tokenNotFound";
                                        } else if (i == 8) {
                                            str = "badToken";
                                        } else if (i != 9) {
                                            str = "unknown";
                                            i2 = 3;
                                        } else {
                                            str = "maxRedemption";
                                        }
                                        f.this.a((com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>) new com.roblox.client.datastructures.d(i2, aVar4));
                                        f.this.f6170e.a(aVar3.e(), aVar3.c(), str);
                                        return;
                                    }
                                    str = "floodChecked";
                                    i2 = 4;
                                    f.this.a((com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>) new com.roblox.client.datastructures.d(i2, aVar4));
                                    f.this.f6170e.a(aVar3.e(), aVar3.c(), str);
                                    return;
                                }
                                return;
                            }
                            f.this.f6170e.a(aVar3.e(), aVar3.c());
                        }
                    });
                }
            });
        }
    }

    public void a(final long j, final int i) {
        this.f6169d.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.4
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.client.friends.nearby.b.a.a aVarA = f.this.a(j);
                if (aVarA != null) {
                    if (2 == i && aVarA.e() != 0) {
                        k.c("NearbyUserViewModel", "SignalR status_pending not handled. Friendship status: " + aVarA.e());
                        return;
                    }
                    aVarA.a(i);
                    f fVar = f.this;
                    fVar.a((com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>) fVar.c(aVarA));
                    f.this.f6170e.a(i, j);
                }
            }
        });
    }

    public int b() {
        return this.g.size();
    }

    public void c() {
        ScheduledFuture<?> scheduledFuture = this.j;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.k = false;
        }
    }

    private void b(final com.roblox.client.friends.c.c cVar) {
        com.roblox.client.friends.nearby.b.a.a aVar = this.g.get(cVar);
        if (aVar != null) {
            k.c("NearbyUserViewModel", "User in cache. Returning it. New expiration: " + new Date(cVar.a()).toString());
            aVar.a().a(cVar.a());
            return;
        }
        k.c("NearbyUserViewModel", "NEW TOKEN FOUND!: " + cVar.f6061a);
        com.roblox.client.friends.nearby.b.a.a aVar2 = new com.roblox.client.friends.nearby.b.a.a(-1L, "", cVar);
        this.g.put(cVar, aVar2);
        a(d(aVar2));
        final LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> liveDataA = this.f6168c.a(cVar);
        this.h.a(liveDataA, new q<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>>() { // from class: com.roblox.client.friends.nearby.b.f.5
            @Override // androidx.lifecycle.q
            public void a(com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar) {
                k.c("NearbyUserViewModel", "getUserCallback: " + dVar.f5981b);
                f.this.h.a(liveDataA);
                if (dVar.f5981b == 0) {
                    f.this.b(dVar, cVar);
                } else {
                    f.this.a(dVar, cVar);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar, final com.roblox.client.friends.c.c cVar) {
        int i = dVar.f5981b;
        final int i2 = i != 3 ? (i == 6 || i == 7) ? 6 : 8 : 7;
        k.c("NearbyUserViewModel", "Failure retrieving user for Token: " + cVar.f6061a);
        this.f6169d.b().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.6
            @Override // java.lang.Runnable
            public void run() {
                f.this.a(i2, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar, com.roblox.client.friends.c.c cVar) {
        if (!f6166a && dVar.f5980a == null) {
            throw new AssertionError();
        }
        com.roblox.client.friends.nearby.b.a.a aVar = dVar.f5980a;
        com.roblox.client.friends.nearby.b.a.a aVarA = a(aVar.c());
        if (aVarA != null) {
            k.c("NearbyUserViewModel", "Invalidating placeholder token on cache and UI: " + cVar.f6061a);
            a(e(this.g.remove(cVar)));
            k.c("NearbyUserViewModel", "Invalidating expired token in cache: " + aVarA.a().f6061a);
            this.g.remove(aVarA.a());
        } else {
            this.f6170e.a(aVar.c());
        }
        k.c("NearbyUserViewModel", "Updating cache with found user: " + cVar.f6061a);
        this.g.put(aVar.a(), aVar);
        a(aVar);
        a(c(aVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, com.roblox.client.friends.c.c cVar) {
        k.c("NearbyUserViewModel", "Invalidating token in cache. Token: " + cVar.f6061a);
        b(new com.roblox.client.datastructures.d<>(i, this.g.remove(cVar)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar) {
        synchronized (this.f6167b) {
            this.f6169d.b().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.f.7
                @Override // java.lang.Runnable
                public void run() {
                    k.c("NearbyUserViewModel", "Posting updated user: " + dVar.f5980a + ". Status: " + dVar.f5981b);
                    f.this.h.b(dVar);
                }
            });
        }
    }

    private void b(com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> dVar) {
        synchronized (this.f6167b) {
            this.h.b(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.friends.nearby.b.a.a a(long j) {
        synchronized (this.g) {
            for (com.roblox.client.friends.nearby.b.a.a aVar : this.g.values()) {
                if (aVar.c() == j) {
                    return aVar;
                }
            }
            return null;
        }
    }

    private void d() {
        if (this.f > 0) {
            if (this.i == null) {
                this.i = Executors.newSingleThreadScheduledExecutor();
            }
            ScheduledExecutorService scheduledExecutorService = this.i;
            Runnable runnable = this.m;
            int i = this.f;
            this.j = scheduledExecutorService.scheduleWithFixedDelay(runnable, i, i, TimeUnit.SECONDS);
            this.k = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> c(com.roblox.client.friends.nearby.b.a.a aVar) {
        return new com.roblox.client.datastructures.d<>(1, aVar);
    }

    private com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> d(com.roblox.client.friends.nearby.b.a.a aVar) {
        return new com.roblox.client.datastructures.d<>(0, aVar);
    }

    private com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a> e(com.roblox.client.friends.nearby.b.a.a aVar) {
        return new com.roblox.client.datastructures.d<>(2, aVar);
    }

    @Override // androidx.lifecycle.u
    protected void a() {
        super.a();
        c();
    }

    public static class a extends v.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final e f6197a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f6198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final com.roblox.client.friends.a f6199c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final v.a f6200d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final g f6201e;

        public a(e eVar, int i, com.roblox.client.friends.a aVar, v.a aVar2, g gVar) {
            this.f6197a = eVar;
            this.f6198b = i;
            this.f6199c = aVar;
            this.f6200d = aVar2;
            this.f6201e = gVar;
        }

        @Override // androidx.lifecycle.v.c, androidx.lifecycle.v.b
        public <T extends u> T a(Class<T> cls) {
            return new f(this.f6197a, this.f6198b, this.f6199c, this.f6200d, this.f6201e);
        }
    }
}
