package com.roblox.client.q;

import com.roblox.client.RobloxSettings;
import com.roblox.client.http.g;
import com.roblox.client.http.i;
import com.roblox.client.http.j;
import com.roblox.client.http.m;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final m f7721a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7722b = true;

    public b(m mVar) {
        this.f7721a = mVar;
    }

    public void a() {
        this.f7722b = false;
    }

    public void b() {
        com.roblox.client.http.c cVarA = g.a().a(RobloxSettings.accountInfoApiUrl(), null, new i() { // from class: com.roblox.client.q.b.1
            @Override // com.roblox.client.http.i, com.roblox.client.http.l
            public void a(j jVar) {
                if (b.this.f7721a != null) {
                    b.this.f7721a.a(jVar);
                }
            }
        });
        if (this.f7722b) {
            cVarA.a(new a());
        }
        cVarA.c();
    }

    private static class a extends com.roblox.client.http.a.b {
        private a() {
        }

        @Override // com.roblox.client.http.a.b, com.roblox.client.http.a.d
        public boolean a(j jVar) {
            return (jVar.b() == 200 || jVar.b() == 401) ? false : true;
        }
    }
}
