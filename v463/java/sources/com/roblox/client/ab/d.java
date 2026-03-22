package com.roblox.client.ab;

import androidx.lifecycle.j;
import androidx.lifecycle.q;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f5595a;

    public interface a {
        void a(e eVar);
    }

    public d(a aVar) {
        this.f5595a = aVar;
    }

    public void a(j jVar) {
        com.roblox.client.ad.c.a().n().a(jVar, new q<e>() { // from class: com.roblox.client.ab.d.1
            @Override // androidx.lifecycle.q
            public void a(e eVar) {
                a aVar = d.this.f5595a;
                if (eVar == null) {
                    eVar = com.roblox.client.ad.c.f5620a;
                }
                aVar.a(eVar);
            }
        });
    }
}
