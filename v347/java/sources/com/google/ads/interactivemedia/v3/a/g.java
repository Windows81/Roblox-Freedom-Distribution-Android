package com.google.ads.interactivemedia.v3.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private boolean g;
    private String h;
    private boolean k;
    private boolean l;
    private boolean n;
    private boolean o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.ads.interactivemedia.v3.a.b.d f2754a = com.google.ads.interactivemedia.v3.a.b.d.f2689a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u f2755b = u.DEFAULT;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f2756c = d.IDENTITY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Type, h<?>> f2757d = new HashMap();
    private final List<x> e = new ArrayList();
    private final List<x> f = new ArrayList();
    private int i = 2;
    private int j = 2;
    private boolean m = true;

    public g a(b bVar) {
        this.f2754a = this.f2754a.a(bVar, true, false);
        return this;
    }

    public g a(Type type, Object obj) {
        com.google.ads.interactivemedia.v3.a.b.a.a((obj instanceof s) || (obj instanceof k) || (obj instanceof h) || (obj instanceof w));
        if (obj instanceof h) {
            this.f2757d.put(type, (h) obj);
        }
        if ((obj instanceof s) || (obj instanceof k)) {
            this.e.add(v.b(com.google.ads.interactivemedia.v3.a.c.a.a(type), obj));
        }
        if (obj instanceof w) {
            this.e.add(com.google.ads.interactivemedia.v3.a.b.a.m.a(com.google.ads.interactivemedia.v3.a.c.a.a(type), (w) obj));
        }
        return this;
    }

    public g a(x xVar) {
        this.e.add(xVar);
        return this;
    }

    public f a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f);
        a(this.h, this.i, this.j, arrayList);
        return new f(this.f2754a, this.f2756c, this.f2757d, this.g, this.k, this.o, this.m, this.n, this.l, this.f2755b, arrayList);
    }

    private void a(String str, int i, int i2, List<x> list) {
        a aVar;
        if (str != null && !"".equals(str.trim())) {
            aVar = new a(str);
        } else if (i != 2 && i2 != 2) {
            aVar = new a(i, i2);
        } else {
            return;
        }
        list.add(v.a(com.google.ads.interactivemedia.v3.a.c.a.b(Date.class), aVar));
        list.add(v.a(com.google.ads.interactivemedia.v3.a.c.a.b(Timestamp.class), aVar));
        list.add(v.a(com.google.ads.interactivemedia.v3.a.c.a.b(java.sql.Date.class), aVar));
    }
}
