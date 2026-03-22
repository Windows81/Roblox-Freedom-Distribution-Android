package com.roblox.client.e;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.chat.a.d f6887a;

    public g(com.roblox.client.chat.a.d dVar) {
        this.f6887a = dVar;
    }

    public long a() {
        if (this.f6887a != null) {
            return this.f6887a.c();
        }
        return -1L;
    }

    public boolean b() {
        return this.f6887a != null;
    }

    public boolean c() {
        return !"OneToOneConversation".equals(this.f6887a.i());
    }
}
