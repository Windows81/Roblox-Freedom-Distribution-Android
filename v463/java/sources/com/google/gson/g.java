package com.google.gson;

import com.google.gson.internal.Excluder;
import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g {
    private String h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Excluder f5342a = Excluder.f5348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private u f5343b = u.DEFAULT;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e f5344c = d.IDENTITY;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Type, h<?>> f5345d = new HashMap();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<w> f5346e = new ArrayList();
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

    public g a(d dVar) {
        this.f5344c = dVar;
        return this;
    }

    public f a() {
        List<w> arrayList = new ArrayList<>(this.f5346e.size() + this.f.size() + 3);
        arrayList.addAll(this.f5346e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        a(this.h, this.i, this.j, arrayList);
        return new f(this.f5342a, this.f5344c, this.f5345d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.f5343b, this.h, this.i, this.j, this.f5346e, this.f, arrayList);
    }

    private void a(String str, int i, int i2, List<w> list) {
        a aVar;
        a aVar2;
        a aVar3;
        if (str != null && !"".equals(str.trim())) {
            aVar = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
        } else {
            if (i == 2 || i2 == 2) {
                return;
            }
            a aVar4 = new a(Date.class, i, i2);
            a aVar5 = new a(Timestamp.class, i, i2);
            a aVar6 = new a(java.sql.Date.class, i, i2);
            aVar = aVar4;
            aVar2 = aVar5;
            aVar3 = aVar6;
        }
        list.add(com.google.gson.internal.bind.i.a(Date.class, aVar));
        list.add(com.google.gson.internal.bind.i.a(Timestamp.class, aVar2));
        list.add(com.google.gson.internal.bind.i.a(java.sql.Date.class, aVar3));
    }
}
