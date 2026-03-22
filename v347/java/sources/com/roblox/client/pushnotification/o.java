package com.roblox.client.pushnotification;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, i> f7706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<Long, String> f7707b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final o f7710a = new o();
    }

    public static o a() {
        return b.f7710a;
    }

    private o() {
        this.f7706a = new HashMap<>();
        this.f7707b = new HashMap<>();
        c();
    }

    public i a(String str) {
        if (!this.f7706a.containsKey(str)) {
            this.f7706a.put(str, new a(str));
        }
        return this.f7706a.get(str);
    }

    public i b(String str) {
        return this.f7706a.get(str);
    }

    public i a(String str, long j) {
        if (!this.f7706a.containsKey(str)) {
            this.f7706a.put(str, new com.roblox.client.pushnotification.b(j));
        }
        return this.f7706a.get(str);
    }

    public void c(String str) {
        this.f7706a.remove(str);
    }

    public void b() {
        this.f7707b.clear();
        this.f7706a.clear();
        c();
    }

    public void c() {
        this.f7706a.put("FriendRequestReceived", new f());
        this.f7706a.put("FriendRequestAccepted", new e());
        this.f7706a.put("PrivateMessageReceived", new k());
    }

    public String a(long j, String str) {
        return this.f7707b.put(Long.valueOf(j), str);
    }

    public String a(long j) {
        return this.f7707b.get(Long.valueOf(j));
    }

    private class a implements i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f7709b;

        public a(String str) {
            this.f7709b = str;
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, com.roblox.client.pushnotification.b.m mVar) {
            com.roblox.client.util.g.e("rbx.push", "PNS put() unknown type: " + this.f7709b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, String str) {
            com.roblox.client.util.g.e("rbx.push", "PNS expireById() unknown type: " + this.f7709b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, long j) {
            com.roblox.client.util.g.e("rbx.push", "PNS expireToDate() unknown type: " + this.f7709b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void b() {
            com.roblox.client.util.g.e("rbx.push", "PNS clear() unknown type: " + this.f7709b);
        }
    }
}
