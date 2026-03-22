package com.roblox.platform.http.postbody.chat;

import com.roblox.platform.http.postbody.PostBody;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class StartGroupConversationPostBody implements PostBody {
    public final ArrayList<Long> participantUserIds;

    public StartGroupConversationPostBody(ArrayList<Long> arrayList) {
        this.participantUserIds = arrayList;
    }
}
