package com.roblox.client.http.post;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SetTagRequestBody implements GsonCompatibleRequestBody {
    private final long targetUserId;
    private final String userTag;

    public SetTagRequestBody(long j, String str) {
        this.targetUserId = j;
        this.userTag = str;
    }
}
