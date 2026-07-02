package b.a.a;

import android.support.v7.widget.helper.ItemTouchHelper;
import b.a.d.f;
import b.ab;
import b.r;
import b.z;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final z f1744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ab f1745b;

    private c(z zVar, ab abVar) {
        this.f1744a = zVar;
        this.f1745b = abVar;
    }

    public static boolean a(ab abVar, z zVar) {
        switch (abVar.b()) {
            case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
            case 203:
            case 204:
            case 300:
            case 301:
            case 308:
            case 404:
            case 405:
            case 410:
            case 414:
            case 501:
                break;
            case 302:
            case 307:
                if (abVar.a("Expires") == null && abVar.i().c() == -1 && !abVar.i().e() && !abVar.i().d()) {
                    return false;
                }
                break;
            default:
                return false;
        }
        return (abVar.i().b() || zVar.f().b()) ? false : true;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f1746a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final z f1747b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ab f1748c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f1749d;
        private String e;
        private Date f;
        private String g;
        private Date h;
        private long i;
        private long j;
        private String k;
        private int l;

        public a(long j, z zVar, ab abVar) {
            this.l = -1;
            this.f1746a = j;
            this.f1747b = zVar;
            this.f1748c = abVar;
            if (abVar != null) {
                this.i = abVar.j();
                this.j = abVar.k();
                r rVarF = abVar.f();
                int iA = rVarF.a();
                for (int i = 0; i < iA; i++) {
                    String strA = rVarF.a(i);
                    String strB = rVarF.b(i);
                    if ("Date".equalsIgnoreCase(strA)) {
                        this.f1749d = b.a.d.e.a(strB);
                        this.e = strB;
                    } else if ("Expires".equalsIgnoreCase(strA)) {
                        this.h = b.a.d.e.a(strB);
                    } else if ("Last-Modified".equalsIgnoreCase(strA)) {
                        this.f = b.a.d.e.a(strB);
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
            z zVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            c cVarB = b();
            if (cVarB.f1744a != null && this.f1747b.f().i()) {
                return new c(zVar, objArr2 == true ? 1 : 0);
            }
            return cVarB;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private c b() {
            String str;
            String str2;
            long millis = 0;
            ab abVar = null;
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
            if (this.f1748c == null) {
                return new c(this.f1747b, abVar);
            }
            if (this.f1747b.g() && this.f1748c.e() == null) {
                return new c(this.f1747b, objArr11 == true ? 1 : 0);
            }
            if (!c.a(this.f1748c, this.f1747b)) {
                return new c(this.f1747b, objArr9 == true ? 1 : 0);
            }
            b.d dVarF = this.f1747b.f();
            if (dVarF.a() || a(this.f1747b)) {
                return new c(this.f1747b, objArr2 == true ? 1 : 0);
            }
            long jD = d();
            long jC = c();
            if (dVarF.c() != -1) {
                jC = Math.min(jC, TimeUnit.SECONDS.toMillis(dVarF.c()));
            }
            long millis2 = dVarF.h() != -1 ? TimeUnit.SECONDS.toMillis(dVarF.h()) : 0L;
            b.d dVarI = this.f1748c.i();
            if (!dVarI.f() && dVarF.g() != -1) {
                millis = TimeUnit.SECONDS.toMillis(dVarF.g());
            }
            if (!dVarI.a() && jD + millis2 < millis + jC) {
                ab.a aVarH = this.f1748c.h();
                if (millis2 + jD >= jC) {
                    aVarH.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                }
                if (jD > 86400000 && e()) {
                    aVarH.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                }
                return new c(objArr7 == true ? 1 : 0, aVarH.a());
            }
            if (this.k != null) {
                str = "If-None-Match";
                str2 = this.k;
            } else if (this.f != null) {
                str = "If-Modified-Since";
                str2 = this.g;
            } else if (this.f1749d != null) {
                str = "If-Modified-Since";
                str2 = this.e;
            } else {
                return new c(this.f1747b, objArr4 == true ? 1 : 0);
            }
            r.a aVarB = this.f1747b.c().b();
            b.a.a.f1737a.a(aVarB, str, str2);
            return new c(this.f1747b.e().a(aVarB.a()).a(), this.f1748c);
        }

        private long c() {
            if (this.f1748c.i().c() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.c());
            }
            if (this.h != null) {
                long time = this.h.getTime() - (this.f1749d != null ? this.f1749d.getTime() : this.j);
                if (time <= 0) {
                    time = 0;
                }
                return time;
            }
            if (this.f == null || this.f1748c.a().a().l() != null) {
                return 0L;
            }
            long time2 = (this.f1749d != null ? this.f1749d.getTime() : this.i) - this.f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private long d() {
            long jMax = this.f1749d != null ? Math.max(0L, this.j - this.f1749d.getTime()) : 0L;
            if (this.l != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(this.l));
            }
            return jMax + (this.j - this.i) + (this.f1746a - this.j);
        }

        private boolean e() {
            return this.f1748c.i().c() == -1 && this.h == null;
        }

        private static boolean a(z zVar) {
            return (zVar.a("If-Modified-Since") == null && zVar.a("If-None-Match") == null) ? false : true;
        }
    }
}
