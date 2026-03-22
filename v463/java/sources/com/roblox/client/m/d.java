package com.roblox.client.m;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, a> f6600a = new HashMap<>();

    @Override // com.roblox.client.m.b
    public a a(String str) {
        return this.f6600a.get(str);
    }

    @Override // com.roblox.client.m.b
    public Set<Map.Entry<String, a>> a() {
        return this.f6600a.entrySet();
    }

    protected void a(String str, a aVar) {
        this.f6600a.put(str, aVar);
    }
}
