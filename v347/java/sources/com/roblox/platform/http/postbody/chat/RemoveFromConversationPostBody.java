package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class RemoveFromConversationPostBody implements PostBody {
    public final long conversationId;
    public final long participantUserId;

    public RemoveFromConversationPostBody(long j, long j2) {
        this.conversationId = j;
        this.participantUserId = j2;
    }
}
