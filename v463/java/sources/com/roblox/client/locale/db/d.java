package com.roblox.client.locale.db;

import android.content.Context;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.db.room.StringsDB;
import com.roblox.client.locale.f;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f6491a;

    public static d a() {
        if (f6491a == null) {
            synchronized (d.class) {
                if (f6491a == null) {
                    f6491a = new d();
                }
            }
        }
        return f6491a;
    }

    d() {
    }

    public void a(Context context, HashMap<String, String> map, f fVar) {
        a(new c(StringsDB.a(context), map, fVar));
    }

    void a(c cVar) {
        cVar.a();
    }

    public void a(Context context, f fVar, b.a aVar) {
        a(new b(StringsDB.a(context), fVar, aVar));
    }

    void a(b bVar) {
        bVar.a();
    }

    public void a(Context context, a.InterfaceC0156a interfaceC0156a) {
        a(new a(StringsDB.a(context), interfaceC0156a));
    }

    void a(a aVar) {
        aVar.a();
    }
}
