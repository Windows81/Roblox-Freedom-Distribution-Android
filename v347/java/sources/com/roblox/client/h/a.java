package com.roblox.client.h;

import b.ac;
import com.roblox.client.e.u;
import com.roblox.client.e.x;
import com.roblox.client.h.t;
import java.util.ArrayList;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class a extends t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7018d;
    private int e;
    private String f;
    private boolean g;
    private InterfaceC0106a h;

    /* JADX INFO: renamed from: com.roblox.client.h.a$a, reason: collision with other inner class name */
    public interface InterfaceC0106a {
        void a(ArrayList<com.roblox.client.chat.a.h> arrayList);
    }

    public a(com.b.a.a.o oVar, long j, int i, String str, boolean z, InterfaceC0106a interfaceC0106a) {
        super(oVar);
        this.f7018d = j;
        this.e = i;
        this.f = str;
        this.g = z;
        this.h = interfaceC0106a;
    }

    @Override // com.b.a.a.i
    public void g() throws Throwable {
        d.l<ac> lVarA = com.roblox.platform.g.a().b().a(this.f7018d, this.e, this.f).a();
        String strG = lVarA.d().g();
        if (lVarA.a() == 403) {
            com.roblox.client.chat.a.a.a().b(this.f7018d);
            org.greenrobot.eventbus.c.a().c(new u(this.f7018d));
            return;
        }
        com.roblox.client.util.g.a(com.roblox.client.chat.a.f6496a, "payload:" + strG);
        com.roblox.client.e.f fVar = new com.roblox.client.e.f();
        fVar.a(this.f7018d);
        fVar.a(this.g);
        JSONArray jSONArray = new JSONArray(strG);
        int length = jSONArray.length();
        ArrayList<com.roblox.client.chat.a.h> arrayList = new ArrayList<>(length);
        fVar.a(arrayList);
        if (length > 0) {
            com.roblox.client.chat.a.h hVarD = com.roblox.client.chat.a.a.a().d(this.f7018d);
            Boolean boolValueOf = hVarD != null ? Boolean.valueOf(hVarD.k()) : null;
            for (int i = length - 1; i >= 0; i--) {
                arrayList.add(new com.roblox.client.chat.a.h(jSONArray.getJSONObject(i)));
            }
            com.roblox.client.chat.a.a.a().a(this.f7018d, arrayList);
            com.roblox.client.chat.a.h hVar = arrayList.get(arrayList.size() - 1);
            boolean zK = hVar.k();
            if (com.roblox.client.chat.a.a.a().a(this.f7018d, hVar)) {
                if (this.g) {
                    com.roblox.client.chat.a.a.a().e(this.f7018d);
                }
                org.greenrobot.eventbus.c.a().c(new com.roblox.client.e.o(this.f7018d));
                if (boolValueOf == null) {
                    com.roblox.client.i.g.a().a(new r());
                } else if (zK != boolValueOf.booleanValue()) {
                    if (!zK) {
                        org.greenrobot.eventbus.c.a().c(new x(com.roblox.client.chat.a.a.a().e()));
                    } else {
                        org.greenrobot.eventbus.c.a().c(new x(com.roblox.client.chat.a.a.a().d()));
                    }
                }
            }
        }
        a(fVar);
        org.greenrobot.eventbus.c.a().c(fVar);
    }

    private void a(final com.roblox.client.e.f fVar) {
        if (this.h != null) {
            m().post(new Runnable() { // from class: com.roblox.client.h.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.h.a(fVar.c());
                }
            });
        }
    }

    @Override // com.roblox.client.h.t
    protected void a(t.a aVar) {
        com.roblox.client.e.f fVar = new com.roblox.client.e.f();
        a(fVar);
        org.greenrobot.eventbus.c.a().c(fVar);
    }
}
