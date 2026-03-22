package com.c.a;

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
import com.c.a.r;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final b f3132a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Context f3133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ExecutorService f3134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final j f3135d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<String, com.c.a.c> f3136e;
    final Map<Object, com.c.a.a> f;
    final Map<Object, com.c.a.a> g;
    final Set<Object> h;
    final Handler i;
    final Handler j;
    final d k;
    final aa l;
    final List<com.c.a.c> m;
    final c n;
    final boolean o;
    boolean p;

    i(Context context, ExecutorService executorService, Handler handler, j jVar, d dVar, aa aaVar) {
        b bVar = new b();
        this.f3132a = bVar;
        bVar.start();
        ae.a(this.f3132a.getLooper());
        this.f3133b = context;
        this.f3134c = executorService;
        this.f3136e = new LinkedHashMap();
        this.f = new WeakHashMap();
        this.g = new WeakHashMap();
        this.h = new HashSet();
        this.i = new a(this.f3132a.getLooper(), this);
        this.f3135d = jVar;
        this.j = handler;
        this.k = dVar;
        this.l = aaVar;
        this.m = new ArrayList(4);
        this.p = ae.d(this.f3133b);
        this.o = ae.b(context, "android.permission.ACCESS_NETWORK_STATE");
        c cVar = new c(this);
        this.n = cVar;
        cVar.a();
    }

    void a(com.c.a.a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(1, aVar));
    }

    void b(com.c.a.a aVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(2, aVar));
    }

    void a(com.c.a.c cVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(4, cVar));
    }

    void b(com.c.a.c cVar) {
        Handler handler = this.i;
        handler.sendMessageDelayed(handler.obtainMessage(5, cVar), 500L);
    }

    void c(com.c.a.c cVar) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(6, cVar));
    }

    void a(NetworkInfo networkInfo) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(9, networkInfo));
    }

    void a(boolean z) {
        Handler handler = this.i;
        handler.sendMessage(handler.obtainMessage(10, z ? 1 : 0, 0));
    }

    void c(com.c.a.a aVar) {
        a(aVar, true);
    }

    void a(com.c.a.a aVar, boolean z) {
        if (this.h.contains(aVar.l())) {
            this.g.put(aVar.d(), aVar);
            if (aVar.j().l) {
                ae.a("Dispatcher", "paused", aVar.f3090b.a(), "because tag '" + aVar.l() + "' is paused");
                return;
            }
            return;
        }
        com.c.a.c cVar = this.f3136e.get(aVar.e());
        if (cVar != null) {
            cVar.a(aVar);
            return;
        }
        if (this.f3134c.isShutdown()) {
            if (aVar.j().l) {
                ae.a("Dispatcher", "ignored", aVar.f3090b.a(), "because shut down");
                return;
            }
            return;
        }
        com.c.a.c cVarA = com.c.a.c.a(aVar.j(), this, this.k, this.l, aVar);
        cVarA.n = this.f3134c.submit(cVarA);
        this.f3136e.put(aVar.e(), cVarA);
        if (z) {
            this.f.remove(aVar.d());
        }
        if (aVar.j().l) {
            ae.a("Dispatcher", "enqueued", aVar.f3090b.a());
        }
    }

    void d(com.c.a.a aVar) {
        String strE = aVar.e();
        com.c.a.c cVar = this.f3136e.get(strE);
        if (cVar != null) {
            cVar.b(aVar);
            if (cVar.b()) {
                this.f3136e.remove(strE);
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
        com.c.a.a aVarRemove = this.f.remove(aVar.d());
        if (aVarRemove == null || !aVarRemove.j().l) {
            return;
        }
        ae.a("Dispatcher", "canceled", aVarRemove.c().a(), "from replaying");
    }

    void a(Object obj) {
        if (this.h.add(obj)) {
            Iterator<com.c.a.c> it = this.f3136e.values().iterator();
            while (it.hasNext()) {
                com.c.a.c next = it.next();
                boolean z = next.j().l;
                com.c.a.a aVarI = next.i();
                List<com.c.a.a> listK = next.k();
                boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
                if (aVarI != null || z2) {
                    if (aVarI != null && aVarI.l().equals(obj)) {
                        next.b(aVarI);
                        this.g.put(aVarI.d(), aVarI);
                        if (z) {
                            ae.a("Dispatcher", "paused", aVarI.f3090b.a(), "because tag '" + obj + "' was paused");
                        }
                    }
                    if (z2) {
                        for (int size = listK.size() - 1; size >= 0; size--) {
                            com.c.a.a aVar = listK.get(size);
                            if (aVar.l().equals(obj)) {
                                next.b(aVar);
                                this.g.put(aVar.d(), aVar);
                                if (z) {
                                    ae.a("Dispatcher", "paused", aVar.f3090b.a(), "because tag '" + obj + "' was paused");
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
            Iterator<com.c.a.a> it = this.g.values().iterator();
            while (it.hasNext()) {
                com.c.a.a next = it.next();
                if (next.l().equals(obj)) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(next);
                    it.remove();
                }
            }
            if (arrayList != null) {
                Handler handler = this.j;
                handler.sendMessage(handler.obtainMessage(13, arrayList));
            }
        }
    }

    void d(com.c.a.c cVar) {
        if (cVar.c()) {
            return;
        }
        boolean z = false;
        if (this.f3134c.isShutdown()) {
            a(cVar, false);
            return;
        }
        NetworkInfo activeNetworkInfo = this.o ? ((ConnectivityManager) ae.a(this.f3133b, "connectivity")).getActiveNetworkInfo() : null;
        boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        boolean zA = cVar.a(this.p, activeNetworkInfo);
        boolean zD = cVar.d();
        if (!zA) {
            if (this.o && zD) {
                z = true;
            }
            a(cVar, z);
            if (z) {
                f(cVar);
                return;
            }
            return;
        }
        if (!this.o || z2) {
            if (cVar.j().l) {
                ae.a("Dispatcher", "retrying", ae.a(cVar));
            }
            if (cVar.l() instanceof r.a) {
                cVar.i |= q.NO_CACHE.f3170d;
            }
            cVar.n = this.f3134c.submit(cVar);
            return;
        }
        a(cVar, zD);
        if (zD) {
            f(cVar);
        }
    }

    void e(com.c.a.c cVar) {
        if (p.b(cVar.g())) {
            this.k.a(cVar.f(), cVar.e());
        }
        this.f3136e.remove(cVar.f());
        g(cVar);
        if (cVar.j().l) {
            ae.a("Dispatcher", "batched", ae.a(cVar), "for completion");
        }
    }

    void a() {
        ArrayList arrayList = new ArrayList(this.m);
        this.m.clear();
        Handler handler = this.j;
        handler.sendMessage(handler.obtainMessage(8, arrayList));
        a((List<com.c.a.c>) arrayList);
    }

    void a(com.c.a.c cVar, boolean z) {
        if (cVar.j().l) {
            String strA = ae.a(cVar);
            StringBuilder sb = new StringBuilder();
            sb.append("for error");
            sb.append(z ? " (will replay)" : "");
            ae.a("Dispatcher", "batched", strA, sb.toString());
        }
        this.f3136e.remove(cVar.f());
        g(cVar);
    }

    void b(boolean z) {
        this.p = z;
    }

    void b(NetworkInfo networkInfo) {
        ExecutorService executorService = this.f3134c;
        if (executorService instanceof v) {
            ((v) executorService).a(networkInfo);
        }
        if (networkInfo == null || !networkInfo.isConnected()) {
            return;
        }
        b();
    }

    private void b() {
        if (this.f.isEmpty()) {
            return;
        }
        Iterator<com.c.a.a> it = this.f.values().iterator();
        while (it.hasNext()) {
            com.c.a.a next = it.next();
            it.remove();
            if (next.j().l) {
                ae.a("Dispatcher", "replaying", next.c().a());
            }
            a(next, false);
        }
    }

    private void f(com.c.a.c cVar) {
        com.c.a.a aVarI = cVar.i();
        if (aVarI != null) {
            e(aVarI);
        }
        List<com.c.a.a> listK = cVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                e(listK.get(i));
            }
        }
    }

    private void e(com.c.a.a aVar) {
        Object objD = aVar.d();
        if (objD != null) {
            aVar.k = true;
            this.f.put(objD, aVar);
        }
    }

    private void g(com.c.a.c cVar) {
        if (cVar.c()) {
            return;
        }
        this.m.add(cVar);
        if (this.i.hasMessages(7)) {
            return;
        }
        this.i.sendEmptyMessageDelayed(7, 200L);
    }

    private void a(List<com.c.a.c> list) {
        if (list == null || list.isEmpty() || !list.get(0).j().l) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (com.c.a.c cVar : list) {
            if (sb.length() > 0) {
                sb.append(", ");
            }
            sb.append(ae.a(cVar));
        }
        ae.a("Dispatcher", "delivered", sb.toString());
    }

    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f3137a;

        public a(Looper looper, i iVar) {
            super(looper);
            this.f3137a = iVar;
        }

        @Override // android.os.Handler
        public void handleMessage(final Message message) {
            switch (message.what) {
                case 1:
                    this.f3137a.c((com.c.a.a) message.obj);
                    break;
                case 2:
                    this.f3137a.d((com.c.a.a) message.obj);
                    break;
                case 3:
                case 8:
                default:
                    t.f3174a.post(new Runnable() { // from class: com.c.a.i.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new AssertionError("Unknown handler message received: " + message.what);
                        }
                    });
                    break;
                case 4:
                    this.f3137a.e((com.c.a.c) message.obj);
                    break;
                case 5:
                    this.f3137a.d((com.c.a.c) message.obj);
                    break;
                case 6:
                    this.f3137a.a((com.c.a.c) message.obj, false);
                    break;
                case 7:
                    this.f3137a.a();
                    break;
                case 9:
                    this.f3137a.b((NetworkInfo) message.obj);
                    break;
                case 10:
                    this.f3137a.b(message.arg1 == 1);
                    break;
                case 11:
                    this.f3137a.a(message.obj);
                    break;
                case 12:
                    this.f3137a.b(message.obj);
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
        private final i f3140a;

        c(i iVar) {
            this.f3140a = iVar;
        }

        void a() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.AIRPLANE_MODE");
            if (this.f3140a.o) {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
            this.f3140a.f3133b.registerReceiver(this, intentFilter);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            if ("android.intent.action.AIRPLANE_MODE".equals(action)) {
                if (intent.hasExtra("state")) {
                    this.f3140a.a(intent.getBooleanExtra("state", false));
                }
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                this.f3140a.a(((ConnectivityManager) ae.a(context, "connectivity")).getActiveNetworkInfo());
            }
        }
    }
}
