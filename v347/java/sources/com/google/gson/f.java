package com.google.gson;

import com.google.gson.internal.Excluder;
import com.google.gson.internal.bind.TreeTypeAdapter;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private String h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Excluder f6188a = Excluder.f6193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u f6189b = u.DEFAULT;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f6190c = c.IDENTITY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Type, g<?>> f6191d = new HashMap();
    private final List<w> e = new ArrayList();
    private final List<w> f = new ArrayList();
    private boolean g = false;
    private int i = 2;
    private int j = 2;
    private boolean k = false;
    private boolean l = false;
    private boolean m = true;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;

    public f a(Type type, Object obj) {
        com.google.gson.internal.a.a((obj instanceof s) || (obj instanceof j) || (obj instanceof g) || (obj instanceof v));
        if (obj instanceof g) {
            this.f6191d.put(type, (g) obj);
        }
        if ((obj instanceof s) || (obj instanceof j)) {
            this.e.add(TreeTypeAdapter.b(com.google.gson.b.a.a(type), obj));
        }
        if (obj instanceof v) {
            this.e.add(com.google.gson.internal.bind.i.a(com.google.gson.b.a.a(type), (v) obj));
        }
        return this;
    }

    public e a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.e);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f);
        a(this.h, this.i, this.j, arrayList);
        return new e(this.f6188a, this.f6190c, this.f6191d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f6189b, arrayList);
    }

    private void a(String str, int i, int i2, List<w> list) {
        DefaultDateTypeAdapter defaultDateTypeAdapter;
        if (str != null && !"".equals(str.trim())) {
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(str);
        } else if (i != 2 && i2 != 2) {
            defaultDateTypeAdapter = new DefaultDateTypeAdapter(i, i2);
        } else {
            return;
        }
        list.add(TreeTypeAdapter.a((com.google.gson.b.a<?>) com.google.gson.b.a.b(Date.class), defaultDateTypeAdapter));
        list.add(TreeTypeAdapter.a((com.google.gson.b.a<?>) com.google.gson.b.a.b(Timestamp.class), defaultDateTypeAdapter));
        list.add(TreeTypeAdapter.a((com.google.gson.b.a<?>) com.google.gson.b.a.b(java.sql.Date.class), defaultDateTypeAdapter));
    }
}
