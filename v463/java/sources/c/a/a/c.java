package c.a.a;

import c.a.d.f;
import c.aa;
import c.ac;
import c.s;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final aa f2446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ac f2447b;

    private c(aa aaVar, ac acVar) {
        this.f2446a = aaVar;
        this.f2447b = acVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.i().d() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(c.ac r3, c.aa r4) {
        /*
            int r0 = r3.b()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.a(r0)
            if (r0 != 0) goto L5a
            c.d r0 = r3.i()
            int r0 = r0.c()
            r1 = -1
            if (r0 != r1) goto L5a
            c.d r0 = r3.i()
            boolean r0 = r0.e()
            if (r0 != 0) goto L5a
            c.d r0 = r3.i()
            boolean r0 = r0.d()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            c.d r3 = r3.i()
            boolean r3 = r3.b()
            if (r3 != 0) goto L6f
            c.d r3 = r4.f()
            boolean r3 = r3.b()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.a.c.a(c.ac, c.aa):boolean");
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f2448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final aa f2449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ac f2450c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f2451d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f2452e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        public a(long j, aa aaVar, ac acVar) {
            this.l = -1;
            this.f2448a = j;
            this.f2449b = aaVar;
            this.f2450c = acVar;
            if (acVar != null) {
                this.i = acVar.j();
                this.j = acVar.k();
                s sVarF = acVar.f();
                int iA = sVarF.a();
                for (int i = 0; i < iA; i++) {
                    String strA = sVarF.a(i);
                    String strB = sVarF.b(i);
                    if ("Date".equalsIgnoreCase(strA)) {
                        this.f2451d = c.a.d.e.a(strB);
                        this.f2452e = strB;
                    } else if ("Expires".equalsIgnoreCase(strA)) {
                        this.h = c.a.d.e.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f = c.a.d.e.a(strB);
                        this.g = strB;
                    } else if ("ETag".equalsIgnoreCase(strA)) {
                        this.k = strB;
                    } else if ("Age".equalsIgnoreCase(strA)) {
                        this.l = f.b(strB, -1);
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public c a() {
            c cVarB = b();
            if (cVarB.f2446a == null || !this.f2449b.f().i()) {
                return cVarB;
            }
            return new c(null, 0 == true ? 1 : 0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private c b() {
            ac acVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            Object[] objArr7 = 0;
            Object[] objArr8 = 0;
            Object[] objArr9 = 0;
            Object[] objArr10 = 0;
            Object[] objArr11 = 0;
            Object[] objArr12 = 0;
            if (this.f2450c == null) {
                return new c(this.f2449b, acVar);
            }
            if (this.f2449b.g() && this.f2450c.e() == null) {
                return new c(this.f2449b, objArr11 == true ? 1 : 0);
            }
            if (!c.a(this.f2450c, this.f2449b)) {
                return new c(this.f2449b, objArr9 == true ? 1 : 0);
            }
            c.d dVarF = this.f2449b.f();
            if (dVarF.a() || a(this.f2449b)) {
                return new c(this.f2449b, objArr2 == true ? 1 : 0);
            }
            long jD = d();
            long jC = c();
            if (dVarF.c() != -1) {
                jC = Math.min(jC, TimeUnit.SECONDS.toMillis(dVarF.c()));
            }
            long millis = 0;
            long millis2 = dVarF.h() != -1 ? TimeUnit.SECONDS.toMillis(dVarF.h()) : 0L;
            c.d dVarI = this.f2450c.i();
            if (!dVarI.f() && dVarF.g() != -1) {
                millis = TimeUnit.SECONDS.toMillis(dVarF.g());
            }
            if (!dVarI.a()) {
                long j = millis2 + jD;
                if (j < millis + jC) {
                    ac.a aVarH = this.f2450c.h();
                    if (j >= jC) {
                        aVarH.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jD > 86400000 && e()) {
                        aVarH.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new c(objArr7 == true ? 1 : 0, aVarH.a());
                }
            }
            String str = this.k;
            String str2 = "If-Modified-Since";
            if (str != null) {
                str2 = "If-None-Match";
            } else if (this.f != null) {
                str = this.g;
            } else if (this.f2451d != null) {
                str = this.f2452e;
            } else {
                return new c(this.f2449b, objArr4 == true ? 1 : 0);
            }
            s.a aVarB = this.f2449b.c().b();
            c.a.a.f2438a.a(aVarB, str2, str);
            return new c(this.f2449b.e().a(aVarB.a()).a(), this.f2450c);
        }

        private long c() {
            if (this.f2450c.i().c() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.c());
            }
            if (this.h != null) {
                Date date = this.f2451d;
                long time = this.h.getTime() - (date != null ? date.getTime() : this.j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f == null || this.f2450c.a().a().l() != null) {
                return 0L;
            }
            Date date2 = this.f2451d;
            long time2 = (date2 != null ? date2.getTime() : this.i) - this.f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private long d() {
            Date date = this.f2451d;
            long jMax = date != null ? Math.max(0L, this.j - date.getTime()) : 0L;
            if (this.l != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(this.l));
            }
            long j = this.j;
            return jMax + (j - this.i) + (this.f2448a - j);
        }

        private boolean e() {
            return this.f2450c.i().c() == -1 && this.h == null;
        }

        private static boolean a(aa aaVar) {
            return (aaVar.a("If-Modified-Since") == null && aaVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
