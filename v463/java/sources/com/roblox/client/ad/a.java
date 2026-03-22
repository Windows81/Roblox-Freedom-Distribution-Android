package com.roblox.client.ad;

import com.roblox.client.http.g;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.m;
import com.roblox.client.u;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f5614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f5615b = true;

    public a(m mVar) {
        this.f5614a = mVar;
    }

    public void a() {
        this.f5615b = false;
    }

    public void b() {
        com.roblox.client.http.c cVarA = g.a().a(u.x(), null, new i() { // from class: com.roblox.client.ad.a.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                if (a.this.f5614a != null) {
                    a.this.f5614a.a(jVar);
                }
            }
        });
        if (this.f5615b) {
            cVarA.a(new C0121a());
        }
        cVarA.c();
    }

    /* JADX INFO: renamed from: com.roblox.client.ad.a$a, reason: collision with other inner class name */
    private static class C0121a extends com.roblox.client.http.a.b {
        private C0121a() {
        }

        @Override // com.roblox.client.http.a.b, com.roblox.client.http.a.d
        public boolean a(j jVar) {
            return (jVar.b() == 200 || jVar.b() == 401) ? false : true;
        }
    }
}
