package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: classes.dex */
public class SendMessagePostBody implements PostBody {
    public final long conversationId;
    public final String message;

    public SendMessagePostBody(long j, String str) {
        this.conversationId = j;
        this.message = str;
    }
}
