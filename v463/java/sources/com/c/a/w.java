package com.c.a;

import android.graphics.Bitmap;
import android.net.Uri;
import com.c.a.t;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class w {
    private static final long s = TimeUnit.SECONDS.toNanos(5);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f3204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f3205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Uri f3207d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f3208e;
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
        this.f3207d = uri;
        this.f3208e = i;
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
        int i = this.f3208e;
        if (i > 0) {
            sb.append(i);
        } else {
            sb.append(this.f3207d);
        }
        List<ac> list = this.g;
        if (list != null && !list.isEmpty()) {
            for (ac acVar : this.g) {
                sb.append(' ');
                sb.append(acVar.a());
            }
        }
        if (this.f != null) {
            sb.append(" stableKey(");
            sb.append(this.f);
            sb.append(')');
        }
        if (this.h > 0) {
            sb.append(" resize(");
            sb.append(this.h);
            sb.append(',');
            sb.append(this.i);
            sb.append(')');
        }
        if (this.j) {
            sb.append(" centerCrop");
        }
        if (this.k) {
            sb.append(" centerInside");
        }
        if (this.m != 0.0f) {
            sb.append(" rotation(");
            sb.append(this.m);
            if (this.p) {
                sb.append(" @ ");
                sb.append(this.n);
                sb.append(',');
                sb.append(this.o);
            }
            sb.append(')');
        }
        if (this.q != null) {
            sb.append(' ');
            sb.append(this.q);
        }
        sb.append('}');
        return sb.toString();
    }

    String a() {
        long jNanoTime = System.nanoTime() - this.f3205b;
        if (jNanoTime > s) {
            return b() + '+' + TimeUnit.NANOSECONDS.toSeconds(jNanoTime) + 's';
        }
        return b() + '+' + TimeUnit.NANOSECONDS.toMillis(jNanoTime) + "ms";
    }

    String b() {
        return "[R" + this.f3204a + ']';
    }

    String c() {
        Uri uri = this.f3207d;
        if (uri != null) {
            return String.valueOf(uri.getPath());
        }
        return Integer.toHexString(this.f3208e);
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
        private Uri f3209a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3210b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f3211c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3212d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3213e;
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
            this.f3209a = uri;
            this.f3210b = i;
            this.n = config;
        }

        boolean a() {
            return (this.f3209a == null && this.f3210b == 0) ? false : true;
        }

        boolean b() {
            return (this.f3212d == 0 && this.f3213e == 0) ? false : true;
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
            this.f3212d = i;
            this.f3213e = i2;
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
            if (this.f && this.f3212d == 0 && this.f3213e == 0) {
                throw new IllegalStateException("Center crop requires calling resize with positive width and height.");
            }
            if (this.g && this.f3212d == 0 && this.f3213e == 0) {
                throw new IllegalStateException("Center inside requires calling resize with positive width and height.");
            }
            if (this.o == null) {
                this.o = t.e.NORMAL;
            }
            return new w(this.f3209a, this.f3210b, this.f3211c, this.m, this.f3212d, this.f3213e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.n, this.o);
        }
    }
}
