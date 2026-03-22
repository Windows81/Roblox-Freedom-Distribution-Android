package e;

import c.aa;
import c.ab;
import c.q;
import c.s;
import c.t;
import c.v;
import c.w;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f7881a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7882b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f7883c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f7884d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private t.a f7885e;
    private final aa.a f;
    private v g;
    private final boolean h;
    private w.a i;
    private q.a j;
    private ab k;

    k(String str, t tVar, String str2, s sVar, v vVar, boolean z, boolean z2, boolean z3) {
        this.f7882b = str;
        this.f7883c = tVar;
        this.f7884d = str2;
        aa.a aVar = new aa.a();
        this.f = aVar;
        this.g = vVar;
        this.h = z;
        if (sVar != null) {
            aVar.a(sVar);
        }
        if (z2) {
            this.j = new q.a();
        } else if (z3) {
            w.a aVar2 = new w.a();
            this.i = aVar2;
            aVar2.a(w.f2846e);
        }
    }

    void a(Object obj) {
        if (obj == null) {
            throw new NullPointerException("@Url parameter is null.");
        }
        this.f7884d = obj.toString();
    }

    void a(String str, String str2) {
        if ("Content-Type".equalsIgnoreCase(str)) {
            v vVarA = v.a(str2);
            if (vVarA == null) {
                throw new IllegalArgumentException("Malformed content type: " + str2);
            }
            this.g = vVarA;
            return;
        }
        this.f.b(str, str2);
    }

    void a(String str, String str2, boolean z) {
        String str3 = this.f7884d;
        if (str3 == null) {
            throw new AssertionError();
        }
        this.f7884d = str3.replace("{" + str + "}", a(str2, z));
    }

    private static String a(String str, boolean z) {
        int length = str.length();
        int iCharCount = 0;
        while (iCharCount < length) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt < 127 && " \"<>^`{}|\\?#".indexOf(iCodePointAt) == -1 && (z || (iCodePointAt != 47 && iCodePointAt != 37))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                d.c cVar = new d.c();
                cVar.a(str, 0, iCharCount);
                a(cVar, str, iCharCount, length, z);
                return cVar.p();
            }
        }
        return str;
    }

    private static void a(d.c cVar, String str, int i, int i2, boolean z) {
        d.c cVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt < 32 || iCodePointAt >= 127 || " \"<>^`{}|\\?#".indexOf(iCodePointAt) != -1 || (!z && (iCodePointAt == 47 || iCodePointAt == 37))) {
                    if (cVar2 == null) {
                        cVar2 = new d.c();
                    }
                    cVar2.a(iCodePointAt);
                    while (!cVar2.f()) {
                        int i3 = cVar2.i() & 255;
                        cVar.i(37);
                        cVar.i((int) f7881a[(i3 >> 4) & 15]);
                        cVar.i((int) f7881a[i3 & 15]);
                    }
                } else {
                    cVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    void b(String str, String str2, boolean z) {
        String str3 = this.f7884d;
        if (str3 != null) {
            t.a aVarD = this.f7883c.d(str3);
            this.f7885e = aVarD;
            if (aVarD == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f7883c + ", Relative: " + this.f7884d);
            }
            this.f7884d = null;
        }
        if (z) {
            this.f7885e.b(str, str2);
        } else {
            this.f7885e.a(str, str2);
        }
    }

    void c(String str, String str2, boolean z) {
        if (z) {
            this.j.b(str, str2);
        } else {
            this.j.a(str, str2);
        }
    }

    void a(s sVar, ab abVar) {
        this.i.a(sVar, abVar);
    }

    void a(w.b bVar) {
        this.i.a(bVar);
    }

    void a(ab abVar) {
        this.k = abVar;
    }

    aa a() {
        t tVarC;
        t.a aVar = this.f7885e;
        if (aVar != null) {
            tVarC = aVar.c();
        } else {
            tVarC = this.f7883c.c(this.f7884d);
            if (tVarC == null) {
                throw new IllegalArgumentException("Malformed URL. Base: " + this.f7883c + ", Relative: " + this.f7884d);
            }
        }
        ab aVar2 = this.k;
        if (aVar2 == null) {
            q.a aVar3 = this.j;
            if (aVar3 != null) {
                aVar2 = aVar3.a();
            } else {
                w.a aVar4 = this.i;
                if (aVar4 != null) {
                    aVar2 = aVar4.a();
                } else if (this.h) {
                    aVar2 = ab.a((v) null, new byte[0]);
                }
            }
        }
        v vVar = this.g;
        if (vVar != null) {
            if (aVar2 != null) {
                aVar2 = new a(aVar2, vVar);
            } else {
                this.f.b("Content-Type", vVar.toString());
            }
        }
        return this.f.a(tVarC).a(this.f7882b, aVar2).a();
    }

    private static class a extends ab {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ab f7886a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final v f7887b;

        a(ab abVar, v vVar) {
            this.f7886a = abVar;
            this.f7887b = vVar;
        }

        @Override // c.ab
        public v a() {
            return this.f7887b;
        }

        @Override // c.ab
        public long b() throws IOException {
            return this.f7886a.b();
        }

        @Override // c.ab
        public void a(d.d dVar) throws IOException {
            this.f7886a.a(dVar);
        }
    }
}
