package com.roblox.client.ab;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.ab.a.a f5592a = new com.roblox.client.ab.a.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f5593b;

    public interface a {
        void a(e eVar);
    }

    public void a(a aVar) {
        this.f5593b = aVar;
        if (com.roblox.client.b.bw()) {
            this.f5592a.a(com.roblox.client.ad.c.a().d(), new com.roblox.client.ab.a() { // from class: com.roblox.client.ab.b.1
                @Override // com.roblox.client.ab.a
                public void a(String str) {
                    e eVarA = e.a(str);
                    com.roblox.client.ad.c.a().a(eVarA);
                    b.this.a(eVarA);
                }
            });
        } else {
            a((e) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(e eVar) {
        a aVar = this.f5593b;
        if (aVar != null) {
            aVar.a(eVar);
        }
    }
}
