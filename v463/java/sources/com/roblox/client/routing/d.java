package com.roblox.client.routing;

import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f6971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<String, String> f6972b;

    public d(c cVar, HashMap<String, String> map) {
        this.f6971a = cVar;
        this.f6972b = map;
    }

    public d(c cVar) {
        this(cVar, new HashMap());
    }

    public HashMap<String, String> a() {
        return this.f6972b;
    }

    public c b() {
        return this.f6971a;
    }
}
