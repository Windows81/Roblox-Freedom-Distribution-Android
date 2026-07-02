package d;

import b.aa;
import b.p;
import b.r;
import b.s;
import b.u;
import b.v;
import b.z;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f8134a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8135b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final s f8136c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8137d;
    private s.a e;
    private final z.a f = new z.a();
    private u g;
    private final boolean h;
    private v.a i;
    private p.a j;
    private aa k;

    k(String str, s sVar, String str2, r rVar, u uVar, boolean z, boolean z2, boolean z3) {
        this.f8135b = str;
        this.f8136c = sVar;
        this.f8137d = str2;
        this.g = uVar;
        this.h = z;
        if (rVar != null) {
            this.f.a(rVar);
        }
        if (z2) {
            this.j = new p.a();
        } else if (z3) {
            this.i = new v.a();
            this.i.a(v.e);
        }
    }

    void a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("@Url parameter is null.");
        }
        this.f8137d = obj.toString();
    }

    void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            u uVarA = u.a(str2);
            if (uVarA == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.g = uVarA;
            return;
        }
        this.f.b(str, str2);
    }

    void a(String str, String str2, boolean z) {
        if (this.f8137d == null) {
            throw new AssertionError();
        }
        this.f8137d = this.f8137d.replace("{" + str + "}", a(str2, z));
    }

    private static String a(String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt < 127 && " \"<>^`{}|\\?#".indexOf(iCodePointAt) == -1 && (z || (iCodePointAt != 47 && iCodePointAt != 37))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                c.c cVar = new c.c();
                cVar.a(str, 0, iCharCount);
                a(cVar, str, iCharCount, length, z);
                return cVar.p();
            }
        }
        return str;
    }

    private static void a(c.c cVar, String str, int i, int i2, boolean z) {
        c.c cVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (cVar2 == null) {
                        cVar2 = new c.c();
                    }
                    cVar2.a(iCodePointAt);
                    while (!cVar2.f()) {
                        int i3 = cVar2.i() & 255;
                        cVar.i(37);
                        cVar.i((int) f8134a[(i3 >> 4) & 15]);
                        cVar.i((int) f8134a[i3 & 15]);
                    }
                } else {
                    cVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    void b(String str, String str2, boolean z) {
        if (this.f8137d != null) {
            this.e = this.f8136c.d(this.f8137d);
            if (this.e == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f8136c + ", Relative: " + this.f8137d);
            }
            this.f8137d = null;
        }
        if (z) {
            this.e.b(str, str2);
        } else {
            this.e.a(str, str2);
        }
    }

    void c(String str, String str2, boolean z) {
        if (z) {
            this.j.b(str, str2);
        } else {
            this.j.a(str, str2);
        }
    }

    void a(r rVar, aa aaVar) {
        this.i.a(rVar, aaVar);
    }

    void a(v.b bVar) {
        this.i.a(bVar);
    }

    void a(aa aaVar) {
        this.k = aaVar;
    }

    z a() {
        s sVarC;
        s.a aVar = this.e;
        if (aVar != null) {
            sVarC = aVar.c();
        } else {
            sVarC = this.f8136c.c(this.f8137d);
            if (sVarC == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f8136c + ", Relative: " + this.f8137d);
            }
        }
        aa aVar2 = this.k;
        if (aVar2 == null) {
            if (this.j != null) {
                aVar2 = this.j.a();
            } else if (this.i != null) {
                aVar2 = this.i.a();
            } else if (this.h) {
                aVar2 = aa.a((u) null, new byte[0]);
            }
        }
        u uVar = this.g;
        if (uVar != null) {
            if (aVar2 != null) {
                aVar2 = new a(aVar2, uVar);
            } else {
                this.f.b("Content-Type", uVar.toString());
            }
        }
        return this.f.a(sVarC).a(this.f8135b, aVar2).a();
    }

    private static class a extends aa {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final aa f8138a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final u f8139b;

        a(aa aaVar, u uVar) {
            this.f8138a = aaVar;
            this.f8139b = uVar;
        }

        @Override // b.aa
        public u a() {
            return this.f8139b;
        }

        @Override // b.aa
        public long b() throws IOException {
            return this.f8138a.b();
        }

        @Override // b.aa
        public void a(c.d dVar) throws IOException {
            this.f8138a.a(dVar);
        }
    }
}
