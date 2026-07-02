package com.roblox.client.http;

import b.ac;
import com.roblox.platform.http.postbody.notifications.PushMarkCategoryAsReadPostBody;

/* JADX INFO: loaded from: classes.dex */
public class p {
    public void a(String str, String str2, String str3) {
        com.roblox.platform.g.a().d().a(new PushMarkCategoryAsReadPostBody(str, str2, str3)).a(new d.d<ac>() { // from class: com.roblox.client.http.p.1
            @Override // d.d
            public void a(d.b<ac> bVar, d.l<ac> lVar) {
            }

            @Override // d.d
            public void a(d.b<ac> bVar, Throwable th) {
            }
        });
    }
}
