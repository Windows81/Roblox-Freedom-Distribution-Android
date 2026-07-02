package com.d.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import com.d.a.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f2478a = new b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f2479b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ExecutorService f2480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f2481d;
    final Map<String, com.d.a.c> e;
    final Map<Object, com.d.a.a> f;
    final Map<Object, com.d.a.a> g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final d k;
    final aa l;
    final List<com.d.a.c> m;
    final c n;
    final boolean o;
    boolean p;

    i(Context context, ExecutorService executorService, Handler handler, j jVar, d dVar, aa aaVar) {
        this.f2478a.start();
        ae.a(this.f2478a.getLooper());
        this.f2479b = context;
        this.f2480c = executorService;
        this.e = new LinkedHashMap();
        this.f = new WeakHashMap();
        this.g = new WeakHashMap();
        this.h = new HashSet();
        this.i = new a(this.f2478a.getLooper(), this);
        this.f2481d = jVar;
        this.j = handler;
        this.k = dVar;
        this.l = aaVar;
        this.m = new ArrayList(4);
        this.p = ae.d(this.f2479b);
        this.o = ae.b(context, "android.permission.ACCESS_NETWORK_STATE");
        this.n = new c(this);
        this.n.a();
    }

    void a(com.d.a.a aVar) {
        this.i.sendMessage(this.i.obtainMessage(1, aVar));
    }

    void b(com.d.a.a aVar) {
        this.i.sendMessage(this.i.obtainMessage(2, aVar));
    }

    void a(com.d.a.c cVar) {
        this.i.sendMessage(this.i.obtainMessage(4, cVar));
    }

    void b(com.d.a.c cVar) {
        this.i.sendMessageDelayed(this.i.obtainMessage(5, cVar), 500L);
    }

    void c(com.d.a.c cVar) {
        this.i.sendMessage(this.i.obtainMessage(6, cVar));
    }

    void a(NetworkInfo networkInfo) {
        this.i.sendMessage(this.i.obtainMessage(9, networkInfo));
    }

    void a(boolean z) {
        this.i.sendMessage(this.i.obtainMessage(10, z ? 1 : 0, 0));
    }

    void c(com.d.a.a aVar) {
        a(aVar, true);
    }

    void a(com.d.a.a aVar, boolean z) {
        if (this.h.contains(aVar.l())) {
            this.g.put(aVar.d(), aVar);
            if (aVar.j().l) {
                ae.a("Dispatcher", "paused", aVar.f2440b.a(), "because tag '" + aVar.l() + "' is paused");
                return;
            }
            return;
        }
        com.d.a.c cVar = this.e.get(aVar.e());
        if (cVar != null) {
            cVar.a(aVar);
            return;
        }
        if (this.f2480c.isShutdown()) {
            if (aVar.j().l) {
                ae.a("Dispatcher", "ignored", aVar.f2440b.a(), "because shut down");
                return;
            }
            return;
        }
        com.d.a.c cVarA = com.d.a.c.a(aVar.j(), this, this.k, this.l, aVar);
        cVarA.n = this.f2480c.submit(cVarA);
        this.e.put(aVar.e(), cVarA);
        if (z) {
            this.f.remove(aVar.d());
        }
        if (aVar.j().l) {
            ae.a("Dispatcher", "enqueued", aVar.f2440b.a());
        }
    }

    void d(com.d.a.a aVar) {
        String strE = aVar.e();
        com.d.a.c cVar = this.e.get(strE);
        if (cVar != null) {
            cVar.b(aVar);
            if (cVar.b()) {
                this.e.remove(strE);
                if (aVar.j().l) {
                    ae.a("Dispatcher", "canceled", aVar.c().a());
                }
            }
        }
        if (this.h.contains(aVar.l())) {
            this.g.remove(aVar.d());
            if (aVar.j().l) {
                ae.a("Dispatcher", "canceled", aVar.c().a(), "because paused request got canceled");
            }
        }
        com.d.a.a aVarRemove = this.f.remove(aVar.d());
        if (aVarRemove != null && aVarRemove.j().l) {
            ae.a("Dispatcher", "canceled", aVarRemove.c().a(), "from replaying");
        }
    }

    void a(Object obj) {
        if (this.h.add(obj)) {
            Iterator<com.d.a.c> it = this.e.values().iterator();
            while (it.hasNext()) {
                com.d.a.c next = it.next();
                boolean z = next.j().l;
                com.d.a.a aVarI = next.i();
                List<com.d.a.a> listK = next.k();
                boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
                if (aVarI != null || z2) {
                    if (aVarI != null && aVarI.l().equals(obj)) {
                        next.b(aVarI);
                        this.g.put(aVarI.d(), aVarI);
                        if (z) {
                            ae.a("Dispatcher", "paused", aVarI.f2440b.a(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = listK.size() - 1; size >= 0; size--) {
                            com.d.a.a aVar = listK.get(size);
                            if (aVar.l().equals(obj)) {
                                next.b(aVar);
                                this.g.put(aVar.d(), aVar);
                                if (z) {
                                    ae.a("Dispatcher", "paused", aVar.f2440b.a(), "because tag '" + obj + "' was paused");
                                }
                            }
                        }
                    }
                    if (next.b()) {
                        it.remove();
                        if (z) {
                            ae.a("Dispatcher", "canceled", ae.a(next), "all actions paused");
                        }
                    }
                }
            }
        }
    }

    void b(Object obj) {
        if (this.h.remove(obj)) {
            ArrayList arrayList = null;
            Iterator<com.d.a.a> it = this.g.values().iterator();
            while (it.hasNext()) {
                com.d.a.a next = it.next();
                if (next.l().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                this.j.sendMessage(this.j.obtainMessage(13, arrayList));
            }
        }
    }

    void d(com.d.a.c cVar) {
        NetworkInfo activeNetworkInfo;
        if (!cVar.c()) {
            if (this.f2480c.isShutdown()) {
                a(cVar, false);
                return;
            }
            if (!this.o) {
                activeNetworkInfo = null;
            } else {
                activeNetworkInfo = ((ConnectivityManager) ae.a(this.f2479b, "connectivity")).getActiveNetworkInfo();
            }
            boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
            boolean zA = cVar.a(this.p, activeNetworkInfo);
            boolean zD = cVar.d();
            if (!zA) {
                boolean z2 = this.o && zD;
                a(cVar, z2);
                if (z2) {
                    f(cVar);
                    return;
                }
                return;
            }
            if (!this.o || z) {
                if (cVar.j().l) {
                    ae.a("Dispatcher", "retrying", ae.a(cVar));
                }
                if (cVar.l() instanceof r.a) {
                    cVar.i |= q.NO_CACHE.f2511d;
                }
                cVar.n = this.f2480c.submit(cVar);
                return;
            }
            a(cVar, zD);
            if (zD) {
                f(cVar);
            }
        }
    }

    void e(com.d.a.c cVar) {
        if (p.b(cVar.g())) {
            this.k.a(cVar.f(), cVar.e());
        }
        this.e.remove(cVar.f());
        g(cVar);
        if (cVar.j().l) {
            ae.a("Dispatcher", "batched", ae.a(cVar), "for completion");
        }
    }

    void a() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        this.j.sendMessage(this.j.obtainMessage(8, arrayList));
        a((List<com.d.a.c>) arrayList);
    }

    void a(com.d.a.c cVar, boolean z) {
        if (cVar.j().l) {
            ae.a("Dispatcher", "batched", ae.a(cVar), "for error" + (z ? " (will replay)" : ""));
        }
        this.e.remove(cVar.f());
        g(cVar);
    }

    void b(boolean z) {
        this.p = z;
    }

    void b(NetworkInfo networkInfo) {
        if (this.f2480c instanceof v) {
            ((v) this.f2480c).a(networkInfo);
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            b();
        }
    }

    private void b() {
        if (!this.f.isEmpty()) {
            Iterator<com.d.a.a> it = this.f.values().iterator();
            while (it.hasNext()) {
                com.d.a.a next = it.next();
                it.remove();
                if (next.j().l) {
                    ae.a("Dispatcher", "replaying", next.c().a());
                }
                a(next, false);
            }
        }
    }

    private void f(com.d.a.c cVar) {
        com.d.a.a aVarI = cVar.i();
        if (aVarI != null) {
            e(aVarI);
        }
        List<com.d.a.a> listK = cVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                e(listK.get(i));
            }
        }
    }

    private void e(com.d.a.a aVar) {
        Object objD = aVar.d();
        if (objD != null) {
            aVar.k = true;
            this.f.put(objD, aVar);
        }
    }

    private void g(com.d.a.c cVar) {
        if (!cVar.c()) {
            this.m.add(cVar);
            if (!this.i.hasMessages(7)) {
                this.i.sendEmptyMessageDelayed(7, 200L);
            }
        }
    }

    private void a(List<com.d.a.c> list) {
        if (list != null && !list.isEmpty() && list.get(0).j().l) {
            StringBuilder sb = new StringBuilder();
            for (com.d.a.c cVar : list) {
                if (sb.length() > 0) {
                    sb.append(", ");
                }
                sb.append(ae.a(cVar));
            }
            ae.a("Dispatcher", "delivered", sb.toString());
        }
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f2482a;

        public a(Looper looper, i iVar) {
            super(looper);
            this.f2482a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 1:
                    this.f2482a.c((com.d.a.a) message.obj);
                    break;
                case 2:
                    this.f2482a.d((com.d.a.a) message.obj);
                    break;
                case 3:
                case 8:
                default:
                    t.f2515a.post(new Runnable() { // from class: com.d.a.i.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unknown handler message received: " + message.what);
                        }
                    });
                    break;
                case 4:
                    this.f2482a.e((com.d.a.c) message.obj);
                    break;
                case 5:
                    this.f2482a.d((com.d.a.c) message.obj);
                    break;
                case 6:
                    this.f2482a.a((com.d.a.c) message.obj, false);
                    break;
                case 7:
                    this.f2482a.a();
                    break;
                case 9:
                    this.f2482a.b((NetworkInfo) message.obj);
                    break;
                case 10:
                    this.f2482a.b(message.arg1 == 1);
                    break;
                case 11:
                    this.f2482a.a(message.obj);
                    break;
                case 12:
                    this.f2482a.b(message.obj);
                    break;
            }
        }
    }

    static class b extends HandlerThread {
        b() {
            super("Picasso-Dispatcher", 10);
        }
    }

    static class c extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f2485a;

        c(i iVar) {
            this.f2485a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f2485a.o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f2485a.f2479b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                    if (intent.hasExtra("state")) {
                        this.f2485a.a(intent.getBooleanExtra("state", false));
                    }
                } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                    this.f2485a.a(((ConnectivityManager) ae.a(context, "connectivity")).getActiveNetworkInfo());
                }
            }
        }
    }
}
