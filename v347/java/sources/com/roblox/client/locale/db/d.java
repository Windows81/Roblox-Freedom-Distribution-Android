package com.roblox.client.locale.db;

import android.content.Context;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.db.room.StringsDB;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f7372a;

    public static d a() {
        if (f7372a == null) {
            synchronized (d.class) {
                if (f7372a == null) {
                    f7372a = new d();
                }
            }
        }
        return f7372a;
    }

    d() {
    }

    public void a(Context context, HashMap<String, String> map, com.roblox.client.locale.c cVar) {
        a(new c(StringsDB.a(context), map, cVar));
    }

    void a(c cVar) {
        cVar.a();
    }

    public void a(Context context, com.roblox.client.locale.c cVar, b.a aVar) {
        a(new b(StringsDB.a(context), cVar, aVar));
    }

    void a(b bVar) {
        bVar.a();
    }

    public void a(Context context, a.InterfaceC0116a interfaceC0116a) {
        a(new a(StringsDB.a(context), interfaceC0116a));
    }

    void a(a aVar) {
        aVar.a();
    }
}
