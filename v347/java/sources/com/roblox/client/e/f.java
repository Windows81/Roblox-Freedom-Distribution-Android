package com.roblox.client.e;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<com.roblox.client.chat.a.h> f6884a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6885b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6886c;

    public int a() {
        if (this.f6884a != null) {
            return this.f6884a.size();
        }
        return 0;
    }

    public boolean b() {
        return this.f6886c;
    }

    public void a(boolean z) {
        this.f6886c = z;
    }

    public ArrayList<com.roblox.client.chat.a.h> c() {
        return this.f6884a;
    }

    public void a(ArrayList<com.roblox.client.chat.a.h> arrayList) {
        this.f6884a = arrayList;
    }

    public long d() {
        return this.f6885b;
    }

    public void a(long j) {
        this.f6885b = j;
    }
}
