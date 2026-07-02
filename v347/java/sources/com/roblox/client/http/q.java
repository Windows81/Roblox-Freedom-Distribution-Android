package com.roblox.client.http;

import android.content.Context;
import b.ac;
import com.roblox.platform.http.postbody.notifications.PushMarkAsReadPostBody;

/* JADX INFO: loaded from: classes.dex */
public class q {
    public void a(Context context, String str) {
        com.roblox.platform.g.a().d().a(new PushMarkAsReadPostBody(new com.roblox.client.pushnotification.q().a(context, com.roblox.client.pushnotification.l.a().c(context)), str)).a(new d.d<ac>() { // from class: com.roblox.client.http.q.1
            @Override // d.d
            public void a(d.b<ac> bVar, d.l<ac> lVar) {
            }

            @Override // d.d
            public void a(d.b<ac> bVar, Throwable th) {
            }
        });
    }
}
