package com.roblox.client.friends.c;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.p;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.platform.http.returntypes.TokenResponseBody;
import e.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f6063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.roblox.client.friends.a f6064b;

    public interface a {
        void a(com.roblox.client.datastructures.d<c> dVar);

        void a(c cVar);
    }

    public e(b bVar, com.roblox.client.friends.a aVar) {
        this.f6063a = bVar;
        this.f6064b = aVar;
    }

    public LiveData<com.roblox.client.datastructures.d<c>> a() {
        final p pVar = new p();
        this.f6063a.a().a(new e.d<TokenResponseBody>() { // from class: com.roblox.client.friends.c.e.1
            @Override // e.d
            public void a(e.b<TokenResponseBody> bVar, final l<TokenResponseBody> lVar) {
                e.this.f6064b.a().execute(new Runnable() { // from class: com.roblox.client.friends.c.e.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        k.c("NearbyTokenRepository", "getToken.onResponse. Code: " + bVar2.f7732a + ". Message: " + bVar2.a());
                        if (bVar2.b()) {
                            k.c("NearbyTokenRepository", "body: " + bVar2.f7733b);
                            if (bVar2.f7733b == 0) {
                                pVar.a(new com.roblox.client.datastructures.d(5, null));
                                return;
                            } else {
                                pVar.a(new com.roblox.client.datastructures.d(0, c.a((TokenResponseBody) bVar2.f7733b)));
                                return;
                            }
                        }
                        if (lVar.a() == 429) {
                            pVar.a(new com.roblox.client.datastructures.d(2, null));
                        } else {
                            pVar.a(new com.roblox.client.datastructures.d(1, null));
                        }
                    }
                });
            }

            @Override // e.d
            public void a(e.b<TokenResponseBody> bVar, Throwable th) {
                k.c("NearbyTokenRepository", "getToken.onFailure: " + th.getMessage());
                pVar.b(new com.roblox.client.datastructures.d(4, null));
            }
        });
        return pVar;
    }

    /* JADX INFO: renamed from: com.roblox.client.friends.c.e$2, reason: invalid class name */
    class AnonymousClass2 implements e.d<ad> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ a f6069a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ c f6070b;

        AnonymousClass2(a aVar, c cVar) {
            this.f6069a = aVar;
            this.f6070b = cVar;
        }

        @Override // e.d
        public void a(e.b<ad> bVar, final l<ad> lVar) {
            e.this.f6064b.a().execute(new Runnable() { // from class: com.roblox.client.friends.c.e.2.1
                @Override // java.lang.Runnable
                public void run() {
                    final com.roblox.client.datastructures.d dVar;
                    com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                    k.c("NearbyTokenRepository", "validateToken.onResponse. Code: " + bVar2.f7732a + ". Message: " + bVar2.a());
                    if (bVar2.b()) {
                        e.this.f6064b.b().execute(new Runnable() { // from class: com.roblox.client.friends.c.e.2.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AnonymousClass2.this.f6069a.a(AnonymousClass2.this.f6070b);
                            }
                        });
                        return;
                    }
                    int i = bVar2.f7732a;
                    if (i == 404) {
                        dVar = new com.roblox.client.datastructures.d(3, AnonymousClass2.this.f6070b);
                    } else if (i == 429) {
                        dVar = new com.roblox.client.datastructures.d(2, AnonymousClass2.this.f6070b);
                    } else {
                        dVar = new com.roblox.client.datastructures.d(1, AnonymousClass2.this.f6070b);
                    }
                    e.this.f6064b.b().execute(new Runnable() { // from class: com.roblox.client.friends.c.e.2.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AnonymousClass2.this.f6069a.a(dVar);
                        }
                    });
                }
            });
        }

        @Override // e.d
        public void a(e.b<ad> bVar, Throwable th) {
            k.c("NearbyTokenRepository", "validateToken.onFailure.");
            this.f6069a.a(new com.roblox.client.datastructures.d<>(4, null));
        }
    }

    public void a(c cVar, a aVar) {
        this.f6063a.b().a(new AnonymousClass2(aVar, cVar));
    }

    public void b() {
        this.f6063a.c().a(new e.d<ad>() { // from class: com.roblox.client.friends.c.e.3
            @Override // e.d
            public void a(e.b<ad> bVar, l<ad> lVar) {
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
            }
        });
    }
}
