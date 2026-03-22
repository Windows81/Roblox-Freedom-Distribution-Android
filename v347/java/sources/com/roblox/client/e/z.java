package com.roblox.client.e;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<Long> f6920a;

    public z(ArrayList<Long> arrayList) {
        this.f6920a = arrayList;
    }

    public boolean a(long j) {
        if (this.f6920a != null && this.f6920a.size() > 0) {
            Iterator<Long> it = this.f6920a.iterator();
            while (it.hasNext()) {
                if (it.next().longValue() == j) {
                    return true;
                }
            }
        }
        return false;
    }
}
