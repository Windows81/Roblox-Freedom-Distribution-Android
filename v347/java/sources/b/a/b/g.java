package b.a.b;

import b.a.c.p;
import b.a.d.h;
import b.ad;
import b.j;
import b.w;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b.a f1779a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ad f1780b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f1781c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f1782d;
    private int e;
    private c f;
    private boolean g;
    private boolean h;
    private h i;

    public g(j jVar, b.a aVar) {
        this.f1781c = jVar;
        this.f1779a = aVar;
        this.f1782d = new f(aVar, g());
    }

    public h a(w wVar, boolean z) throws Throwable {
        h cVar;
        int iA = wVar.a();
        int iB = wVar.b();
        int iC = wVar.c();
        try {
            c cVarA = a(iA, iB, iC, wVar.r(), z);
            if (cVarA.f1769b != null) {
                cVar = new b.a.d.d(wVar, this, cVarA.f1769b);
            } else {
                cVarA.d().setSoTimeout(iB);
                cVarA.f1771d.a().a(iB, TimeUnit.MILLISECONDS);
                cVarA.e.a().a(iC, TimeUnit.MILLISECONDS);
                cVar = new b.a.d.c(wVar, this, cVarA.f1771d, cVarA.e);
            }
            synchronized (this.f1781c) {
                this.i = cVar;
            }
            return cVar;
        } catch (IOException e) {
            throw new e(e);
        }
    }

    private c a(int i, int i2, int i3, boolean z, boolean z2) throws Throwable {
        c cVarA;
        while (true) {
            cVarA = a(i, i2, i3, z);
            synchronized (this.f1781c) {
                if (cVarA.f1770c != 0) {
                    if (cVarA.a(z2)) {
                        break;
                    }
                    d();
                } else {
                    break;
                }
            }
        }
        return cVarA;
    }

    private c a(int i, int i2, int i3, boolean z) throws Throwable {
        ad adVar;
        synchronized (this.f1781c) {
            if (this.g) {
                throw new IllegalStateException("released");
            }
            if (this.i != null) {
                throw new IllegalStateException("stream != null");
            }
            if (this.h) {
                throw new IOException("Canceled");
            }
            c cVarA = this.f;
            if (cVarA == null || cVarA.h) {
                cVarA = b.a.a.f1737a.a(this.f1781c, this.f1779a, this);
                if (cVarA != null) {
                    this.f = cVarA;
                } else {
                    ad adVar2 = this.f1780b;
                    if (adVar2 == null) {
                        ad adVarB = this.f1782d.b();
                        synchronized (this.f1781c) {
                            this.f1780b = adVarB;
                            this.e = 0;
                        }
                        adVar = adVarB;
                    } else {
                        adVar = adVar2;
                    }
                    cVarA = new c(adVar);
                    a(cVarA);
                    synchronized (this.f1781c) {
                        b.a.a.f1737a.b(this.f1781c, cVarA);
                        this.f = cVarA;
                        if (this.h) {
                            throw new IOException("Canceled");
                        }
                    }
                    cVarA.a(i, i2, i3, this.f1779a.f(), z);
                    g().b(cVarA.a());
                }
            }
            return cVarA;
        }
    }

    public void a(boolean z, h hVar) {
        synchronized (this.f1781c) {
            if (hVar != null) {
                if (hVar == this.i) {
                    if (!z) {
                        this.f.f1770c++;
                    }
                }
            }
            throw new IllegalStateException("expected " + this.i + " but was " + hVar);
        }
        a(z, false, true);
    }

    public h a() {
        h hVar;
        synchronized (this.f1781c) {
            hVar = this.i;
        }
        return hVar;
    }

    private d g() {
        return b.a.a.f1737a.a(this.f1781c);
    }

    public synchronized c b() {
        return this.f;
    }

    public void c() {
        a(false, true, false);
    }

    public void d() {
        a(true, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000b A[Catch: all -> 0x005a, TryCatch #0 {, blocks: (B:6:0x0007, B:8:0x000b, B:9:0x000e, B:12:0x0014, B:13:0x0019, B:15:0x001d, B:17:0x0021, B:19:0x0027, B:21:0x0036, B:23:0x004a, B:24:0x004c, B:25:0x004f), top: B:32:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(boolean r7, boolean r8, boolean r9) {
        /*
            r6 = this;
            r0 = 0
            b.j r1 = r6.f1781c
            monitor-enter(r1)
            if (r9 == 0) goto L9
            r2 = 0
            r6.i = r2     // Catch: java.lang.Throwable -> L5a
        L9:
            if (r8 == 0) goto Le
            r2 = 1
            r6.g = r2     // Catch: java.lang.Throwable -> L5a
        Le:
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto L4f
            if (r7 == 0) goto L19
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            r3 = 1
            r2.h = r3     // Catch: java.lang.Throwable -> L5a
        L19:
            b.a.d.h r2 = r6.i     // Catch: java.lang.Throwable -> L5a
            if (r2 != 0) goto L4f
            boolean r2 = r6.g     // Catch: java.lang.Throwable -> L5a
            if (r2 != 0) goto L27
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            boolean r2 = r2.h     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto L4f
        L27:
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            r6.b(r2)     // Catch: java.lang.Throwable -> L5a
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            java.util.List<java.lang.ref.Reference<b.a.b.g>> r2 = r2.g     // Catch: java.lang.Throwable -> L5a
            boolean r2 = r2.isEmpty()     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto L4c
            b.a.b.c r2 = r6.f     // Catch: java.lang.Throwable -> L5a
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L5a
            r2.i = r4     // Catch: java.lang.Throwable -> L5a
            b.a.a r2 = b.a.a.f1737a     // Catch: java.lang.Throwable -> L5a
            b.j r3 = r6.f1781c     // Catch: java.lang.Throwable -> L5a
            b.a.b.c r4 = r6.f     // Catch: java.lang.Throwable -> L5a
            boolean r2 = r2.a(r3, r4)     // Catch: java.lang.Throwable -> L5a
            if (r2 == 0) goto L4c
            b.a.b.c r0 = r6.f     // Catch: java.lang.Throwable -> L5a
        L4c:
            r2 = 0
            r6.f = r2     // Catch: java.lang.Throwable -> L5a
        L4f:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5a
            if (r0 == 0) goto L59
            java.net.Socket r0 = r0.d()
            b.a.c.a(r0)
        L59:
            return
        L5a:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5a
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: b.a.b.g.a(boolean, boolean, boolean):void");
    }

    public void e() {
        h hVar;
        c cVar;
        synchronized (this.f1781c) {
            this.h = true;
            hVar = this.i;
            cVar = this.f;
        }
        if (hVar != null) {
            hVar.a();
        } else if (cVar != null) {
            cVar.c();
        }
    }

    public void a(IOException iOException) {
        boolean z;
        synchronized (this.f1781c) {
            if (iOException instanceof p) {
                p pVar = (p) iOException;
                if (pVar.f1905a == b.a.c.a.REFUSED_STREAM) {
                    this.e++;
                }
                if (pVar.f1905a != b.a.c.a.REFUSED_STREAM || this.e > 1) {
                    this.f1780b = null;
                    z = true;
                }
                z = false;
            } else {
                if (this.f != null && !this.f.f()) {
                    if (this.f.f1770c == 0) {
                        if (this.f1780b != null && iOException != null) {
                            this.f1782d.a(this.f1780b, iOException);
                        }
                        this.f1780b = null;
                    }
                    z = true;
                }
                z = false;
            }
        }
        a(z, false, true);
    }

    public void a(c cVar) {
        cVar.g.add(new WeakReference(this));
    }

    private void b(c cVar) {
        int size = cVar.g.size();
        for (int i = 0; i < size; i++) {
            if (cVar.g.get(i).get() == this) {
                cVar.g.remove(i);
                return;
            }
        }
        throw new IllegalStateException();
    }

    public boolean f() {
        return this.f1780b != null || this.f1782d.a();
    }

    public String toString() {
        return this.f1779a.toString();
    }
}
