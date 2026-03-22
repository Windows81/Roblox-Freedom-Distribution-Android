package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class FriendRequestActionRequestBody implements GsonCompatibleRequestBody {
    private long requesterUserId;

    public FriendRequestActionRequestBody(long j) {
        this.requesterUserId = j;
    }
}
