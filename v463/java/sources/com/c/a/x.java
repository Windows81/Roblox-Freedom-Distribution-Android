package com.c.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.c.a.t;
import com.c.a.w;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f3214a = new AtomicInteger();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f3215b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w.a f3216c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3218e;
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
        this.f3215b = tVar;
        this.f3216c = new w.a(uri, i, tVar.j);
    }

    x() {
        this.f = true;
        this.f3215b = null;
        this.f3216c = new w.a(null, 0, null);
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
        this.f3218e = false;
        return this;
    }

    public x a(int i, int i2) {
        this.f3216c.a(i, i2);
        return this;
    }

    public x a(ac acVar) {
        this.f3216c.a(acVar);
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
        if (!this.f3216c.a()) {
            this.f3215b.a(imageView);
            if (this.f) {
                u.a(imageView, b());
                return;
            }
            return;
        }
        if (this.f3218e) {
            if (this.f3216c.b()) {
                throw new IllegalStateException("Fit cannot be used with resize.");
            }
            int width = imageView.getWidth();
            int height = imageView.getHeight();
            if (width == 0 || height == 0) {
                if (this.f) {
                    u.a(imageView, b());
                }
                this.f3215b.a(imageView, new h(this, imageView, eVar));
                return;
            }
            this.f3216c.a(width, height);
        }
        w wVarA = a(jNanoTime);
        String strA = ae.a(wVarA);
        if (p.a(this.i) && (bitmapB = this.f3215b.b(strA)) != null) {
            this.f3215b.a(imageView);
            u.a(imageView, this.f3215b.f3176c, bitmapB, t.d.MEMORY, this.f3217d, this.f3215b.k);
            if (this.f3215b.l) {
                ae.a("Main", "completed", wVarA.b(), "from " + t.d.MEMORY);
            }
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        if (this.f) {
            u.a(imageView, b());
        }
        this.f3215b.a((a) new l(this.f3215b, imageView, wVarA, this.i, this.j, this.h, this.l, strA, this.m, eVar, this.f3217d));
    }

    private Drawable b() {
        if (this.g != 0) {
            return this.f3215b.f3176c.getResources().getDrawable(this.g);
        }
        return this.k;
    }

    private w a(long j) {
        int andIncrement = f3214a.getAndIncrement();
        w wVarC = this.f3216c.c();
        wVarC.f3204a = andIncrement;
        wVarC.f3205b = j;
        boolean z = this.f3215b.l;
        if (z) {
            ae.a("Main", "created", wVarC.b(), wVarC.toString());
        }
        w wVarA = this.f3215b.a(wVarC);
        if (wVarA != wVarC) {
            wVarA.f3204a = andIncrement;
            wVarA.f3205b = j;
            if (z) {
                ae.a("Main", "changed", wVarA.a(), "into " + wVarA);
            }
        }
        return wVarA;
    }
}
