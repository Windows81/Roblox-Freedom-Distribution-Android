package com.roblox.platform.http.returntypes;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NearbyUserResponseBody implements ResponseBody {
    public final int friendshipStatus;
    public final long userId;
    public final String username;

    public NearbyUserResponseBody(long j, String str, int i) {
        this.userId = j;
        this.username = str;
        this.friendshipStatus = i;
    }
}
