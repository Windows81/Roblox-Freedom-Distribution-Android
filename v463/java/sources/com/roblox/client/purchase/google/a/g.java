package com.roblox.client.purchase.google.a;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Map<String, j> f6731a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Map<String, h> f6732b = new HashMap();

    public j a(String str) {
        return this.f6731a.get(str);
    }

    List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        for (h hVar : this.f6732b.values()) {
            if (hVar.a().equals(str)) {
                arrayList.add(hVar.d());
            }
        }
        return arrayList;
    }

    public List<h> a() {
        return new ArrayList(this.f6732b.values());
    }

    public void a(j jVar) {
        this.f6731a.put(jVar.a(), jVar);
    }

    public void a(h hVar) {
        this.f6732b.put(hVar.d(), hVar);
    }
}
