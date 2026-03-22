package com.b.a.a.g;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final AtomicInteger f2343d = new AtomicInteger(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f2345b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f2346c = null;
    private final c e;

    public j(c cVar, String str) {
        this.e = cVar;
        this.f2344a = str + "_" + f2343d.incrementAndGet();
    }

    b c() {
        b bVar = this.f2345b;
        com.b.a.a.f.b.a("[%s] remove message %s", this.f2344a, bVar);
        if (bVar != null) {
            this.f2345b = bVar.f2328b;
            if (this.f2346c == bVar) {
                this.f2346c = null;
            }
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(b bVar) {
        com.b.a.a.f.b.a("[%s] post message %s", this.f2344a, bVar);
        if (this.f2346c == null) {
            this.f2345b = bVar;
            this.f2346c = bVar;
        } else {
            this.f2346c.f2328b = bVar;
            this.f2346c = bVar;
        }
    }

    protected void b(d dVar) {
        b bVar;
        b bVar2 = null;
        b bVar3 = this.f2345b;
        while (bVar3 != null) {
            if (dVar.a(bVar3)) {
                bVar = bVar3.f2328b;
                a(bVar2, bVar3);
            } else {
                bVar = bVar3.f2328b;
                bVar2 = bVar3;
            }
            bVar3 = bVar;
        }
    }

    private void a(b bVar, b bVar2) {
        if (this.f2346c == bVar2) {
            this.f2346c = bVar;
        }
        if (bVar == null) {
            this.f2345b = bVar2.f2328b;
        } else {
            bVar.f2328b = bVar2.f2328b;
        }
        this.e.a(bVar2);
    }

    public void b() {
        while (this.f2345b != null) {
            b bVar = this.f2345b;
            this.f2345b = bVar.f2328b;
            this.e.a(bVar);
        }
        this.f2346c = null;
    }
}
