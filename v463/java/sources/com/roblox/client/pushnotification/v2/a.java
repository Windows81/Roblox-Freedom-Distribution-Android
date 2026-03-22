package com.roblox.client.pushnotification.v2;

import android.content.Context;
import androidx.core.app.i;
import androidx.core.app.l;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements c {
    @Override // com.roblox.client.pushnotification.v2.c
    public void a(Context context, com.roblox.client.pushnotification.v2.a.b bVar) {
        if (context == null || bVar == null) {
            return;
        }
        l.a(context).a(bVar.d(), bVar.i(), b(context, bVar).b());
    }

    protected i.c b(Context context, com.roblox.client.pushnotification.v2.a.b bVar) {
        i.c cVar = new i.c(context, "channel_games");
        cVar.a(bVar.a(context));
        cVar.b(bVar.b(context));
        cVar.d(1);
        cVar.f(1);
        cVar.c(2);
        cVar.a(bVar.c(context));
        cVar.a((CharSequence) bVar.c());
        cVar.b(bVar.a());
        cVar.a(true);
        cVar.b(bVar.b());
        cVar.a(bVar.d(context));
        cVar.a(new i.b().a(bVar.a()));
        return cVar;
    }
}
