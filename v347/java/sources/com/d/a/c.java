package com.d.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.NetworkInfo;
import com.d.a.j;
import com.d.a.r;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class c implements Runnable {
    private static final Object t = new Object();
    private static final ThreadLocal<StringBuilder> u = new ThreadLocal<StringBuilder>() { // from class: com.d.a.c.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder("Picasso-");
        }
    };
    private static final AtomicInteger v = new AtomicInteger();
    private static final y w = new y() { // from class: com.d.a.c.2
        @Override // com.d.a.y
        public boolean a(w wVar) {
            return true;
        }

        @Override // com.d.a.y
        public y.a a(w wVar, int i) throws IOException {
            throw new IllegalStateException("Unrecognized type of request: " + wVar);
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final int f2462a = v.incrementAndGet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final t f2463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final i f2464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final d f2465d;
    final aa e;
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

    c(t tVar, i iVar, d dVar, aa aaVar, a aVar, y yVar) {
        this.f2463b = tVar;
        this.f2464c = iVar;
        this.f2465d = dVar;
        this.e = aaVar;
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
        if (bitmapDecodeStream == null) {
            throw new IOException("Failed to decode stream.");
        }
        return bitmapDecodeStream;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            a(this.g);
            if (this.f2463b.l) {
                ae.a("Hunter", "executing", ae.a(this));
            }
            this.m = a();
            if (this.m == null) {
                this.f2464c.c(this);
            } else {
                this.f2464c.a(this);
            }
        } catch (IOException e) {
            this.p = e;
            this.f2464c.b(this);
        } catch (r.a e2) {
            this.p = e2;
            this.f2464c.b(this);
        } catch (Exception e3) {
            this.p = e3;
            this.f2464c.c(this);
        } catch (j.b e4) {
            if (!e4.f2490a || e4.f2491b != 504) {
                this.p = e4;
            }
            this.f2464c.c(this);
        } catch (OutOfMemoryError e5) {
            StringWriter stringWriter = new StringWriter();
            this.e.e().a(new PrintWriter(stringWriter));
            this.p = new RuntimeException(stringWriter.toString(), e5);
            this.f2464c.c(this);
        } finally {
            Thread.currentThread().setName("Picasso-Idle");
        }
    }

    Bitmap a() throws IOException {
        Bitmap bitmapA = null;
        if (p.a(this.h) && (bitmapA = this.f2465d.a(this.f)) != null) {
            this.e.a();
            this.o = t.d.MEMORY;
            if (this.f2463b.l) {
                ae.a("Hunter", "decoded", this.g.a(), "from cache");
            }
        } else {
            this.g.f2543c = this.r == 0 ? q.OFFLINE.f2511d : this.i;
            y.a aVarA = this.j.a(this.g, this.i);
            if (aVarA != null) {
                this.o = aVarA.c();
                this.q = aVarA.d();
                bitmapA = aVarA.a();
                if (bitmapA == null) {
                    InputStream inputStreamB = aVarA.b();
                    try {
                        bitmapA = a(inputStreamB, this.g);
                    } finally {
                        ae.a(inputStreamB);
                    }
                }
            }
            if (bitmapA != null) {
                if (this.f2463b.l) {
                    ae.a("Hunter", "decoded", this.g.a());
                }
                this.e.a(bitmapA);
                if (this.g.e() || this.q != 0) {
                    synchronized (t) {
                        if (this.g.f() || this.q != 0) {
                            bitmapA = a(this.g, bitmapA, this.q);
                            if (this.f2463b.l) {
                                ae.a("Hunter", "transformed", this.g.a());
                            }
                        }
                        if (this.g.g()) {
                            bitmapA = a(this.g.g, bitmapA);
                            if (this.f2463b.l) {
                                ae.a("Hunter", "transformed", this.g.a(), "from custom transformations");
                            }
                        }
                    }
                    if (bitmapA != null) {
                        this.e.b(bitmapA);
                    }
                }
            }
        }
        return bitmapA;
    }

    void a(a aVar) {
        boolean z = this.f2463b.l;
        w wVar = aVar.f2440b;
        if (this.k == null) {
            this.k = aVar;
            if (z) {
                if (this.l == null || this.l.isEmpty()) {
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
        boolean zRemove = false;
        if (this.k == aVar) {
            this.k = null;
            zRemove = true;
        } else if (this.l != null) {
            zRemove = this.l.remove(aVar);
        }
        if (zRemove && aVar.k() == this.s) {
            this.s = o();
        }
        if (this.f2463b.l) {
            ae.a("Hunter", "removed", aVar.f2440b.a(), ae.a(this, "from "));
        }
    }

    private t.e o() {
        boolean z = true;
        int i = 0;
        t.e eVar = t.e.LOW;
        boolean z2 = (this.l == null || this.l.isEmpty()) ? false : true;
        if (this.k == null && !z2) {
            z = false;
        }
        if (!z) {
            return eVar;
        }
        t.e eVarK = this.k != null ? this.k.k() : eVar;
        if (z2) {
            int size = this.l.size();
            while (i < size) {
                t.e eVarK2 = this.l.get(i).k();
                if (eVarK2.ordinal() <= eVarK.ordinal()) {
                    eVarK2 = eVarK;
                }
                i++;
                eVarK = eVarK2;
            }
            return eVarK;
        }
        return eVarK;
    }

    boolean b() {
        if (this.k == null) {
            return (this.l == null || this.l.isEmpty()) && this.n != null && this.n.cancel(false);
        }
        return false;
    }

    boolean c() {
        return this.n != null && this.n.isCancelled();
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
        return this.f2463b;
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
        sb.ensureCapacity("Picasso-".length() + strC.length());
        sb.replace("Picasso-".length(), sb.length(), strC);
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
        Bitmap bitmap2 = bitmap;
        while (i < size) {
            final ac acVar = list.get(i);
            try {
                Bitmap bitmapA = acVar.a(bitmap2);
                if (bitmapA == null) {
                    final StringBuilder sbAppend = new StringBuilder().append("Transformation ").append(acVar.a()).append(" returned null after ").append(i).append(" previous transformation(s).\n\nTransformation list:\n");
                    Iterator<ac> it = list.iterator();
                    while (it.hasNext()) {
                        sbAppend.append(it.next().a()).append('\n');
                    }
                    t.f2515a.post(new Runnable() { // from class: com.d.a.c.4
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new NullPointerException(sbAppend.toString());
                        }
                    });
                    return null;
                }
                if (bitmapA == bitmap2 && bitmap2.isRecycled()) {
                    t.f2515a.post(new Runnable() { // from class: com.d.a.c.5
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + acVar.a() + " returned input Bitmap but recycled it.");
                        }
                    });
                    return null;
                }
                if (bitmapA == bitmap2 || bitmap2.isRecycled()) {
                    i++;
                    bitmap2 = bitmapA;
                } else {
                    t.f2515a.post(new Runnable() { // from class: com.d.a.c.6
                        @Override // java.lang.Runnable
                        public void run() {
                            throw new IllegalStateException("Transformation " + acVar.a() + " mutated input Bitmap but failed to recycle the original.");
                        }
                    });
                    return null;
                }
            } catch (RuntimeException e) {
                t.f2515a.post(new Runnable() { // from class: com.d.a.c.3
                    @Override // java.lang.Runnable
                    public void run() {
                        throw new RuntimeException("Transformation " + acVar.a() + " crashed with exception.", e);
                    }
                });
                return null;
            }
        }
        return bitmap2;
    }

    static Bitmap a(w wVar, Bitmap bitmap, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int iCeil;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        boolean z = wVar.l;
        Matrix matrix = new Matrix();
        if (!wVar.f()) {
            i2 = 0;
            i3 = 0;
            i4 = height;
            i5 = width;
        } else {
            int i9 = wVar.h;
            int i10 = wVar.i;
            float f = wVar.m;
            if (f != 0.0f) {
                if (wVar.p) {
                    matrix.setRotate(f, wVar.n, wVar.o);
                } else {
                    matrix.setRotate(f);
                }
            }
            if (wVar.j) {
                float f2 = i9 / width;
                float f3 = i10 / height;
                if (f2 > f3) {
                    iCeil = (int) Math.ceil((f3 / f2) * height);
                    f3 = i10 / iCeil;
                    i6 = 0;
                    i7 = (height - iCeil) / 2;
                    i8 = width;
                } else {
                    int iCeil2 = (int) Math.ceil((f2 / f3) * width);
                    f2 = i9 / iCeil2;
                    i6 = (width - iCeil2) / 2;
                    i7 = 0;
                    i8 = iCeil2;
                    iCeil = height;
                }
                if (a(z, width, height, i9, i10)) {
                    matrix.preScale(f2, f3);
                }
                i5 = i8;
                i3 = i6;
                i4 = iCeil;
                i2 = i7;
            } else if (wVar.k) {
                float f4 = i9 / width;
                float f5 = i10 / height;
                if (f4 >= f5) {
                    f4 = f5;
                }
                if (a(z, width, height, i9, i10)) {
                    matrix.preScale(f4, f4);
                }
                i2 = 0;
                i3 = 0;
                i4 = height;
                i5 = width;
            } else {
                if ((i9 != 0 || i10 != 0) && (i9 != width || i10 != height)) {
                    float f6 = i9 != 0 ? i9 / width : i10 / height;
                    float f7 = i10 != 0 ? i10 / height : i9 / width;
                    if (a(z, width, height, i9, i10)) {
                        matrix.preScale(f6, f7);
                    }
                }
                i2 = 0;
                i3 = 0;
                i4 = height;
                i5 = width;
            }
        }
        if (i != 0) {
            matrix.preRotate(i);
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, i3, i2, i5, i4, matrix, true);
        if (bitmapCreateBitmap != bitmap) {
            bitmap.recycle();
            return bitmapCreateBitmap;
        }
        return bitmap;
    }

    private static boolean a(boolean z, int i, int i2, int i3, int i4) {
        return !z || i > i3 || i2 > i4;
    }
}
