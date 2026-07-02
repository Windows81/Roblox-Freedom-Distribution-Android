package com.roblox.client.http.post;

/* JADX INFO: loaded from: classes.dex */
public class FriendRequestSendRequestBody implements GsonCompatibleRequestBody {
    private long recipientUserId;

    public FriendRequestSendRequestBody(long j) {
        this.recipientUserId = j;
    }
}
