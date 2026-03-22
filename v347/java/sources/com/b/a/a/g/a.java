package com.b.a.a.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    b f2315a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c f2316b;

    a(c cVar) {
        this.f2316b = cVar;
    }

    Long a(long j, e eVar) {
        com.b.a.a.f.b.a("flushing messages at time %s", Long.valueOf(j));
        while (this.f2315a != null && this.f2315a.f2329c <= j) {
            b bVar = this.f2315a;
            this.f2315a = bVar.f2328b;
            bVar.f2328b = null;
            eVar.a(bVar);
        }
        if (this.f2315a == null) {
            return null;
        }
        com.b.a.a.f.b.a("returning next ready at %d ns", Long.valueOf(this.f2315a.f2329c - j));
        return Long.valueOf(this.f2315a.f2329c);
    }

    void a(b bVar, long j) {
        com.b.a.a.f.b.a("add delayed message %s at time %s", bVar, Long.valueOf(j));
        bVar.f2329c = j;
        if (this.f2315a == null) {
            this.f2315a = bVar;
            return;
        }
        b bVar2 = null;
        b bVar3 = this.f2315a;
        while (bVar3 != null && bVar3.f2329c <= j) {
            bVar2 = bVar3;
            bVar3 = bVar3.f2328b;
        }
        if (bVar2 == null) {
            bVar.f2328b = this.f2315a;
            this.f2315a = bVar;
        } else {
            bVar2.f2328b = bVar;
            bVar.f2328b = bVar3;
        }
    }

    public void a(d dVar) {
        b bVar = null;
        b bVar2 = this.f2315a;
        while (bVar2 != null) {
            boolean zA = dVar.a(bVar2);
            b bVar3 = bVar2.f2328b;
            if (zA) {
                if (bVar == null) {
                    this.f2315a = bVar2.f2328b;
                } else {
                    bVar.f2328b = bVar2.f2328b;
                }
                this.f2316b.a(bVar2);
            } else {
                bVar = bVar2;
            }
            bVar2 = bVar3;
        }
    }
}
