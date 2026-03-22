package com.roblox.client.friends.nearby;

import android.os.Handler;
import android.util.Log;
import androidx.lifecycle.g;
import androidx.lifecycle.i;
import androidx.lifecycle.j;
import androidx.lifecycle.q;
import androidx.lifecycle.r;
import com.roblox.client.ae.v;
import com.roblox.client.datastructures.d;
import com.roblox.client.friends.b.e;
import com.roblox.client.friends.nearby.a;
import com.roblox.client.friends.nearby.b.f;
import com.roblox.client.o;
import com.roblox.client.s.h;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NearbyPresenter implements i, j, a.InterfaceC0141a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f6105a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a.b f6106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.roblox.client.friends.c.g f6107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f6108d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.roblox.client.friends.b.a f6109e;
    private v.a f;
    private int g;
    private int h;
    private com.roblox.client.friends.c.c i;
    private c j;
    private final Handler k;
    private final Runnable l = new Runnable() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.1
        @Override // java.lang.Runnable
        public void run() {
            Log.d("NearbyPresenter", "Timed out!");
            if (NearbyPresenter.this.f6108d.b() == 0) {
                NearbyPresenter.this.a(o.j.Features_Nearby_Label_LooksLikeNoOneIsAround);
                NearbyPresenter.this.j.a("timeout");
            }
        }
    };
    private final q<d<com.roblox.client.friends.c.c>> m = new q<d<com.roblox.client.friends.c.c>>() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.5
        @Override // androidx.lifecycle.q
        public void a(d<com.roblox.client.friends.c.c> dVar) {
            Log.d("NearbyPresenter", "getToken.onChanged(). Status: " + dVar.f5981b);
            int i = dVar.f5981b;
            if (i == 0) {
                NearbyPresenter.this.i = dVar.f5980a;
                NearbyPresenter nearbyPresenter = NearbyPresenter.this;
                nearbyPresenter.b(nearbyPresenter.i);
                return;
            }
            if (i == 1) {
                NearbyPresenter.this.e();
                NearbyPresenter.this.i = null;
                NearbyPresenter.this.c();
            } else if (i != 5) {
                NearbyPresenter.this.a(o.j.Features_Nearby_Label_PleaseTryAgain);
                NearbyPresenter.this.j.a("getTokenError" + dVar.f5981b);
            }
        }
    };
    private final q<d<com.roblox.client.friends.nearby.b.a.a>> n = new q<d<com.roblox.client.friends.nearby.b.a.a>>() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.6
        @Override // androidx.lifecycle.q
        public void a(d<com.roblox.client.friends.nearby.b.a.a> dVar) {
            if (dVar != null) {
                Log.d("NearbyPresenter", "User changed, updating UI. Status: " + dVar.f5981b);
                switch (dVar.f5981b) {
                    case 0:
                        NearbyPresenter.this.f6106b.a(dVar.f5980a);
                        NearbyPresenter.this.k.removeCallbacks(NearbyPresenter.this.l);
                        break;
                    case 1:
                        NearbyPresenter.this.f6106b.b(dVar.f5980a);
                        break;
                    case 2:
                        NearbyPresenter.this.b(dVar.f5980a);
                        break;
                    case 3:
                    case 5:
                        if (dVar.f5980a != null) {
                            NearbyPresenter.this.f6106b.b(dVar.f5980a);
                            NearbyPresenter.this.f6106b.a_(o.j.Features_Nearby_Label_FriendRequestsFailedFormatted, dVar.f5980a.d());
                        }
                        break;
                    case 4:
                        NearbyPresenter.this.f6106b.b(dVar.f5980a);
                        NearbyPresenter.this.f6106b.a_(o.j.Features_Nearby_Label_FriendRequestsFloodChecked, new Object[0]);
                        break;
                    case 6:
                        NearbyPresenter.this.b(dVar.f5980a);
                        break;
                    case 7:
                    case 8:
                        NearbyPresenter.this.b(dVar.f5980a);
                        NearbyPresenter.this.f6106b.a_(o.j.Features_Nearby_Label_PleaseTryAgain, new Object[0]);
                        break;
                    default:
                        Log.w("NearbyPresenter", "Status not recognized: " + dVar.f5981b);
                        break;
                }
            }
        }
    };

    public NearbyPresenter(g gVar, com.roblox.client.friends.b.a aVar, com.roblox.client.friends.c.g gVar2, int i, int i2, f fVar, a.b bVar, v.a aVar2, c cVar) {
        gVar.a(this);
        this.f6105a = gVar;
        this.f6107c = gVar2;
        this.f6108d = fVar;
        this.f6106b = bVar;
        this.f6109e = aVar;
        this.f = aVar2;
        this.g = i;
        this.h = i2;
        this.k = new Handler();
        this.j = cVar;
    }

    @Override // com.roblox.client.friends.nearby.a.InterfaceC0141a
    public void a(com.roblox.client.friends.nearby.b.a.a aVar) {
        if (aVar.c() == -1) {
            return;
        }
        Log.d("NearbyPresenter", "onUserClicked. User friendship status: " + aVar.e());
        int iE = aVar.e();
        if (iE != 0) {
            if (iE == 1) {
                return;
            }
            if (iE != 2) {
                if (iE == 3) {
                    this.f6106b.d(aVar);
                    return;
                }
                Log.w("NearbyPresenter", "Friendship status not recognized: " + aVar.e());
                return;
            }
        }
        this.f6108d.b(aVar);
    }

    @Override // com.roblox.client.friends.nearby.a.InterfaceC0141a
    public void a() {
        this.j.a();
        this.f6106b.h_();
        this.j.b("retryClicked");
        b();
    }

    @Override // com.roblox.client.friends.nearby.a.InterfaceC0141a
    public void a(boolean z) {
        Log.d("NearbyPresenter", "onHiddenChanged. hidden: " + z);
        if (z) {
            h();
            this.j.c();
        } else {
            b();
            this.j.b();
        }
    }

    private void b() {
        if (this.f6108d.b() == 0) {
            this.f6106b.h_();
            this.j.b("initDiscoveryManager");
        }
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Log.d("NearbyPresenter", "getToken");
        this.f6107c.b().a(this, this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.roblox.client.friends.c.c cVar) {
        this.f6108d.a(cVar).a(this, this.n);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.roblox.client.friends.c.c cVar) {
        if (i()) {
            this.f6109e.a(d(cVar), new com.roblox.client.friends.b.d() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.2
                @Override // com.roblox.client.friends.b.d
                public void a() {
                    Log.d("NearbyPresenter", "published");
                }

                @Override // com.roblox.client.friends.b.d
                public void a(int i, String str) {
                    Log.d("NearbyPresenter", "Publish failure: " + i);
                    NearbyPresenter.this.h();
                    NearbyPresenter.this.f6106b.a_(o.j.Features_Nearby_Label_PleaseTryAgain);
                    NearbyPresenter.this.j.a("publishing:" + str);
                }
            });
        }
    }

    private void d() {
        if (i()) {
            this.f6109e.a(new e() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.3
                @Override // com.roblox.client.friends.b.e
                public void a() {
                    Log.d("NearbyPresenter", "Subscribed successfully.");
                    if (NearbyPresenter.this.i()) {
                        NearbyPresenter.this.c();
                        NearbyPresenter.this.j();
                    }
                }

                @Override // com.roblox.client.friends.b.e
                public void a(int i, String str) {
                    Log.d("NearbyPresenter", "Subscribe failure: " + i);
                    NearbyPresenter.this.h();
                    NearbyPresenter.this.f6106b.a_(o.j.Features_Nearby_Label_PleaseTryAgain);
                    NearbyPresenter.this.j.a("subscribing:" + str);
                }
            }, new com.roblox.client.friends.b.c() { // from class: com.roblox.client.friends.nearby.NearbyPresenter.4
                @Override // com.roblox.client.friends.b.c
                public void a(com.roblox.client.friends.b.b bVar) {
                    Log.d("NearbyPresenter", "Message found: " + bVar.a());
                    if (NearbyPresenter.this.i()) {
                        com.roblox.client.friends.c.c cVarA = NearbyPresenter.this.a(bVar);
                        if (NearbyPresenter.this.c(cVarA)) {
                            NearbyPresenter.this.a(cVarA);
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        Log.d("NearbyPresenter", "Unpublish");
        this.f6109e.a();
    }

    private void f() {
        Log.d("NearbyPresenter", "Unsubscribe");
        this.k.removeCallbacks(this.l);
        this.f6109e.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        Log.d("NearbyPresenter", "onTimeout.");
        h();
        this.f6106b.a_(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        Log.d("NearbyPresenter", "Pause");
        this.k.removeCallbacks(this.l);
        this.f6107c.c();
        this.f6107c.d();
        this.f6108d.c();
        e();
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.friends.c.c a(com.roblox.client.friends.b.b bVar) {
        return new com.roblox.client.friends.c.c(bVar.a(), this.f.b() + ((long) (this.g * 1000)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        return g().a().a(g.b.STARTED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(com.roblox.client.friends.c.c cVar) {
        return !cVar.equals(this.i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        Log.d("NearbyPresenter", "StartTimeoutRunnable.");
        this.k.postDelayed(this.l, ((long) this.h) * 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.roblox.client.friends.nearby.b.a.a aVar) {
        this.f6106b.c(aVar);
        if (this.f6108d.b() == 0) {
            k();
        }
    }

    private void k() {
        this.f6106b.h_();
        j();
        this.j.b("emptyUI");
    }

    private com.roblox.client.friends.b.b d(com.roblox.client.friends.c.c cVar) {
        return new com.roblox.client.friends.b.a.d(cVar.f6061a);
    }

    @r(a = g.a.ON_START)
    void onStart() {
        Log.d("NearbyPresenter", "LifecycleEvent.onStart");
        org.greenrobot.eventbus.c.a().a(this);
    }

    @r(a = g.a.ON_RESUME)
    void onResume() {
        Log.d("NearbyPresenter", "LifecycleEvent.onResume");
        this.j.b();
        b();
    }

    @r(a = g.a.ON_PAUSE)
    void onPause() {
        Log.d("NearbyPresenter", "LifecycleEvent.onPause");
        h();
        this.j.c();
    }

    @r(a = g.a.ON_STOP)
    void onStop() {
        Log.d("NearbyPresenter", "LifecycleEvent.onStop");
        org.greenrobot.eventbus.c.a().b(this);
    }

    @r(a = g.a.ON_DESTROY)
    void onDestroy() {
        Log.d("NearbyPresenter", "LifecycleEvent.onDestroy");
        this.f6109e.c();
    }

    @Override // androidx.lifecycle.j
    public g g() {
        return this.f6105a;
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onFriendshipUpdatedEvent(com.roblox.client.l.f fVar) {
        Log.d("NearbyPresenter", "onFriendshipUpdatedEvent: " + fVar.c());
        if (fVar.a() != null) {
            int iC = fVar.c();
            int i = 0;
            if (iC == 0) {
                if (com.roblox.client.b.bs()) {
                    this.f6106b.i_();
                }
                i = 3;
            } else if (iC != 1) {
                if (iC == 2) {
                    i = fVar.b() == h.a().b() ? 1 : 2;
                } else if (iC != 3) {
                    Log.w("NearbyPresenter", "FriendshipStatus not recognized: " + fVar.c());
                    i = -1;
                }
            }
            if (i != -1) {
                this.f6108d.a(fVar.a().a(), i);
            }
        }
    }
}
