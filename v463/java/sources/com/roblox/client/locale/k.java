package com.roblox.client.locale;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static k f6521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<f, HashMap<String, String>> f6522b = new HashMap<>();

    public static k a() {
        if (f6521a == null) {
            synchronized (k.class) {
                if (f6521a == null) {
                    f6521a = new k();
                }
            }
        }
        return f6521a;
    }

    k() {
    }

    private HashMap<String, String> a(f fVar) {
        HashMap<String, String> map = this.f6522b.get(fVar);
        if (map != null) {
            return map;
        }
        HashMap<String, String> map2 = new HashMap<>();
        this.f6522b.put(fVar, map2);
        return map2;
    }

    public synchronized String a(String str, f fVar) {
        return a(fVar).get(str);
    }

    public synchronized void a(HashMap<String, String> map, f fVar) {
        if (fVar != null && map != null) {
            if (!map.isEmpty()) {
                a(fVar).putAll(map);
            }
        }
    }
}
