package com.c.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.widget.ImageView;
import com.c.a.a;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Handler f3174a = new Handler(Looper.getMainLooper()) { // from class: com.c.a.t.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 3) {
                com.c.a.a aVar = (com.c.a.a) message.obj;
                if (aVar.j().l) {
                    ae.a("Main", "canceled", aVar.f3090b.a(), "target got garbage collected");
                }
                aVar.f3089a.a(aVar.d());
                return;
            }
            int i2 = 0;
            if (i == 8) {
                List list = (List) message.obj;
                int size = list.size();
                while (i2 < size) {
                    com.c.a.c cVar = (com.c.a.c) list.get(i2);
                    cVar.f3116b.a(cVar);
                    i2++;
                }
                return;
            }
            if (i == 13) {
                List list2 = (List) message.obj;
                int size2 = list2.size();
                while (i2 < size2) {
                    com.c.a.a aVar2 = (com.c.a.a) list2.get(i2);
                    aVar2.f3089a.c(aVar2);
                    i2++;
                }
                return;
            }
            throw new AssertionError("Unknown handler message received: " + message.what);
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile t f3175b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f3176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final i f3177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final com.c.a.d f3178e;
    final aa f;
    final Map<Object, com.c.a.a> g;
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
        public static final f f3197a = new f() { // from class: com.c.a.t.f.1
            @Override // com.c.a.t.f
            public w a(w wVar) {
                return wVar;
            }
        };

        w a(w wVar);
    }

    t(Context context, i iVar, com.c.a.d dVar, c cVar, f fVar, List<y> list, aa aaVar, Bitmap.Config config, boolean z, boolean z2) {
        this.f3176c = context;
        this.f3177d = iVar;
        this.f3178e = dVar;
        this.n = cVar;
        this.o = fVar;
        this.j = config;
        ArrayList arrayList = new ArrayList((list != null ? list.size() : 0) + 7);
        arrayList.add(new z(context));
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.add(new com.c.a.f(context));
        arrayList.add(new o(context));
        arrayList.add(new g(context));
        arrayList.add(new com.c.a.b(context));
        arrayList.add(new k(context));
        arrayList.add(new r(iVar.f3135d, aaVar));
        this.q = Collections.unmodifiableList(arrayList);
        this.f = aaVar;
        this.g = new WeakHashMap();
        this.h = new WeakHashMap();
        this.k = z;
        this.l = z2;
        this.i = new ReferenceQueue<>();
        b bVar = new b(this.i, f3174a);
        this.p = bVar;
        bVar.start();
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
        if (wVarA != null) {
            return wVarA;
        }
        throw new IllegalStateException("Request transformer " + this.o.getClass().getCanonicalName() + " returned null for " + wVar);
    }

    void a(ImageView imageView, h hVar) {
        this.h.put(imageView, hVar);
    }

    void a(com.c.a.a aVar) {
        Object objD = aVar.d();
        if (objD != null && this.g.get(objD) != aVar) {
            a(objD);
            this.g.put(objD, aVar);
        }
        b(aVar);
    }

    void b(com.c.a.a aVar) {
        this.f3177d.a(aVar);
    }

    Bitmap b(String str) {
        Bitmap bitmapA = this.f3178e.a(str);
        if (bitmapA != null) {
            this.f.a();
        } else {
            this.f.b();
        }
        return bitmapA;
    }

    void a(com.c.a.c cVar) {
        com.c.a.a aVarI = cVar.i();
        List<com.c.a.a> listK = cVar.k();
        boolean z = true;
        boolean z2 = (listK == null || listK.isEmpty()) ? false : true;
        if (aVarI == null && !z2) {
            z = false;
        }
        if (z) {
            Uri uri = cVar.h().f3207d;
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
            c cVar2 = this.n;
            if (cVar2 == null || excL == null) {
                return;
            }
            cVar2.a(this, uri, excL);
        }
    }

    void c(com.c.a.a aVar) {
        Bitmap bitmapB = p.a(aVar.f3093e) ? b(aVar.e()) : null;
        if (bitmapB != null) {
            a(bitmapB, d.MEMORY, aVar);
            if (this.l) {
                ae.a("Main", "completed", aVar.f3090b.a(), "from " + d.MEMORY);
                return;
            }
            return;
        }
        a(aVar);
        if (this.l) {
            ae.a("Main", "resumed", aVar.f3090b.a());
        }
    }

    private void a(Bitmap bitmap, d dVar, com.c.a.a aVar) {
        if (aVar.f()) {
            return;
        }
        if (!aVar.g()) {
            this.g.remove(aVar.d());
        }
        if (bitmap == null) {
            aVar.a();
            if (this.l) {
                ae.a("Main", "errored", aVar.f3090b.a());
                return;
            }
            return;
        }
        if (dVar == null) {
            throw new AssertionError("LoadedFrom cannot be null.");
        }
        aVar.a(bitmap, dVar);
        if (this.l) {
            ae.a("Main", "completed", aVar.f3090b.a(), "from " + dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        ae.a();
        com.c.a.a aVarRemove = this.g.remove(obj);
        if (aVarRemove != null) {
            aVarRemove.b();
            this.f3177d.b(aVarRemove);
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
        private final ReferenceQueue<Object> f3184a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Handler f3185b;

        b(ReferenceQueue<Object> referenceQueue, Handler handler) {
            this.f3184a = referenceQueue;
            this.f3185b = handler;
            setDaemon(true);
            setName("Picasso-refQueue");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            while (true) {
                try {
                    a.C0073a c0073a = (a.C0073a) this.f3184a.remove(1000L);
                    Message messageObtainMessage = this.f3185b.obtainMessage();
                    if (c0073a != null) {
                        messageObtainMessage.what = 3;
                        messageObtainMessage.obj = c0073a.f3094a;
                        this.f3185b.sendMessage(messageObtainMessage);
                    } else {
                        messageObtainMessage.recycle();
                    }
                } catch (InterruptedException unused) {
                    return;
                } catch (Exception e2) {
                    this.f3185b.post(new Runnable() { // from class: com.c.a.t.b.1
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
        if (f3175b == null) {
            synchronized (t.class) {
                if (f3175b == null) {
                    f3175b = new a(context).a();
                }
            }
        }
        return f3175b;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f3179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private j f3180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ExecutorService f3181c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private com.c.a.d f3182d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f3183e;
        private f f;
        private List<y> g;
        private Bitmap.Config h;
        private boolean i;
        private boolean j;

        public a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.f3179a = context.getApplicationContext();
        }

        public t a() {
            Context context = this.f3179a;
            if (this.f3180b == null) {
                this.f3180b = ae.a(context);
            }
            if (this.f3182d == null) {
                this.f3182d = new m(context);
            }
            if (this.f3181c == null) {
                this.f3181c = new v();
            }
            if (this.f == null) {
                this.f = f.f3197a;
            }
            aa aaVar = new aa(this.f3182d);
            return new t(context, new i(context, this.f3181c, t.f3174a, this.f3180b, this.f3182d, aaVar), this.f3182d, this.f3183e, this.f, this.g, aaVar, this.h, this.i, this.j);
        }
    }

    public enum d {
        MEMORY(-16711936),
        DISK(-16776961),
        NETWORK(-65536);


        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3192d;

        d(int i) {
            this.f3192d = i;
        }
    }
}
