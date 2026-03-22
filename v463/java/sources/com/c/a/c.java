package com.c.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import com.c.a.j;
import com.c.a.r;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class c implements Runnable {
    private static final Object t = new Object();
    private static final ThreadLocal<StringBuilder> u = new ThreadLocal<StringBuilder>() { // from class: com.c.a.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger v = new AtomicInteger();
    private static final y w = new y() { // from class: com.c.a.c.2
        @Override // com.c.a.y
        public boolean a(w wVar) {
            return true;
        }

        @Override // com.c.a.y
        public y.a a(w wVar, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + wVar);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f3115a = v.incrementAndGet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final t f3116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final i f3117c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d f3118d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final aa f3119e;
    final String f;
    final w g;
    final int h;
    int i;
    final y j;
    a k;
    List<a> l;
    Bitmap m;
    Future<?> n;
    t.d o;
    Exception p;
    int q;
    int r;
    t.e s;

    private static boolean a(boolean z, int i, int i2, int i3, int i4) {
        return !z || i > i3 || i2 > i4;
    }

    c(t tVar, i iVar, d dVar, aa aaVar, a aVar, y yVar) {
        this.f3116b = tVar;
        this.f3117c = iVar;
        this.f3118d = dVar;
        this.f3119e = aaVar;
        this.k = aVar;
        this.f = aVar.e();
        this.g = aVar.c();
        this.s = aVar.k();
        this.h = aVar.h();
        this.i = aVar.i();
        this.j = yVar;
        this.r = yVar.a();
    }

    static Bitmap a(InputStream inputStream, w wVar) throws IOException {
        n nVar = new n(inputStream);
        long jA = nVar.a(65536);
        BitmapFactory.Options optionsC = y.c(wVar);
        boolean zA = y.a(optionsC);
        boolean zC = ae.c(nVar);
        nVar.a(jA);
        if (zC) {
            byte[] bArrB = ae.b(nVar);
            if (zA) {
                BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, optionsC);
                y.a(wVar.h, wVar.i, optionsC, wVar);
            }
            return BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length, optionsC);
        }
        if (zA) {
            BitmapFactory.decodeStream(nVar, null, optionsC);
            y.a(wVar.h, wVar.i, optionsC, wVar);
            nVar.a(jA);
        }
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(nVar, null, optionsC);
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        throw new IOException("Failed to decode stream.");
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            try {
                try {
                    try {
                        a(this.g);
                        if (this.f3116b.l) {
                            ae.a("Hunter", "executing", ae.a(this));
                        }
                        Bitmap bitmapA = a();
                        this.m = bitmapA;
                        if (bitmapA == null) {
                            this.f3117c.c(this);
                        } else {
                            this.f3117c.a(this);
                        }
                    } catch (IOException e2) {
                        this.p = e2;
                        this.f3117c.b(this);
                    }
                } catch (Exception e3) {
                    this.p = e3;
                    this.f3117c.c(this);
                } catch (OutOfMemoryError e4) {
                    StringWriter stringWriter = new StringWriter();
                    this.f3119e.e().a(new PrintWriter(stringWriter));
                    this.p = new RuntimeException(stringWriter.toString(), e4);
                    this.f3117c.c(this);
                }
            } catch (j.b e5) {
                if (!e5.f3145a || e5.f3146b != 504) {
                    this.p = e5;
                }
                this.f3117c.c(this);
            } catch (r.a e6) {
                this.p = e6;
                this.f3117c.b(this);
            }
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap a() throws IOException {
        Bitmap bitmapA;
        if (p.a(this.h)) {
            bitmapA = this.f3118d.a(this.f);
            if (bitmapA != null) {
                this.f3119e.a();
                this.o = t.d.MEMORY;
                if (this.f3116b.l) {
                    ae.a("Hunter", "decoded", this.g.a(), "from cache");
                }
                return bitmapA;
            }
        } else {
            bitmapA = null;
        }
        this.g.f3206c = this.r == 0 ? q.OFFLINE.f3170d : this.i;
        y.a aVarA = this.j.a(this.g, this.i);
        if (aVarA != null) {
            this.o = aVarA.c();
            this.q = aVarA.d();
            bitmapA = aVarA.a();
            if (bitmapA == null) {
                InputStream inputStreamB = aVarA.b();
                try {
                    Bitmap bitmapA2 = a(inputStreamB, this.g);
                    ae.a(inputStreamB);
                    bitmapA = bitmapA2;
                } catch (Throwable th) {
                    ae.a(inputStreamB);
                    throw th;
                }
            }
        }
        if (bitmapA != null) {
            if (this.f3116b.l) {
                ae.a("Hunter", "decoded", this.g.a());
            }
            this.f3119e.a(bitmapA);
            if (this.g.e() || this.q != 0) {
                synchronized (t) {
                    if (this.g.f() || this.q != 0) {
                        bitmapA = a(this.g, bitmapA, this.q);
                        if (this.f3116b.l) {
                            ae.a("Hunter", "transformed", this.g.a());
                        }
                    }
                    if (this.g.g()) {
                        bitmapA = a(this.g.g, bitmapA);
                        if (this.f3116b.l) {
                            ae.a("Hunter", "transformed", this.g.a(), "from custom transformations");
                        }
                    }
                }
                if (bitmapA != null) {
                    this.f3119e.b(bitmapA);
                }
            }
        }
        return bitmapA;
    }

    void a(a aVar) {
        boolean z = this.f3116b.l;
        w wVar = aVar.f3090b;
        if (this.k == null) {
            this.k = aVar;
            if (z) {
                List<a> list = this.l;
                if (list == null || list.isEmpty()) {
                    ae.a("Hunter", "joined", wVar.a(), "to empty hunter");
                    return;
                } else {
                    ae.a("Hunter", "joined", wVar.a(), ae.a(this, "to "));
                    return;
                }
            }
            return;
        }
        if (this.l == null) {
            this.l = new ArrayList(3);
        }
        this.l.add(aVar);
        if (z) {
            ae.a("Hunter", "joined", wVar.a(), ae.a(this, "to "));
        }
        t.e eVarK = aVar.k();
        if (eVarK.ordinal() > this.s.ordinal()) {
            this.s = eVarK;
        }
    }

    void b(a aVar) {
        boolean zRemove;
        if (this.k == aVar) {
            this.k = null;
            zRemove = true;
        } else {
            List<a> list = this.l;
            zRemove = list != null ? list.remove(aVar) : false;
        }
        if (zRemove && aVar.k() == this.s) {
            this.s = o();
        }
        if (this.f3116b.l) {
            ae.a("Hunter", "removed", aVar.f3090b.a(), ae.a(this, "from "));
        }
    }

    private t.e o() {
        t.e eVarK = t.e.LOW;
        List<a> list = this.l;
        boolean z = true;
        boolean z2 = (list == null || list.isEmpty()) ? false : true;
        if (this.k == null && !z2) {
            z = false;
        }
        if (!z) {
            return eVarK;
        }
        a aVar = this.k;
        if (aVar != null) {
            eVarK = aVar.k();
        }
        if (z2) {
            int size = this.l.size();
            for (int i = 0; i < size; i++) {
                t.e eVarK2 = this.l.get(i).k();
                if (eVarK2.ordinal() > eVarK.ordinal()) {
                    eVarK = eVarK2;
                }
            }
        }
        return eVarK;
    }

    boolean b() {
        Future<?> future;
        if (this.k != null) {
            return false;
        }
        List<a> list = this.l;
        return (list == null || list.isEmpty()) && (future = this.n) != null && future.cancel(false);
    }

    boolean c() {
        Future<?> future = this.n;
        return future != null && future.isCancelled();
    }

    boolean a(boolean z, NetworkInfo networkInfo) {
        if (!(this.r > 0)) {
            return false;
        }
        this.r--;
        return this.j.a(z, networkInfo);
    }

    boolean d() {
        return this.j.b();
    }

    Bitmap e() {
        return this.m;
    }

    String f() {
        return this.f;
    }

    int g() {
        return this.h;
    }

    w h() {
        return this.g;
    }

    a i() {
        return this.k;
    }

    t j() {
        return this.f3116b;
    }

    List<a> k() {
        return this.l;
    }

    Exception l() {
        return this.p;
    }

    t.d m() {
        return this.o;
    }

    t.e n() {
        return this.s;
    }

    static void a(w wVar) {
        String strC = wVar.c();
        StringBuilder sb = u.get();
        sb.ensureCapacity(strC.length() + 8);
        sb.replace(8, sb.length(), strC);
        Thread.currentThread().setName(sb.toString());
    }

    static c a(t tVar, i iVar, d dVar, aa aaVar, a aVar) {
        w wVarC = aVar.c();
        List<y> listA = tVar.a();
        int size = listA.size();
        for (int i = 0; i < size; i++) {
            y yVar = listA.get(i);
            if (yVar.a(wVarC)) {
                return new c(tVar, iVar, dVar, aaVar, aVar, yVar);
            }
        }
        return new c(tVar, iVar, dVar, aaVar, aVar, w);
    }

    static Bitmap a(List<ac> list, Bitmap bitmap) {
        int size = list.size();
        int i = 0;
        while (i < size) {
            final ac acVar = list.get(i);
            try {
                Bitmap bitmapA = acVar.a(bitmap);
                if (bitmapA == null) {
                    final StringBuilder sb = new StringBuilder();
                    sb.append("Transformation ");
                    sb.append(acVar.a());
                    sb.append(" returned null after ");
                    sb.append(i);
                    sb.append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<ac> it = list.iterator();
                    while (it.hasNext()) {
                        sb.append(it.next().a());
                        sb.append('\n');
                    }
                    t.f3174a.post(new Runnable() { // from class: com.c.a.c.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(sb.toString());
                        }
                    });
                    return null;
                }
                if (bitmapA == bitmap && bitmap.isRecycled()) {
                    t.f3174a.post(new Runnable() { // from class: com.c.a.c.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + acVar.a() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                }
                if (bitmapA != bitmap && !bitmap.isRecycled()) {
                    t.f3174a.post(new Runnable() { // from class: com.c.a.c.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + acVar.a() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
                i++;
                bitmap = bitmapA;
            } catch (RuntimeException e2) {
                t.f3174a.post(new Runnable() { // from class: com.c.a.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + acVar.a() + " crashed with exception.", e2);
                    }
                });
                return null;
            }
        }
        return bitmap;
    }

    static Bitmap a(w wVar, Bitmap bitmap, int i) {
        int i2;
        int i3;
        int i4;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        int iCeil;
        int i5;
        int i6;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        boolean z = wVar.l;
        Matrix matrix = new Matrix();
        int i7 = 0;
        if (wVar.f()) {
            int i8 = wVar.h;
            int i9 = wVar.i;
            float f6 = wVar.m;
            if (f6 != 0.0f) {
                if (wVar.p) {
                    matrix.setRotate(f6, wVar.n, wVar.o);
                } else {
                    matrix.setRotate(f6);
                }
            }
            if (wVar.j) {
                float f7 = i8;
                float f8 = f7 / width;
                float f9 = i9;
                float f10 = f9 / height;
                if (f8 > f10) {
                    iCeil = (int) Math.ceil(r10 * (f10 / f8));
                    i6 = (height - iCeil) / 2;
                    f10 = f9 / iCeil;
                    f5 = f8;
                    i5 = width;
                } else {
                    int iCeil2 = (int) Math.ceil(r6 * (f8 / f10));
                    f5 = f7 / iCeil2;
                    iCeil = height;
                    i7 = (width - iCeil2) / 2;
                    i5 = iCeil2;
                    i6 = 0;
                }
                if (a(z, width, height, i8, i9)) {
                    matrix.preScale(f5, f10);
                }
                i4 = i6;
                i2 = i5;
                i3 = iCeil;
            } else {
                if (wVar.k) {
                    float f11 = i8 / width;
                    float f12 = i9 / height;
                    if (f11 >= f12) {
                        f11 = f12;
                    }
                    if (a(z, width, height, i8, i9)) {
                        matrix.preScale(f11, f11);
                    }
                } else if ((i8 != 0 || i9 != 0) && (i8 != width || i9 != height)) {
                    if (i8 != 0) {
                        f = i8;
                        f2 = width;
                    } else {
                        f = i9;
                        f2 = height;
                    }
                    float f13 = f / f2;
                    if (i9 != 0) {
                        f3 = i9;
                        f4 = height;
                    } else {
                        f3 = i8;
                        f4 = width;
                    }
                    float f14 = f3 / f4;
                    if (a(z, width, height, i8, i9)) {
                        matrix.preScale(f13, f14);
                    }
                }
                i2 = width;
                i3 = height;
                i4 = 0;
            }
        } else {
            i2 = width;
            i3 = height;
            i4 = 0;
        }
        if (i != 0) {
            matrix.preRotate(i);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i7, i4, i2, i3, matrix, true);
        if (bitmapCreateBitmap == bitmap) {
            return bitmap;
        }
        bitmap.recycle();
        return bitmapCreateBitmap;
    }
}
