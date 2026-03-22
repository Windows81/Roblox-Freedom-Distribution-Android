package com.roblox.client.friends.c;

import com.roblox.platform.http.returntypes.TokenResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f6062b;

    public c(String str, long j) {
        this.f6061a = str;
        this.f6062b = j;
    }

    public static c a(TokenResponseBody tokenResponseBody) {
        return new c(tokenResponseBody.code, tokenResponseBody.expires);
    }

    public long a() {
        return this.f6062b;
    }

    public void a(long j) {
        this.f6062b = j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f6061a.equals(((c) obj).f6061a);
    }

    public int hashCode() {
        return this.f6061a.hashCode();
    }
}
