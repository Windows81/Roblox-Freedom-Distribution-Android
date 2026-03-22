package com.roblox.client.realtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, ArrayList<g>> f6951a = new HashMap<>();

    public void a(String str, g gVar) {
        if (this.f6951a.containsKey(str)) {
            this.f6951a.get(str).add(gVar);
            return;
        }
        ArrayList<g> arrayList = new ArrayList<>();
        arrayList.add(gVar);
        this.f6951a.put(str, arrayList);
    }

    @Override // com.roblox.client.realtime.g
    public boolean a(String str, String str2) {
        ArrayList<g> arrayList = this.f6951a.get(str);
        boolean zA = false;
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<g> it = arrayList.iterator();
            while (it.hasNext()) {
                zA |= it.next().a(str, str2);
            }
        }
        return zA;
    }
}
