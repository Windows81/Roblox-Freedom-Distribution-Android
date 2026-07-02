package b.a.d;

import b.ab;
import b.ac;
import b.r;
import b.w;
import b.x;
import b.z;
import c.r;
import c.s;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final c.f f1925a = c.f.a("connection");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.f f1926b = c.f.a("host");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c.f f1927c = c.f.a("keep-alive");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c.f f1928d = c.f.a("proxy-connection");
    private static final c.f e = c.f.a("transfer-encoding");
    private static final c.f f = c.f.a("te");
    private static final c.f g = c.f.a("encoding");
    private static final c.f h = c.f.a("upgrade");
    private static final List<c.f> i = b.a.c.a(f1925a, f1926b, f1927c, f1928d, e, b.a.c.f.f1843b, b.a.c.f.f1844c, b.a.c.f.f1845d, b.a.c.f.e, b.a.c.f.f, b.a.c.f.g);
    private static final List<c.f> j = b.a.c.a(f1925a, f1926b, f1927c, f1928d, e);
    private static final List<c.f> k = b.a.c.a(f1925a, f1926b, f1927c, f1928d, f, e, g, h, b.a.c.f.f1843b, b.a.c.f.f1844c, b.a.c.f.f1845d, b.a.c.f.e, b.a.c.f.f, b.a.c.f.g);
    private static final List<c.f> l = b.a.c.a(f1925a, f1926b, f1927c, f1928d, f, e, g, h);
    private final w m;
    private final b.a.b.g n;
    private final b.a.c.d o;
    private b.a.c.e p;

    public d(w wVar, b.a.b.g gVar, b.a.c.d dVar) {
        this.m = wVar;
        this.n = gVar;
        this.o = dVar;
    }

    @Override // b.a.d.h
    public r a(z zVar, long j2) {
        return this.p.h();
    }

    @Override // b.a.d.h
    public void a(z zVar) throws IOException {
        List<b.a.c.f> listB;
        if (this.p == null) {
            boolean zC = g.c(zVar.b());
            if (this.o.a() == x.HTTP_2) {
                listB = c(zVar);
            } else {
                listB = b(zVar);
            }
            this.p = this.o.a(listB, zC, true);
            this.p.e().a(this.m.b(), TimeUnit.MILLISECONDS);
            this.p.f().a(this.m.c(), TimeUnit.MILLISECONDS);
        }
    }

    @Override // b.a.d.h
    public void c() throws IOException {
        this.p.h().close();
    }

    @Override // b.a.d.h
    public ab.a b() throws IOException {
        if (this.o.a() == x.HTTP_2) {
            return b(this.p.d());
        }
        return a(this.p.d());
    }

    public static List<b.a.c.f> b(z zVar) {
        b.r rVarC = zVar.c();
        ArrayList arrayList = new ArrayList(rVarC.a() + 5);
        arrayList.add(new b.a.c.f(b.a.c.f.f1843b, zVar.b()));
        arrayList.add(new b.a.c.f(b.a.c.f.f1844c, k.a(zVar.a())));
        arrayList.add(new b.a.c.f(b.a.c.f.g, "HTTP/1.1"));
        arrayList.add(new b.a.c.f(b.a.c.f.f, b.a.c.a(zVar.a(), false)));
        arrayList.add(new b.a.c.f(b.a.c.f.f1845d, zVar.a().b()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int iA = rVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            c.f fVarA = c.f.a(rVarC.a(i2).toLowerCase(Locale.US));
            if (!i.contains(fVarA)) {
                String strB = rVarC.b(i2);
                if (!linkedHashSet.add(fVarA)) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            break;
                        }
                        if (!((b.a.c.f) arrayList.get(i3)).h.equals(fVarA)) {
                            i3++;
                        } else {
                            arrayList.set(i3, new b.a.c.f(fVarA, a(((b.a.c.f) arrayList.get(i3)).i.a(), strB)));
                            break;
                        }
                    }
                } else {
                    arrayList.add(new b.a.c.f(fVarA, strB));
                }
            }
        }
        return arrayList;
    }

    private static String a(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static List<b.a.c.f> c(z zVar) {
        b.r rVarC = zVar.c();
        ArrayList arrayList = new ArrayList(rVarC.a() + 4);
        arrayList.add(new b.a.c.f(b.a.c.f.f1843b, zVar.b()));
        arrayList.add(new b.a.c.f(b.a.c.f.f1844c, k.a(zVar.a())));
        arrayList.add(new b.a.c.f(b.a.c.f.e, b.a.c.a(zVar.a(), false)));
        arrayList.add(new b.a.c.f(b.a.c.f.f1845d, zVar.a().b()));
        int iA = rVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            c.f fVarA = c.f.a(rVarC.a(i2).toLowerCase(Locale.US));
            if (!k.contains(fVarA)) {
                arrayList.add(new b.a.c.f(fVarA, rVarC.b(i2)));
            }
        }
        return arrayList;
    }

    public static ab.a a(List<b.a.c.f> list) throws IOException {
        String str = null;
        String str2 = "HTTP/1.1";
        r.a aVar = new r.a();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            c.f fVar = list.get(i2).h;
            String strA = list.get(i2).i.a();
            String str3 = str2;
            int i3 = 0;
            while (i3 < strA.length()) {
                int iIndexOf = strA.indexOf(0, i3);
                if (iIndexOf == -1) {
                    iIndexOf = strA.length();
                }
                String strSubstring = strA.substring(i3, iIndexOf);
                if (!fVar.equals(b.a.c.f.f1842a)) {
                    if (fVar.equals(b.a.c.f.g)) {
                        str3 = strSubstring;
                        strSubstring = str;
                    } else {
                        if (!j.contains(fVar)) {
                            b.a.a.f1737a.a(aVar, fVar.a(), strSubstring);
                        }
                        strSubstring = str;
                    }
                }
                str = strSubstring;
                i3 = iIndexOf + 1;
            }
            i2++;
            str2 = str3;
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a(str2 + " " + str);
        return new ab.a().a(x.SPDY_3).a(mVarA.f1944b).a(mVarA.f1945c).a(aVar.a());
    }

    public static ab.a b(List<b.a.c.f> list) throws IOException {
        String str = null;
        r.a aVar = new r.a();
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            c.f fVar = list.get(i2).h;
            String strA = list.get(i2).i.a();
            if (!fVar.equals(b.a.c.f.f1842a)) {
                if (!l.contains(fVar)) {
                    b.a.a.f1737a.a(aVar, fVar.a(), strA);
                }
                strA = str;
            }
            i2++;
            str = strA;
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a("HTTP/1.1 " + str);
        return new ab.a().a(x.HTTP_2).a(mVarA.f1944b).a(mVarA.f1945c).a(aVar.a());
    }

    @Override // b.a.d.h
    public ac a(ab abVar) throws IOException {
        return new j(abVar.f(), c.l.a(new a(this.p.g())));
    }

    @Override // b.a.d.h
    public void a() {
        if (this.p != null) {
            this.p.b(b.a.c.a.CANCEL);
        }
    }

    class a extends c.h {
        public a(s sVar) {
            super(sVar);
        }

        @Override // c.h, c.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            d.this.n.a(false, (h) d.this);
            super.close();
        }
    }
}
