package com.roblox.client.chat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class e extends g<d> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d f6510b;

    public e() {
        this(null);
    }

    public e(Object obj) {
        super(obj);
        this.f6510b = new d();
    }

    @Override // com.roblox.client.chat.a.g
    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public boolean b(d dVar, d dVar2) {
        return (dVar == null || dVar2 == null || dVar.c() != dVar2.c()) ? false : true;
    }

    @Override // com.roblox.client.chat.a.g
    /* JADX INFO: renamed from: b, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(d dVar, d dVar2) {
        if (dVar != null) {
            dVar.a(dVar2);
        }
    }

    public void a(long j) {
        this.f6510b.b(j);
        synchronized (this.f6511a) {
            int iB = b(this.f6510b);
            if (iB > 0) {
                add(0, (d) remove(iB));
            }
        }
    }
}
