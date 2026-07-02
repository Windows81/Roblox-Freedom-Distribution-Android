package com.b.a.a;

import com.b.a.a.j.a;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2399a = TimeUnit.MILLISECONDS.toNanos(10000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final l f2400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.b.a.a.g.g f2401c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.a.g.c f2402d = new com.b.a.a.g.c();
    private Thread e;

    public k(com.b.a.a.c.a aVar) {
        this.f2401c = new com.b.a.a.g.g(aVar.m(), this.f2402d);
        this.f2400b = new l(aVar, this.f2401c, this.f2402d);
        this.e = new Thread(this.f2400b, "job-manager");
        if (aVar.o() != null) {
            aVar.o().a(aVar.a(), a());
        }
        this.e.start();
    }

    private a.InterfaceC0052a a() {
        return new a.InterfaceC0052a() { // from class: com.b.a.a.k.1
        };
    }

    public void a(i iVar) {
        com.b.a.a.g.a.a aVar = (com.b.a.a.g.a.a) this.f2402d.a(com.b.a.a.g.a.a.class);
        aVar.a(iVar);
        this.f2401c.a(aVar);
    }
}
