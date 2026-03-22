package com.roblox.client.realtime;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, ArrayList<j>> f7767a = new HashMap<>();

    public void a(String str, j jVar) {
        if (this.f7767a.containsKey(str)) {
            this.f7767a.get(str).add(jVar);
            return;
        }
        ArrayList<j> arrayList = new ArrayList<>();
        arrayList.add(jVar);
        this.f7767a.put(str, arrayList);
    }

    @Override // com.roblox.client.realtime.j
    public boolean a(String str, String str2, long j) {
        boolean zA = false;
        ArrayList<j> arrayList = this.f7767a.get(str);
        if (arrayList != null && !arrayList.isEmpty()) {
            Iterator<j> it = arrayList.iterator();
            while (it.hasNext()) {
                zA = it.next().a(str, str2, j) | zA;
            }
        }
        return zA;
    }
}
