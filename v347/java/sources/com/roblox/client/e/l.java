package com.roblox.client.e;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ArrayList<com.roblox.client.chat.a.m> f6896a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f6897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6898c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6899d;
    private int e;

    public l(ArrayList<com.roblox.client.chat.a.m> arrayList) {
        this.f6896a = arrayList;
    }

    public int a() {
        if (this.f6896a != null) {
            return this.f6896a.size();
        }
        return 0;
    }

    public int b() {
        return this.f6898c;
    }

    public void a(int i) {
        this.f6898c = i;
    }

    public ArrayList<com.roblox.client.chat.a.m> c() {
        return this.f6896a;
    }

    public void b(int i) {
        this.f6897b = i;
    }

    public void c(int i) {
        this.f6899d = i;
    }

    public void d(int i) {
        this.e = i;
    }
}
