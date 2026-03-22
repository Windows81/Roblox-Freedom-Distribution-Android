package com.roblox.client.locale.d;

import android.content.Context;
import com.roblox.client.ae.k;
import com.roblox.client.ae.l;
import com.roblox.client.locale.db.a;
import com.roblox.client.locale.db.b;
import com.roblox.client.locale.db.d;
import com.roblox.client.locale.f;
import com.roblox.client.locale.h;
import java.util.Calendar;
import java.util.HashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static long f6477a;

    public void a(final Context context, boolean z) {
        if (z || a()) {
            f6477a = b();
            new com.roblox.client.locale.b.b().a(context, com.roblox.client.locale.b.a().b(), new h() { // from class: com.roblox.client.locale.d.a.1
                @Override // com.roblox.client.locale.h
                public void a(HashMap<String, String> map, f fVar) {
                    a.this.b(context, map, fVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context, HashMap<String, String> map, f fVar) {
        a(map, fVar);
        a(context, map, fVar);
    }

    private boolean a() {
        return b() - f6477a > com.roblox.client.b.h();
    }

    private long b() {
        return Calendar.getInstance().getTime().getTime();
    }

    public void a(Context context, a.InterfaceC0156a interfaceC0156a) {
        a(context, d.a(), interfaceC0156a);
    }

    void a(Context context, d dVar, a.InterfaceC0156a interfaceC0156a) {
        if (context != null && l.c(context)) {
            k.a("rbx.locale", "App updated");
            l.d(context);
            dVar.a(context, interfaceC0156a);
        } else {
            k.a("rbx.locale", "No app upgrade");
            interfaceC0156a.a();
        }
    }

    public void a(Context context, f fVar, b.a aVar) {
        a(context, fVar, d.a(), aVar);
    }

    void a(Context context, f fVar, d dVar, b.a aVar) {
        if (context != null) {
            dVar.a(context, fVar, aVar);
        } else {
            k.a("rbx.locale", "Context is null");
        }
    }

    public void a(HashMap<String, String> map, f fVar) {
        com.roblox.client.locale.k.a().a(map, fVar);
    }

    void a(Context context, HashMap<String, String> map, f fVar) {
        d.a().a(context, map, fVar);
    }
}
