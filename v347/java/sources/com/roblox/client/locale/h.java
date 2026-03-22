package com.roblox.client.locale;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static h f7396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<c, HashMap<String, String>> f7397b = new HashMap<>();

    public static h a() {
        if (f7396a == null) {
            synchronized (h.class) {
                if (f7396a == null) {
                    f7396a = new h();
                }
            }
        }
        return f7396a;
    }

    h() {
    }

    private HashMap<String, String> a(c cVar) {
        HashMap<String, String> map = this.f7397b.get(cVar);
        if (map == null) {
            HashMap<String, String> map2 = new HashMap<>();
            this.f7397b.put(cVar, map2);
            return map2;
        }
        return map;
    }

    public synchronized String a(String str, c cVar) {
        return a(cVar).get(str);
    }

    public synchronized void a(HashMap<String, String> map, c cVar) {
        if (cVar != null && map != null) {
            if (!map.isEmpty()) {
                a(cVar).putAll(map);
            }
        }
    }
}
