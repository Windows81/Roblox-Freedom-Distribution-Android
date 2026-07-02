package com.d.a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.d.a.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class w {
    private static final long s = TimeUnit.SECONDS.toNanos(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f2541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f2542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uri f2544d;
    public final int e;
    public final String f;
    public final List<ac> g;
    public final int h;
    public final int i;
    public final boolean j;
    public final boolean k;
    public final boolean l;
    public final float m;
    public final float n;
    public final float o;
    public final boolean p;
    public final Bitmap.Config q;
    public final t.e r;

    private w(Uri uri, int i, String str, List<ac> list, int i2, int i3, boolean z, boolean z2, boolean z3, float f, float f2, float f3, boolean z4, Bitmap.Config config, t.e eVar) {
        this.f2544d = uri;
        this.e = i;
        this.f = str;
        if (list == null) {
            this.g = null;
        } else {
            this.g = Collections.unmodifiableList(list);
        }
        this.h = i2;
        this.i = i3;
        this.j = z;
        this.k = z2;
        this.l = z3;
        this.m = f;
        this.n = f2;
        this.o = f3;
        this.p = z4;
        this.q = config;
        this.r = eVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Request{");
        if (this.e > 0) {
            sb.append(this.e);
        } else {
            sb.append(this.f2544d);
        }
        if (this.g != null && !this.g.isEmpty()) {
            Iterator<ac> it = this.g.iterator();
            while (it.hasNext()) {
                sb.append(' ').append(it.next().a());
            }
        }
        if (this.f != null) {
            sb.append(" stableKey(").append(this.f).append(')');
        }
        if (this.h > 0) {
            sb.append(" resize(").append(this.h).append(',').append(this.i).append(')');
        }
        if (this.j) {
            sb.append(" centerCrop");
        }
        if (this.k) {
            sb.append(" centerInside");
        }
        if (this.m != 0.0f) {
            sb.append(" rotation(").append(this.m);
            if (this.p) {
                sb.append(" @ ").append(this.n).append(',').append(this.o);
            }
            sb.append(')');
        }
        if (this.q != null) {
            sb.append(' ').append(this.q);
        }
        sb.append('}');
        return sb.toString();
    }

    String a() {
        long jNanoTime = System.nanoTime() - this.f2542b;
        return jNanoTime > s ? b() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's' : b() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    String b() {
        return "[R" + this.f2541a + ']';
    }

    String c() {
        return this.f2544d != null ? String.valueOf(this.f2544d.getPath()) : Integer.toHexString(this.e);
    }

    public boolean d() {
        return (this.h == 0 && this.i == 0) ? false : true;
    }

    boolean e() {
        return f() || g();
    }

    boolean f() {
        return d() || this.m != 0.0f;
    }

    boolean g() {
        return this.g != null;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Uri f2545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2546b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2547c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f2548d;
        private int e;
        private boolean f;
        private boolean g;
        private boolean h;
        private float i;
        private float j;
        private float k;
        private boolean l;
        private List<ac> m;
        private Bitmap.Config n;
        private t.e o;

        a(Uri uri, int i, Bitmap.Config config) {
            this.f2545a = uri;
            this.f2546b = i;
            this.n = config;
        }

        boolean a() {
            return (this.f2545a == null && this.f2546b == 0) ? false : true;
        }

        boolean b() {
            return (this.f2548d == 0 && this.e == 0) ? false : true;
        }

        public a a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Width must be positive number or 0.");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Height must be positive number or 0.");
            }
            if (i2 == 0 && i == 0) {
                throw new IllegalArgumentException("At least one dimension has to be positive number.");
            }
            this.f2548d = i;
            this.e = i2;
            return this;
        }

        public a a(t.e eVar) {
            if (eVar == null) {
                throw new IllegalArgumentException("Priority invalid.");
            }
            if (this.o != null) {
                throw new IllegalStateException("Priority already set.");
            }
            this.o = eVar;
            return this;
        }

        public a a(ac acVar) {
            if (acVar == null) {
                throw new IllegalArgumentException("Transformation must not be null.");
            }
            if (acVar.a() == null) {
                throw new IllegalArgumentException("Transformation key must not be null.");
            }
            if (this.m == null) {
                this.m = new ArrayList(2);
            }
            this.m.add(acVar);
            return this;
        }

        public w c() {
            if (this.g && this.f) {
                throw new IllegalStateException("Center crop and center inside can not be used together.");
            }
            if (this.f && this.f2548d == 0 && this.e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            }
            if (this.g && this.f2548d == 0 && this.e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            }
            if (this.o == null) {
                this.o = t.e.NORMAL;
            }
            return new w(this.f2545a, this.f2546b, this.f2547c, this.m, this.f2548d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.n, this.o);
        }
    }
}
