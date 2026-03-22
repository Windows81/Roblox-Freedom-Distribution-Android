package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RenameGroupConversationPostBody implements PostBody {
    public final long conversationId;
    public final String newTitle;

    public RenameGroupConversationPostBody(long j, String str) {
        this.conversationId = j;
        this.newTitle = str;
    }
}
