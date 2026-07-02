package com.roblox.client.locale.c;

import android.content.Context;
import com.roblox.client.locale.c;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.db.d;
import com.roblox.client.locale.e;
import com.roblox.client.util.g;
import com.roblox.client.util.h;
import java.util.Calendar;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f7358a = 0;

    public void a(final Context context, boolean z) {
        if (z || a()) {
            f7358a = b();
            new com.roblox.client.locale.a.b().a(context, com.roblox.client.locale.a.a().b(), new e() { // from class: com.roblox.client.locale.c.a.1
                @Override // com.roblox.client.locale.e
                public void a(HashMap<String, String> map, c cVar) {
                    a.this.b(context, map, cVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, HashMap<String, String> map, c cVar) {
        a(map, cVar);
        a(context, map, cVar);
    }

    private boolean a() {
        return b() - f7358a > com.roblox.client.b.l();
    }

    private long b() {
        return Calendar.getInstance().getTime().getTime();
    }

    public void a(Context context, a.InterfaceC0116a interfaceC0116a) {
        a(context, d.a(), interfaceC0116a);
    }

    void a(Context context, d dVar, a.InterfaceC0116a interfaceC0116a) {
        if (context != null && h.c(context)) {
            g.a("rbx.locale", "App updated");
            h.d(context);
            dVar.a(context, interfaceC0116a);
        } else {
            g.a("rbx.locale", "No app upgrade");
            interfaceC0116a.a();
        }
    }

    public void a(Context context, c cVar, b.a aVar) {
        a(context, cVar, d.a(), aVar);
    }

    void a(Context context, c cVar, d dVar, b.a aVar) {
        if (context != null) {
            dVar.a(context, cVar, aVar);
        } else {
            g.a("rbx.locale", "Context is null");
        }
    }

    public void a(HashMap<String, String> map, c cVar) {
        com.roblox.client.locale.h.a().a(map, cVar);
    }

    void a(Context context, HashMap<String, String> map, c cVar) {
        d.a().a(context, map, cVar);
    }
}
