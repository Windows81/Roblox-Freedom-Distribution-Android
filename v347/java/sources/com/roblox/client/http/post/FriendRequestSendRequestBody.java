package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class FriendRequestSendRequestBody implements GsonCompatibleRequestBody {
    private long recipientUserId;

    public FriendRequestSendRequestBody(long j) {
        this.recipientUserId = j;
    }
}
