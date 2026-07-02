package b.b;

import b.a.d.f;
import b.a.f.e;
import b.aa;
import b.ab;
import b.ac;
import b.i;
import b.r;
import b.t;
import b.u;
import b.x;
import b.z;
import c.c;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.UnsupportedCharsetException;
import java.util.concurrent.TimeUnit;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: classes.dex */
public final class a implements t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f2002a = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f2003b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile EnumC0041a f2004c;

    /* JADX INFO: renamed from: b.b.a$a, reason: collision with other inner class name */
    public enum EnumC0041a {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f2009a = new b() { // from class: b.b.a.b.1
            @Override // b.b.a.b
            public void a(String str) {
                e.b().a(4, str, (Throwable) null);
            }
        };

        void a(String str);
    }

    public a() {
        this(b.f2009a);
    }

    public a(b bVar) {
        this.f2004c = EnumC0041a.NONE;
        this.f2003b = bVar;
    }

    public a a(EnumC0041a enumC0041a) {
        if (enumC0041a == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.f2004c = enumC0041a;
        return this;
    }

    @Override // b.t
    public ab a(t.a aVar) throws Exception {
        EnumC0041a enumC0041a = this.f2004c;
        z zVarA = aVar.a();
        if (enumC0041a == EnumC0041a.NONE) {
            return aVar.a(zVarA);
        }
        boolean z = enumC0041a == EnumC0041a.BODY;
        boolean z2 = z || enumC0041a == EnumC0041a.HEADERS;
        aa aaVarD = zVarA.d();
        boolean z3 = aaVarD != null;
        i iVarB = aVar.b();
        String str = "--> " + zVarA.b() + ' ' + zVarA.a() + ' ' + (iVarB != null ? iVarB.b() : x.HTTP_1_1);
        if (!z2 && z3) {
            str = str + " (" + aaVarD.b() + "-byte body)";
        }
        this.f2003b.a(str);
        if (z2) {
            if (z3) {
                if (aaVarD.a() != null) {
                    this.f2003b.a("Content-Type: " + aaVarD.a());
                }
                if (aaVarD.b() != -1) {
                    this.f2003b.a("Content-Length: " + aaVarD.b());
                }
            }
            r rVarC = zVarA.c();
            int iA = rVarC.a();
            for (int i = 0; i < iA; i++) {
                String strA = rVarC.a(i);
                if (!"Content-Type".equalsIgnoreCase(strA) && !"Content-Length".equalsIgnoreCase(strA)) {
                    this.f2003b.a(strA + ": " + rVarC.b(i));
                }
            }
            if (!z || !z3) {
                this.f2003b.a("--> END " + zVarA.b());
            } else if (a(zVarA.c())) {
                this.f2003b.a("--> END " + zVarA.b() + " (encoded body omitted)");
            } else {
                c cVar = new c();
                aaVarD.a(cVar);
                Charset charsetA = f2002a;
                u uVarA = aaVarD.a();
                if (uVarA != null) {
                    charsetA = uVarA.a(f2002a);
                }
                this.f2003b.a("");
                if (a(cVar)) {
                    this.f2003b.a(cVar.a(charsetA));
                    this.f2003b.a("--> END " + zVarA.b() + " (" + aaVarD.b() + "-byte body)");
                } else {
                    this.f2003b.a("--> END " + zVarA.b() + " (binary " + aaVarD.b() + "-byte body omitted)");
                }
            }
        }
        long jNanoTime = System.nanoTime();
        try {
            ab abVarA = aVar.a(zVarA);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ac acVarG = abVarA.g();
            long jB = acVarG.b();
            this.f2003b.a("<-- " + abVarA.b() + ' ' + abVarA.d() + ' ' + abVarA.a().a() + " (" + millis + "ms" + (!z2 ? ", " + (jB != -1 ? jB + "-byte" : "unknown-length") + " body" : "") + ')');
            if (z2) {
                r rVarF = abVarA.f();
                int iA2 = rVarF.a();
                for (int i2 = 0; i2 < iA2; i2++) {
                    this.f2003b.a(rVarF.a(i2) + ": " + rVarF.b(i2));
                }
                if (!z || !f.b(abVarA)) {
                    this.f2003b.a("<-- END HTTP");
                } else if (a(abVarA.f())) {
                    this.f2003b.a("<-- END HTTP (encoded body omitted)");
                } else {
                    c.e eVarD = acVarG.d();
                    eVarD.b(Long.MAX_VALUE);
                    c cVarC = eVarD.c();
                    Charset charsetA2 = f2002a;
                    u uVarA2 = acVarG.a();
                    if (uVarA2 != null) {
                        try {
                            charsetA2 = uVarA2.a(f2002a);
                        } catch (UnsupportedCharsetException e) {
                            this.f2003b.a("");
                            this.f2003b.a("Couldn't decode the response body; charset is likely malformed.");
                            this.f2003b.a("<-- END HTTP");
                            return abVarA;
                        }
                    }
                    if (!a(cVarC)) {
                        this.f2003b.a("");
                        this.f2003b.a("<-- END HTTP (binary " + cVarC.b() + "-byte body omitted)");
                        return abVarA;
                    }
                    if (jB != 0) {
                        this.f2003b.a("");
                        this.f2003b.a(cVarC.clone().a(charsetA2));
                    }
                    this.f2003b.a("<-- END HTTP (" + cVarC.b() + "-byte body)");
                }
            }
            return abVarA;
        } catch (Exception e2) {
            this.f2003b.a("<-- HTTP FAILED: " + e2);
            throw e2;
        }
    }

    static boolean a(c cVar) {
        try {
            c cVar2 = new c();
            cVar.a(cVar2, 0L, cVar.b() < 64 ? cVar.b() : 64L);
            for (int i = 0; i < 16; i++) {
                if (cVar2.f()) {
                    break;
                }
                int iR = cVar2.r();
                if (Character.isISOControl(iR) && !Character.isWhitespace(iR)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException e) {
            return false;
        }
    }

    private boolean a(r rVar) {
        String strA = rVar.a("Content-Encoding");
        return (strA == null || strA.equalsIgnoreCase("identity")) ? false : true;
    }
}
