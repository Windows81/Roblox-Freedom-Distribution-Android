package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class MarkAsReadPostBody implements PostBody {
    public final long conversationId;
    public final String endMessageId;

    public MarkAsReadPostBody(long j, String str) {
        this.conversationId = j;
        this.endMessageId = str;
    }
}
