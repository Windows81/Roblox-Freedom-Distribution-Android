package c.a.b;

import c.a.c.p;
import c.a.d.h;
import c.ae;
import c.j;
import c.x;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c.a f2486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ae f2487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j f2488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f2489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2490e;
    private c f;
    private boolean g;
    private boolean h;
    private h i;

    public g(j jVar, c.a aVar) {
        this.f2488c = jVar;
        this.f2486a = aVar;
        this.f2489d = new f(aVar, g());
    }

    public h a(x xVar, boolean z) throws Throwable {
        h cVar;
        int iA = xVar.a();
        int iB = xVar.b();
        int iC = xVar.c();
        try {
            c cVarA = a(iA, iB, iC, xVar.r(), z);
            if (cVarA.f2474b != null) {
                cVar = new c.a.d.d(xVar, this, cVarA.f2474b);
            } else {
                cVarA.d().setSoTimeout(iB);
                cVarA.f2476d.a().a(iB, TimeUnit.MILLISECONDS);
                cVarA.f2477e.a().a(iC, TimeUnit.MILLISECONDS);
                cVar = new c.a.d.c(xVar, this, cVarA.f2476d, cVarA.f2477e);
            }
            synchronized (this.f2488c) {
                this.i = cVar;
            }
            return cVar;
        } catch (IOException e2) {
            throw new e(e2);
        }
    }

    private c a(int i, int i2, int i3, boolean z, boolean z2) throws Throwable {
        while (true) {
            c cVarA = a(i, i2, i3, z);
            synchronized (this.f2488c) {
                if (cVarA.f2475c == 0) {
                    return cVarA;
                }
                if (cVarA.a(z2)) {
                    return cVarA;
                }
                d();
            }
        }
    }

    private c a(int i, int i2, int i3, boolean z) throws Throwable {
        synchronized (this.f2488c) {
            if (this.g) {
                throw new IllegalStateException("released");
            }
            if (this.i != null) {
                throw new IllegalStateException("stream != null");
            }
            if (this.h) {
                throw new IOException("Canceled");
            }
            c cVar = this.f;
            if (cVar != null && !cVar.h) {
                return cVar;
            }
            c cVarA = c.a.a.f2438a.a(this.f2488c, this.f2486a, this);
            if (cVarA != null) {
                this.f = cVarA;
                return cVarA;
            }
            ae aeVarB = this.f2487b;
            if (aeVarB == null) {
                aeVarB = this.f2489d.b();
                synchronized (this.f2488c) {
                    this.f2487b = aeVarB;
                    this.f2490e = 0;
                }
            }
            c cVar2 = new c(aeVarB);
            a(cVar2);
            synchronized (this.f2488c) {
                c.a.a.f2438a.b(this.f2488c, cVar2);
                this.f = cVar2;
                if (this.h) {
                    throw new IOException("Canceled");
                }
            }
            cVar2.a(i, i2, i3, this.f2486a.f(), z);
            g().b(cVar2.a());
            return cVar2;
        }
    }

    public void a(boolean z, h hVar) {
        synchronized (this.f2488c) {
            if (hVar != null) {
                if (hVar == this.i) {
                    if (!z) {
                        this.f.f2475c++;
                    }
                }
            }
            throw new IllegalStateException("expected " + this.i + " but was " + hVar);
        }
        a(z, false, true);
    }

    public h a() {
        h hVar;
        synchronized (this.f2488c) {
            hVar = this.i;
        }
        return hVar;
    }

    private d g() {
        return c.a.a.f2438a.a(this.f2488c);
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

    /* JADX WARN: Removed duplicated region for block: B:27:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(boolean r3, boolean r4, boolean r5) {
        /*
            r2 = this;
            c.j r0 = r2.f2488c
            monitor-enter(r0)
            r1 = 0
            if (r5 == 0) goto Lb
            r2.i = r1     // Catch: java.lang.Throwable -> L9
            goto Lb
        L9:
            r3 = move-exception
            goto L5d
        Lb:
            r5 = 1
            if (r4 == 0) goto L10
            r2.g = r5     // Catch: java.lang.Throwable -> L9
        L10:
            c.a.b.c r4 = r2.f     // Catch: java.lang.Throwable -> L9
            if (r4 == 0) goto L52
            if (r3 == 0) goto L1a
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            r3.h = r5     // Catch: java.lang.Throwable -> L9
        L1a:
            c.a.d.h r3 = r2.i     // Catch: java.lang.Throwable -> L9
            if (r3 != 0) goto L52
            boolean r3 = r2.g     // Catch: java.lang.Throwable -> L9
            if (r3 != 0) goto L28
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            boolean r3 = r3.h     // Catch: java.lang.Throwable -> L9
            if (r3 == 0) goto L52
        L28:
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            r2.b(r3)     // Catch: java.lang.Throwable -> L9
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            java.util.List<java.lang.ref.Reference<c.a.b.g>> r3 = r3.g     // Catch: java.lang.Throwable -> L9
            boolean r3 = r3.isEmpty()     // Catch: java.lang.Throwable -> L9
            if (r3 == 0) goto L4e
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            long r4 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L9
            r3.i = r4     // Catch: java.lang.Throwable -> L9
            c.a.a r3 = c.a.a.f2438a     // Catch: java.lang.Throwable -> L9
            c.j r4 = r2.f2488c     // Catch: java.lang.Throwable -> L9
            c.a.b.c r5 = r2.f     // Catch: java.lang.Throwable -> L9
            boolean r3 = r3.a(r4, r5)     // Catch: java.lang.Throwable -> L9
            if (r3 == 0) goto L4e
            c.a.b.c r3 = r2.f     // Catch: java.lang.Throwable -> L9
            goto L4f
        L4e:
            r3 = r1
        L4f:
            r2.f = r1     // Catch: java.lang.Throwable -> L9
            r1 = r3
        L52:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9
            if (r1 == 0) goto L5c
            java.net.Socket r3 = r1.d()
            c.a.c.a(r3)
        L5c:
            return
        L5d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L9
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.b.g.a(boolean, boolean, boolean):void");
    }

    public void e() {
        h hVar;
        c cVar;
        synchronized (this.f2488c) {
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
        synchronized (this.f2488c) {
            if (iOException instanceof p) {
                p pVar = (p) iOException;
                if (pVar.f2630a == c.a.c.a.REFUSED_STREAM) {
                    this.f2490e++;
                }
                if (pVar.f2630a != c.a.c.a.REFUSED_STREAM || this.f2490e > 1) {
                    this.f2487b = null;
                    z = true;
                }
                z = false;
            } else {
                if (this.f != null && !this.f.f()) {
                    if (this.f.f2475c == 0) {
                        if (this.f2487b != null && iOException != null) {
                            this.f2489d.a(this.f2487b, iOException);
                        }
                        this.f2487b = null;
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
        return this.f2487b != null || this.f2489d.a();
    }

    public String toString() {
        return this.f2486a.toString();
    }
}
