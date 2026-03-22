package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AddToConversationPostBody implements PostBody {
    public final long conversationId;
    public final ArrayList<Long> participantUserIds;

    public AddToConversationPostBody(long j, ArrayList<Long> arrayList) {
        this.conversationId = j;
        this.participantUserIds = arrayList;
    }
}
