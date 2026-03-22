package com.roblox.client.pushnotification;

import android.content.Context;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private HashMap<String, i> f6862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private HashMap<Long, String> f6863b;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final o f6866a = new o();
    }

    public static o a() {
        return b.f6866a;
    }

    private o() {
        this.f6862a = new HashMap<>();
        this.f6863b = new HashMap<>();
        c();
    }

    public i a(String str) {
        if (!this.f6862a.containsKey(str)) {
            this.f6862a.put(str, new a(str));
        }
        return this.f6862a.get(str);
    }

    public i b(String str) {
        return this.f6862a.get(str);
    }

    public i a(String str, long j) {
        if (!this.f6862a.containsKey(str)) {
            this.f6862a.put(str, new com.roblox.client.pushnotification.b(j));
        }
        return this.f6862a.get(str);
    }

    public void c(String str) {
        this.f6862a.remove(str);
    }

    public void b() {
        this.f6863b.clear();
        this.f6862a.clear();
        c();
    }

    public void c() {
        this.f6862a.put("FriendRequestReceived", new f());
        this.f6862a.put("FriendRequestAccepted", new e());
        this.f6862a.put("PrivateMessageReceived", new k());
    }

    public String a(long j, String str) {
        return this.f6863b.put(Long.valueOf(j), str);
    }

    public String a(long j) {
        return this.f6863b.get(Long.valueOf(j));
    }

    private class a implements i {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f6865b;

        public a(String str) {
            this.f6865b = str;
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, com.roblox.client.pushnotification.b.m mVar) {
            com.roblox.client.ae.k.e("rbx.push", "PNS put() unknown type: " + this.f6865b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, String str) {
            com.roblox.client.ae.k.e("rbx.push", "PNS expireById() unknown type: " + this.f6865b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void a(Context context, long j) {
            com.roblox.client.ae.k.e("rbx.push", "PNS expireToDate() unknown type: " + this.f6865b);
        }

        @Override // com.roblox.client.pushnotification.i
        public void b() {
            com.roblox.client.ae.k.e("rbx.push", "PNS clear() unknown type: " + this.f6865b);
        }
    }
}
