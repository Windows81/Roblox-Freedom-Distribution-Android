package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.eb;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class avg<T> implements Comparable<avg<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final eb.a f4533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f4536d;
    private final Object e;
    private bch f;
    private Integer g;
    private aze h;
    private boolean i;
    private boolean j;
    private boolean k;
    private boolean l;
    private ac m;
    private agm n;
    private axc o;

    public avg(int i, String str, bch bchVar) {
        Uri uri;
        String host;
        this.f4533a = eb.a.f4949a ? new eb.a() : null;
        this.e = new Object();
        this.i = true;
        this.j = false;
        this.k = false;
        this.l = false;
        this.n = null;
        this.f4534b = i;
        this.f4535c = str;
        this.f = bchVar;
        this.m = new alr();
        this.f4536d = (TextUtils.isEmpty(str) || (uri = Uri.parse(str)) == null || (host = uri.getHost()) == null) ? 0 : host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final avg<?> a(int i) {
        this.g = Integer.valueOf(i);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final avg<?> a(agm agmVar) {
        this.n = agmVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final avg<?> a(aze azeVar) {
        this.h = azeVar;
        return this;
    }

    protected abstract bbg<T> a(atf atfVar);

    final void a(axc axcVar) {
        synchronized (this.e) {
            this.o = axcVar;
        }
    }

    final void a(bbg<?> bbgVar) {
        axc axcVar;
        synchronized (this.e) {
            axcVar = this.o;
        }
        if (axcVar != null) {
            axcVar.a(this, bbgVar);
        }
    }

    public final void a(df dfVar) {
        bch bchVar;
        synchronized (this.e) {
            bchVar = this.f;
        }
        if (bchVar != null) {
            bchVar.a(dfVar);
        }
    }

    protected abstract void a(T t);

    public byte[] a() throws a {
        return null;
    }

    public Map<String, String> b() throws a {
        return Collections.emptyMap();
    }

    public final void b(String str) {
        if (eb.a.f4949a) {
            this.f4533a.a(str, Thread.currentThread().getId());
        }
    }

    public final int c() {
        return this.f4534b;
    }

    final void c(String str) {
        if (this.h != null) {
            this.h.b(this);
        }
        if (eb.a.f4949a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new awg(this, str, id));
            } else {
                this.f4533a.a(str, id);
                this.f4533a.a(toString());
            }
        }
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        avg avgVar = (avg) obj;
        ayd aydVar = ayd.NORMAL;
        ayd aydVar2 = ayd.NORMAL;
        return aydVar == aydVar2 ? this.g.intValue() - avgVar.g.intValue() : aydVar2.ordinal() - aydVar.ordinal();
    }

    public final int d() {
        return this.f4536d;
    }

    public final String e() {
        return this.f4535c;
    }

    public final agm f() {
        return this.n;
    }

    public final boolean g() {
        synchronized (this.e) {
        }
        return false;
    }

    public final boolean h() {
        return this.i;
    }

    public final int i() {
        return this.m.a();
    }

    public final ac j() {
        return this.m;
    }

    public final void k() {
        synchronized (this.e) {
            this.k = true;
        }
    }

    public final boolean l() {
        boolean z;
        synchronized (this.e) {
            z = this.k;
        }
        return z;
    }

    final void m() {
        axc axcVar;
        synchronized (this.e) {
            axcVar = this.o;
        }
        if (axcVar != null) {
            axcVar.a(this);
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(Integer.toHexString(this.f4536d));
        String strConcat = strValueOf.length() != 0 ? "0x".concat(strValueOf) : new String("0x");
        String str = this.f4535c;
        String strValueOf2 = String.valueOf(ayd.NORMAL);
        String strValueOf3 = String.valueOf(this.g);
        return new StringBuilder(String.valueOf("[ ] ").length() + 3 + String.valueOf(str).length() + String.valueOf(strConcat).length() + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append("[ ] ").append(str).append(" ").append(strConcat).append(" ").append(strValueOf2).append(" ").append(strValueOf3).toString();
    }
}
