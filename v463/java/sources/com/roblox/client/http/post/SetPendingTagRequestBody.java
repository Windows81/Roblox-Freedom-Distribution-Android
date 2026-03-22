package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SetPendingTagRequestBody implements GsonCompatibleRequestBody {
    private final long targetUserId;
    private final String userTag;

    public SetPendingTagRequestBody(long j, String str) {
        this.targetUserId = j;
        this.userTag = str;
    }
}
