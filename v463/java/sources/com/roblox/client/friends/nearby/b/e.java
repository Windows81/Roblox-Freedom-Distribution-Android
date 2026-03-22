package com.roblox.client.friends.nearby.b;

import androidx.lifecycle.LiveData;
import androidx.lifecycle.p;
import c.ad;
import com.roblox.client.ae.k;
import com.roblox.platform.http.returntypes.NearbyUserResponseBody;
import com.roblox.platform.http.returntypes.thumbnails.ThumbnailResponseBody;
import e.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.roblox.client.friends.a f6148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f6149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f6150c;

    /* JADX INFO: Access modifiers changed from: private */
    public int a(int i) {
        if (i != 5) {
            return i != 6 ? 5 : 9;
        }
        return 8;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(int i) {
        return i != 5 ? 5 : 6;
    }

    public e(d dVar, a aVar, com.roblox.client.friends.a aVar2) {
        this.f6148a = aVar2;
        this.f6149b = dVar;
        this.f6150c = aVar;
    }

    public LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> a(final com.roblox.client.friends.c.c cVar) {
        final p pVar = new p();
        this.f6149b.a(cVar.f6061a).a(new e.d<NearbyUserResponseBody>() { // from class: com.roblox.client.friends.nearby.b.e.1
            @Override // e.d
            public void a(e.b<NearbyUserResponseBody> bVar, final l<NearbyUserResponseBody> lVar) {
                e.this.f6148a.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.e.1.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        int iB;
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        k.c("NearbyUserRepository", "getUserFromToken. Code: " + bVar2.f7732a + ". Message: " + bVar2.a());
                        if (bVar2.b()) {
                            if (bVar2.f7733b == 0) {
                                pVar.a(new com.roblox.client.datastructures.d(4, null));
                                return;
                            }
                            com.roblox.client.friends.nearby.b.a.a aVarA = com.roblox.client.friends.nearby.b.a.a.a((NearbyUserResponseBody) bVar2.f7733b, cVar);
                            k.c("NearbyUserRepository", "User: " + aVarA.d() + ". FriendshipStatus: " + aVarA.e());
                            pVar.a(new com.roblox.client.datastructures.d(0, aVarA));
                            return;
                        }
                        int i = bVar2.f7732a;
                        if (i != 400) {
                            iB = i != 404 ? i != 429 ? 2 : 3 : 7;
                        } else {
                            iB = e.this.b(bVar2.c());
                        }
                        pVar.a(new com.roblox.client.datastructures.d(iB, null));
                    }
                });
            }

            @Override // e.d
            public void a(e.b<NearbyUserResponseBody> bVar, Throwable th) {
                k.c("NearbyUserRepository", "getUserFromToken.onFailure: " + th.getMessage());
                pVar.b(new com.roblox.client.datastructures.d(1, null));
            }
        });
        return pVar;
    }

    public LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> a(final com.roblox.client.friends.nearby.b.a.a aVar) {
        final p pVar = new p();
        this.f6150c.a(aVar.c()).a(new e.d<ThumbnailResponseBody>() { // from class: com.roblox.client.friends.nearby.b.e.2
            @Override // e.d
            public void a(e.b<ThumbnailResponseBody> bVar, final l<ThumbnailResponseBody> lVar) {
                k.c("NearbyUserRepository", "getAvatars.onResponse: " + lVar.a());
                k.c("NearbyUserRepository", "URL: " + bVar.d().a());
                e.this.f6148a.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.e.2.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        k.c("NearbyUserRepository", "Body: " + bVar2.f7733b);
                        if (bVar2.b()) {
                            ThumbnailResponseBody thumbnailResponseBody = (ThumbnailResponseBody) bVar2.f7733b;
                            if (thumbnailResponseBody != null) {
                                String strA = e.this.a(thumbnailResponseBody);
                                if (strA != null) {
                                    aVar.a(strA);
                                    pVar.a(new com.roblox.client.datastructures.d(0, aVar));
                                    return;
                                } else {
                                    pVar.a(new com.roblox.client.datastructures.d(2, null));
                                    return;
                                }
                            }
                            pVar.a(new com.roblox.client.datastructures.d(4, null));
                            return;
                        }
                        pVar.a(new com.roblox.client.datastructures.d(2, null));
                    }
                });
            }

            @Override // e.d
            public void a(e.b<ThumbnailResponseBody> bVar, Throwable th) {
                k.c("NearbyUserRepository", "getAvatars.onFailure: " + th.getMessage());
                pVar.b(new com.roblox.client.datastructures.d(1, null));
            }
        });
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(ThumbnailResponseBody thumbnailResponseBody) {
        if (thumbnailResponseBody == null || thumbnailResponseBody.data == null || thumbnailResponseBody.data.get(0) == null) {
            return null;
        }
        return thumbnailResponseBody.data.get(0).imageUrl;
    }

    public LiveData<com.roblox.client.datastructures.d<com.roblox.client.friends.nearby.b.a.a>> b(final com.roblox.client.friends.nearby.b.a.a aVar) {
        final p pVar = new p();
        this.f6149b.b(aVar.a().f6061a).a(new e.d<ad>() { // from class: com.roblox.client.friends.nearby.b.e.3
            @Override // e.d
            public void a(e.b<ad> bVar, final l<ad> lVar) {
                e.this.f6148a.a().execute(new Runnable() { // from class: com.roblox.client.friends.nearby.b.e.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        int iA;
                        com.roblox.platform.http.returntypes.b bVar2 = new com.roblox.platform.http.returntypes.b(lVar);
                        k.c("NearbyUserRepository", "sendOrAcceptFriendRequest. Code: " + bVar2.f7732a + ". Message: " + bVar2.a());
                        if (bVar2.b()) {
                            pVar.a(new com.roblox.client.datastructures.d(0, aVar));
                            return;
                        }
                        int i = bVar2.f7732a;
                        if (i != 400) {
                            iA = i != 429 ? 2 : 3;
                        } else {
                            iA = e.this.a(bVar2.c());
                        }
                        pVar.a(new com.roblox.client.datastructures.d(iA, aVar));
                    }
                });
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
                pVar.a(new com.roblox.client.datastructures.d(1, aVar));
            }
        });
        return pVar;
    }
}
