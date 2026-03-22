package com.roblox.client.http;

import android.content.Context;
import c.ad;
import com.roblox.platform.http.postbody.notifications.PushMarkAsReadPostBody;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class p {
    public void a(Context context, String str) {
        com.roblox.platform.i.a().c().a(new PushMarkAsReadPostBody(new com.roblox.client.pushnotification.q().a(context, com.roblox.client.pushnotification.l.a().c(context)), str)).a(new e.d<ad>() { // from class: com.roblox.client.http.p.1
            @Override // e.d
            public void a(e.b<ad> bVar, e.l<ad> lVar) {
            }

            @Override // e.d
            public void a(e.b<ad> bVar, Throwable th) {
            }
        });
    }
}
