package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserTypingStatusPostBody implements PostBody {
    public final long conversationId;
    public final boolean isTyping;

    public UpdateUserTypingStatusPostBody(long j, boolean z) {
        this.conversationId = j;
        this.isTyping = z;
    }
}
