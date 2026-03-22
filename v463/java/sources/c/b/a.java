package c.b;

import c.a.d.f;
import c.a.f.e;
import c.aa;
import c.ab;
import c.ac;
import c.ad;
import c.i;
import c.s;
import c.u;
import c.v;
import c.y;
import d.c;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class a implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f2749a = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f2750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile EnumC0059a f2751c;

    /* JADX INFO: renamed from: c.b.a$a, reason: collision with other inner class name */
    public enum EnumC0059a {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f2757b = new b() { // from class: c.b.a.b.1
            @Override // c.b.a.b
            public void a(String str) {
                e.b().a(4, str, (Throwable) null);
            }
        };

        void a(String str);
    }

    public a() {
        this(b.f2757b);
    }

    public a(b bVar) {
        this.f2751c = EnumC0059a.NONE;
        this.f2750b = bVar;
    }

    public a a(EnumC0059a enumC0059a) {
        if (enumC0059a == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.f2751c = enumC0059a;
        return this;
    }

    @Override // c.u
    public ac a(u.a aVar) throws Exception {
        boolean z;
        boolean z2;
        EnumC0059a enumC0059a = this.f2751c;
        aa aaVarA = aVar.a();
        if (enumC0059a == EnumC0059a.NONE) {
            return aVar.a(aaVarA);
        }
        boolean z3 = enumC0059a == EnumC0059a.BODY;
        boolean z4 = z3 || enumC0059a == EnumC0059a.HEADERS;
        ab abVarD = aaVarA.d();
        boolean z5 = abVarD != null;
        i iVarB = aVar.b();
        String str = "--> " + aaVarA.b() + ' ' + aaVarA.a() + ' ' + (iVarB != null ? iVarB.b() : y.HTTP_1_1);
        if (!z4 && z5) {
            str = str + " (" + abVarD.b() + "-byte body)";
        }
        this.f2750b.a(str);
        if (z4) {
            if (z5) {
                if (abVarD.a() != null) {
                    this.f2750b.a("Content-Type: " + abVarD.a());
                }
                if (abVarD.b() != -1) {
                    this.f2750b.a("Content-Length: " + abVarD.b());
                }
            }
            s sVarC = aaVarA.c();
            int iA = sVarC.a();
            int i = 0;
            while (i < iA) {
                String strA = sVarC.a(i);
                int i2 = iA;
                if ("Content-Type".equalsIgnoreCase(strA) || "Content-Length".equalsIgnoreCase(strA)) {
                    z2 = z4;
                } else {
                    z2 = z4;
                    this.f2750b.a(strA + ": " + sVarC.b(i));
                }
                i++;
                iA = i2;
                z4 = z2;
            }
            z = z4;
            if (!z3 || !z5) {
                this.f2750b.a("--> END " + aaVarA.b());
            } else if (a(aaVarA.c())) {
                this.f2750b.a("--> END " + aaVarA.b() + " (encoded body omitted)");
            } else {
                c cVar = new c();
                abVarD.a(cVar);
                Charset charsetA = f2749a;
                v vVarA = abVarD.a();
                if (vVarA != null) {
                    charsetA = vVarA.a(f2749a);
                }
                this.f2750b.a("");
                if (a(cVar)) {
                    this.f2750b.a(cVar.a(charsetA));
                    this.f2750b.a("--> END " + aaVarA.b() + " (" + abVarD.b() + "-byte body)");
                } else {
                    this.f2750b.a("--> END " + aaVarA.b() + " (binary " + abVarD.b() + "-byte body omitted)");
                }
            }
        } else {
            z = z4;
        }
        long jNanoTime = System.nanoTime();
        try {
            ac acVarA = aVar.a(aaVarA);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ad adVarG = acVarA.g();
            long jB = adVarG.b();
            String str2 = jB != -1 ? jB + "-byte" : "unknown-length";
            b bVar = this.f2750b;
            StringBuilder sb = new StringBuilder();
            sb.append("<-- ");
            sb.append(acVarA.b());
            sb.append(' ');
            sb.append(acVarA.d());
            sb.append(' ');
            sb.append(acVarA.a().a());
            sb.append(" (");
            sb.append(millis);
            sb.append("ms");
            sb.append(z ? "" : ", " + str2 + " body");
            sb.append(')');
            bVar.a(sb.toString());
            if (z) {
                s sVarF = acVarA.f();
                int iA2 = sVarF.a();
                for (int i3 = 0; i3 < iA2; i3++) {
                    this.f2750b.a(sVarF.a(i3) + ": " + sVarF.b(i3));
                }
                if (!z3 || !f.b(acVarA)) {
                    this.f2750b.a("<-- END HTTP");
                } else if (a(acVarA.f())) {
                    this.f2750b.a("<-- END HTTP (encoded body omitted)");
                } else {
                    d.e eVarD = adVarG.d();
                    eVarD.b(Long.MAX_VALUE);
                    c cVarC = eVarD.c();
                    Charset charsetA2 = f2749a;
                    v vVarA2 = adVarG.a();
                    if (vVarA2 != null) {
                        try {
                            charsetA2 = vVarA2.a(f2749a);
                        } catch (UnsupportedCharsetException unused) {
                            this.f2750b.a("");
                            this.f2750b.a("Couldn't decode the response body; charset is likely malformed.");
                            this.f2750b.a("<-- END HTTP");
                            return acVarA;
                        }
                    }
                    if (!a(cVarC)) {
                        this.f2750b.a("");
                        this.f2750b.a("<-- END HTTP (binary " + cVarC.b() + "-byte body omitted)");
                        return acVarA;
                    }
                    if (jB != 0) {
                        this.f2750b.a("");
                        this.f2750b.a(cVarC.clone().a(charsetA2));
                    }
                    this.f2750b.a("<-- END HTTP (" + cVarC.b() + "-byte body)");
                }
            }
            return acVarA;
        } catch (Exception e2) {
            this.f2750b.a("<-- HTTP FAILED: " + e2);
            throw e2;
        }
    }

    static boolean a(c cVar) {
        try {
            c cVar2 = new c();
            cVar.a(cVar2, 0L, cVar.b() < 64 ? cVar.b() : 64L);
            for (int i = 0; i < 16; i++) {
                if (cVar2.f()) {
                    return true;
                }
                int iR = cVar2.r();
                if (Character.isISOControl(iR) && !Character.isWhitespace(iR)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    private boolean a(s sVar) {
        String strA = sVar.a("Content-Encoding");
        return (strA == null || strA.equalsIgnoreCase("identity")) ? false : true;
    }
}
