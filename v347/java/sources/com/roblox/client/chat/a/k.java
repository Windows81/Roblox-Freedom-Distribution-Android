package com.roblox.client.chat.a;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class k extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<Long> f6522b;

    public k(ArrayList<Long> arrayList) {
        this.f6522b = arrayList;
        if (arrayList.size() > 0) {
            c(arrayList.get(0).longValue());
            d("Typing...");
        }
        g("User");
        a(true);
        this.f6515a = true;
        a(System.currentTimeMillis());
        b(Long.MAX_VALUE);
    }
}
