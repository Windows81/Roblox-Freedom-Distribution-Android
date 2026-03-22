package com.roblox.client.http;

import c.ad;
import com.roblox.platform.http.postbody.notifications.PushMarkCategoryAsReadPostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o {
    public void a(String str, String str2, String str3) {
        com.roblox.platform.i.a().c().a(new PushMarkCategoryAsReadPostBody(str, str2, str3)).a(new e.d<ad>() { // from class: com.roblox.client.http.o.1
            @Override // e.d
            public void a(e.b<ad> bVar, e.l<ad> lVar) {
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
            }
        });
    }
}
