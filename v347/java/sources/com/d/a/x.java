package com.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.d.a.t;
import com.d.a.w;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f2549a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f2550b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w.a f2551c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2552d;
    private boolean e;
    private boolean f;
    private int g;
    private int h;
    private int i;
    private int j;
    private Drawable k;
    private Drawable l;
    private Object m;

    x(t tVar, Uri uri, int i) {
        this.f = true;
        if (tVar.m) {
            throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
        }
        this.f2550b = tVar;
        this.f2551c = new w.a(uri, i, tVar.j);
    }

    x() {
        this.f = true;
        this.f2550b = null;
        this.f2551c = new w.a(null, 0, null);
    }

    public x a(int i) {
        if (!this.f) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        }
        if (this.k != null) {
            throw new IllegalStateException("Placeholder image already set.");
        }
        this.g = i;
        return this;
    }

    x a() {
        this.e = false;
        return this;
    }

    public x a(int i, int i2) {
        this.f2551c.a(i, i2);
        return this;
    }

    public x a(t.e eVar) {
        this.f2551c.a(eVar);
        return this;
    }

    public x a(ac acVar) {
        this.f2551c.a(acVar);
        return this;
    }

    public x b() {
        this.f2552d = true;
        return this;
    }

    public void a(ImageView imageView) {
        a(imageView, (e) null);
    }

    public void a(ImageView imageView, e eVar) {
        Bitmap bitmapB;
        long jNanoTime = System.nanoTime();
        ae.a();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        }
        if (!this.f2551c.a()) {
            this.f2550b.a(imageView);
            if (this.f) {
                u.a(imageView, c());
                return;
            }
            return;
        }
        if (this.e) {
            if (this.f2551c.b()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f) {
                    u.a(imageView, c());
                }
                this.f2550b.a(imageView, new h(this, imageView, eVar));
                return;
            }
            this.f2551c.a(width, height);
        }
        w wVarA = a(jNanoTime);
        String strA = ae.a(wVarA);
        if (p.a(this.i) && (bitmapB = this.f2550b.b(strA)) != null) {
            this.f2550b.a(imageView);
            u.a(imageView, this.f2550b.f2517c, bitmapB, t.d.MEMORY, this.f2552d, this.f2550b.k);
            if (this.f2550b.l) {
                ae.a("Main", "completed", wVarA.b(), "from " + t.d.MEMORY);
            }
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        if (this.f) {
            u.a(imageView, c());
        }
        this.f2550b.a((a) new l(this.f2550b, imageView, wVarA, this.i, this.j, this.h, this.l, strA, this.m, eVar, this.f2552d));
    }

    private Drawable c() {
        return this.g != 0 ? this.f2550b.f2517c.getResources().getDrawable(this.g) : this.k;
    }

    private w a(long j) {
        int andIncrement = f2549a.getAndIncrement();
        w wVarC = this.f2551c.c();
        wVarC.f2541a = andIncrement;
        wVarC.f2542b = j;
        boolean z = this.f2550b.l;
        if (z) {
            ae.a("Main", "created", wVarC.b(), wVarC.toString());
        }
        w wVarA = this.f2550b.a(wVarC);
        if (wVarA != wVarC) {
            wVarA.f2541a = andIncrement;
            wVarA.f2542b = j;
            if (z) {
                ae.a("Main", "changed", wVarA.a(), "into " + wVarA);
            }
        }
        return wVarA;
    }
}
