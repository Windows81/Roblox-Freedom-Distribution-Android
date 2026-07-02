package com.d.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import com.d.a.a;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Handler f2515a = new Handler(Looper.getMainLooper()) { // from class: com.d.a.t.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 3:
                    com.d.a.a aVar = (com.d.a.a) message.obj;
                    if (aVar.j().l) {
                        ae.a("Main", "canceled", aVar.f2440b.a(), "target got garbage collected");
                    }
                    aVar.f2439a.a(aVar.d());
                    return;
                case 8:
                    List list = (List) message.obj;
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        com.d.a.c cVar = (com.d.a.c) list.get(i);
                        cVar.f2463b.a(cVar);
                    }
                    return;
                case 13:
                    List list2 = (List) message.obj;
                    int size2 = list2.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        com.d.a.a aVar2 = (com.d.a.a) list2.get(i2);
                        aVar2.f2439a.c(aVar2);
                    }
                    return;
                default:
                    throw new AssertionError("Unknown handler message received: " + message.what);
            }
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile t f2516b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f2517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final i f2518d;
    final com.d.a.d e;
    final aa f;
    final Map<Object, com.d.a.a> g;
    final Map<ImageView, h> h;
    final ReferenceQueue<Object> i;
    final Bitmap.Config j;
    boolean k;
    volatile boolean l;
    boolean m;
    private final c n;
    private final f o;
    private final b p;
    private final List<y> q;

    public interface c {
        void a(t tVar, Uri uri, Exception exc);
    }

    public enum e {
        LOW,
        NORMAL,
        HIGH
    }

    public interface f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f2535a = new f() { // from class: com.d.a.t.f.1
            @Override // com.d.a.t.f
            public w a(w wVar) {
                return wVar;
            }
        };

        w a(w wVar);
    }

    t(Context context, i iVar, com.d.a.d dVar, c cVar, f fVar, List<y> list, aa aaVar, Bitmap.Config config, boolean z, boolean z2) {
        this.f2517c = context;
        this.f2518d = iVar;
        this.e = dVar;
        this.n = cVar;
        this.o = fVar;
        this.j = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new com.d.a.f(context));
        arrayList.add(new o(context));
        arrayList.add(new g(context));
        arrayList.add(new com.d.a.b(context));
        arrayList.add(new k(context));
        arrayList.add(new r(iVar.f2481d, aaVar));
        this.q = Collections.unmodifiableList(arrayList);
        this.f = aaVar;
        this.g = new WeakHashMap();
        this.h = new WeakHashMap();
        this.k = z;
        this.l = z2;
        this.i = new ReferenceQueue<>();
        this.p = new b(this.i, f2515a);
        this.p.start();
    }

    public void a(ImageView imageView) {
        a((Object) imageView);
    }

    public x a(Uri uri) {
        return new x(this, uri, 0);
    }

    public x a(String str) {
        if (str == null) {
            return new x(this, null, 0);
        }
        if (str.trim().length() == 0) {
            throw new IllegalArgumentException("Path must not be empty.");
        }
        return a(Uri.parse(str));
    }

    List<y> a() {
        return this.q;
    }

    w a(w wVar) {
        w wVarA = this.o.a(wVar);
        if (wVarA == null) {
            throw new IllegalStateException("Request transformer " + this.o.getClass().getCanonicalName() + " returned null for " + wVar);
        }
        return wVarA;
    }

    void a(ImageView imageView, h hVar) {
        this.h.put(imageView, hVar);
    }

    void a(com.d.a.a aVar) {
        Object objD = aVar.d();
        if (objD != null && this.g.get(objD) != aVar) {
            a(objD);
            this.g.put(objD, aVar);
        }
        b(aVar);
    }

    void b(com.d.a.a aVar) {
        this.f2518d.a(aVar);
    }

    Bitmap b(String str) {
        Bitmap bitmapA = this.e.a(str);
        if (bitmapA != null) {
            this.f.a();
        } else {
            this.f.b();
        }
        return bitmapA;
    }

    void a(com.d.a.c cVar) {
        boolean z = true;
        com.d.a.a aVarI = cVar.i();
        List<com.d.a.a> listK = cVar.k();
        boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
        if (aVarI == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = cVar.h().f2544d;
            Exception excL = cVar.l();
            Bitmap bitmapE = cVar.e();
            d dVarM = cVar.m();
            if (aVarI != null) {
                a(bitmapE, dVarM, aVarI);
            }
            if (z2) {
                int size = listK.size();
                for (int i = 0; i < size; i++) {
                    a(bitmapE, dVarM, listK.get(i));
                }
            }
            if (this.n != null && excL != null) {
                this.n.a(this, uri, excL);
            }
        }
    }

    void c(com.d.a.a aVar) {
        Bitmap bitmapB = null;
        if (p.a(aVar.e)) {
            bitmapB = b(aVar.e());
        }
        if (bitmapB != null) {
            a(bitmapB, d.MEMORY, aVar);
            if (this.l) {
                ae.a("Main", "completed", aVar.f2440b.a(), "from " + d.MEMORY);
                return;
            }
            return;
        }
        a(aVar);
        if (this.l) {
            ae.a("Main", "resumed", aVar.f2440b.a());
        }
    }

    private void a(Bitmap bitmap, d dVar, com.d.a.a aVar) {
        if (!aVar.f()) {
            if (!aVar.g()) {
                this.g.remove(aVar.d());
            }
            if (bitmap != null) {
                if (dVar == null) {
                    throw new AssertionError("LoadedFrom cannot be null.");
                }
                aVar.a(bitmap, dVar);
                if (this.l) {
                    ae.a("Main", "completed", aVar.f2440b.a(), "from " + dVar);
                    return;
                }
                return;
            }
            aVar.a();
            if (this.l) {
                ae.a("Main", "errored", aVar.f2440b.a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        ae.a();
        com.d.a.a aVarRemove = this.g.remove(obj);
        if (aVarRemove != null) {
            aVarRemove.b();
            this.f2518d.b(aVarRemove);
        }
        if (obj instanceof ImageView) {
            h hVarRemove = this.h.remove((ImageView) obj);
            if (hVarRemove != null) {
                hVarRemove.a();
            }
        }
    }

    private static class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ReferenceQueue<Object> f2523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f2524b;

        b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f2523a = referenceQueue;
            this.f2524b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0054a c0054a = (a.C0054a) this.f2523a.remove(1000L);
                    Message messageObtainMessage = this.f2524b.obtainMessage();
                    if (c0054a != null) {
                        messageObtainMessage.what = 3;
                        messageObtainMessage.obj = c0054a.f2443a;
                        this.f2524b.sendMessage(messageObtainMessage);
                    } else {
                        messageObtainMessage.recycle();
                    }
                } catch (InterruptedException e) {
                    return;
                } catch (Exception e2) {
                    this.f2524b.post(new Runnable() { // from class: com.d.a.t.b.1
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new RuntimeException(e2);
                        }
                    });
                    return;
                }
            }
        }
    }

    public static t a(Context context) {
        if (f2516b == null) {
            synchronized (t.class) {
                if (f2516b == null) {
                    f2516b = new a(context).a();
                }
            }
        }
        return f2516b;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j f2520b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ExecutorService f2521c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.d.a.d f2522d;
        private c e;
        private f f;
        private List<y> g;
        private Bitmap.Config h;
        private boolean i;
        private boolean j;

        public a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f2519a = context.getApplicationContext();
        }

        public t a() {
            Context context = this.f2519a;
            if (this.f2520b == null) {
                this.f2520b = ae.a(context);
            }
            if (this.f2522d == null) {
                this.f2522d = new m(context);
            }
            if (this.f2521c == null) {
                this.f2521c = new v();
            }
            if (this.f == null) {
                this.f = f.f2535a;
            }
            aa aaVar = new aa(this.f2522d);
            return new t(context, new i(context, this.f2521c, t.f2515a, this.f2520b, this.f2522d, aaVar), this.f2522d, this.e, this.f, this.g, aaVar, this.h, this.i, this.j);
        }
    }

    public enum d {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f2530d;

        d(int i) {
            this.f2530d = i;
        }
    }
}
