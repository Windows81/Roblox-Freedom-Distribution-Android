package com.roblox.client.friends.nearby.b.a;

import com.roblox.client.friends.c.c;
import com.roblox.platform.http.returntypes.NearbyUserResponseBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f6141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6144d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final c f6145e;

    public static String b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? "unknown" : "friends" : "pendingOnMe" : "pendingOnOtherUser" : "noFriendship";
    }

    public a(long j, String str, c cVar) {
        this(j, str, 0, cVar);
    }

    public a(long j, String str, int i, c cVar) {
        this.f6141a = j;
        this.f6142b = str;
        this.f6143c = i;
        this.f6145e = cVar;
    }

    public c a() {
        return this.f6145e;
    }

    public String b() {
        return this.f6144d;
    }

    public long c() {
        return this.f6141a;
    }

    public String d() {
        return this.f6142b;
    }

    public int e() {
        return this.f6143c;
    }

    public void a(int i) {
        this.f6143c = i;
    }

    public void a(String str) {
        this.f6144d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f6141a == aVar.c() || this.f6145e.equals(aVar.a());
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f6142b);
        sb.append(". ");
        sb.append(a() != null ? a().f6061a : "");
        return sb.toString();
    }

    public static a a(NearbyUserResponseBody nearbyUserResponseBody, c cVar) {
        a aVar = new a(nearbyUserResponseBody.userId, nearbyUserResponseBody.username, cVar);
        aVar.a(nearbyUserResponseBody.friendshipStatus);
        return aVar;
    }
}
