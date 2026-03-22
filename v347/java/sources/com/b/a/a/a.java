package com.b.a.a;

import android.content.Context;
import com.b.a.a.j.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a extends com.b.a.a.j.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f2267a = TimeUnit.SECONDS.toMillis(900);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.b.a.a.j.a f2270d;
    private final com.b.a.a.k.b f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f2268b = f2267a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f2269c = TimeUnit.MILLISECONDS.toNanos(this.f2268b);
    private final List<C0046a> e = new ArrayList();

    public a(com.b.a.a.j.a aVar, com.b.a.a.k.b bVar) {
        this.f2270d = aVar;
        this.f = bVar;
    }

    @Override // com.b.a.a.j.a
    public void a(Context context, a.InterfaceC0052a interfaceC0052a) {
        super.a(context, interfaceC0052a);
        this.f2270d.a(context, new a.InterfaceC0052a() { // from class: com.b.a.a.a.1
        });
    }

    private void c(com.b.a.a.j.b bVar) {
        synchronized (this.e) {
            for (int size = this.e.size() - 1; size >= 0; size--) {
                if (this.e.get(size).f2273b.a().equals(bVar.a())) {
                    this.e.remove(size);
                }
            }
        }
    }

    protected boolean a(com.b.a.a.j.b bVar) {
        boolean z;
        long jA = this.f.a();
        long nanos = TimeUnit.MILLISECONDS.toNanos(bVar.b()) + jA;
        synchronized (this.e) {
            Iterator<C0046a> it = this.e.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (a(it.next(), bVar, nanos)) {
                        z = false;
                        break;
                    }
                } else {
                    long jB = ((bVar.b() / this.f2268b) + 1) * this.f2268b;
                    bVar.a(jB);
                    this.e.add(new C0046a(jA + TimeUnit.MILLISECONDS.toNanos(jB), bVar));
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    private boolean a(C0046a c0046a, com.b.a.a.j.b bVar, long j) {
        if (c0046a.f2273b.c() != bVar.c()) {
            return false;
        }
        long j2 = c0046a.f2272a - j;
        return j2 > 0 && j2 <= this.f2269c;
    }

    @Override // com.b.a.a.j.a
    public void b(com.b.a.a.j.b bVar) {
        if (a(bVar)) {
            this.f2270d.b(bVar);
        }
    }

    @Override // com.b.a.a.j.a
    public void a(com.b.a.a.j.b bVar, boolean z) {
        c(bVar);
        this.f2270d.a(bVar, false);
        if (z) {
            b(bVar);
        }
    }

    @Override // com.b.a.a.j.a
    public void a() {
        synchronized (this.e) {
            this.e.clear();
        }
        this.f2270d.a();
    }

    /* JADX INFO: renamed from: com.b.a.a.a$a, reason: collision with other inner class name */
    private static class C0046a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f2272a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final com.b.a.a.j.b f2273b;

        public C0046a(long j, com.b.a.a.j.b bVar) {
            this.f2272a = j;
            this.f2273b = bVar;
        }
    }
}
