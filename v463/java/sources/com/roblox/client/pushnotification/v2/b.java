package com.roblox.client.pushnotification.v2;

import android.content.Context;
import com.roblox.client.ae.o;
import com.roblox.client.p;
import com.roblox.client.pushnotification.l;
import com.roblox.client.pushnotification.q;
import com.roblox.client.s.c;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    private q a() {
        return new q();
    }

    String a(Context context, String str, q qVar) {
        return qVar.a(context, str);
    }

    public void a(Context context, Map<String, String> map) {
        if (context == null || map == null) {
            return;
        }
        com.roblox.client.s.c.d().a(context, c.b.APP_INIT_TYPE_SHELL);
        com.roblox.client.http.b.a(context);
        String strA = a(context, l.a().c(context), a());
        String strA2 = a(context);
        com.roblox.client.pushnotification.v2.a.b bVarA = new d().a(map);
        p.a("v" + bVarA.e(), strA, bVarA.f(), bVarA.h(), strA2);
        new e().a(bVarA).a(context, bVarA);
    }

    private String a(Context context) {
        return o.a(context);
    }
}
