package com.roblox.client.http.post;

/* JADX INFO: loaded from: classes.dex */
public class FriendRequestActionRequestBody implements GsonCompatibleRequestBody {
    private long requesterUserId;

    public FriendRequestActionRequestBody(long j) {
        this.requesterUserId = j;
    }
}
