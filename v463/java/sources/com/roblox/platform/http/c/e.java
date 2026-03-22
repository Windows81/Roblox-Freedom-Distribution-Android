package com.roblox.platform.http.c;

import c.ad;
import com.roblox.platform.http.postbody.chat.MarkAsReadPostBody;
import com.roblox.platform.http.postbody.chat.SendMessagePostBody;
import e.b.o;
import e.b.t;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface e {
    @o(a = "/v2/mark-as-read")
    e.b<ad> a(@e.b.a MarkAsReadPostBody markAsReadPostBody);

    @o(a = "/v2/send-message")
    e.b<ad> a(@e.b.a SendMessagePostBody sendMessagePostBody);

    @e.b.f(a = "/v2/get-rollout-settings")
    e.b<ad> a(@t(a = "featureNames") List<String> list);
}
