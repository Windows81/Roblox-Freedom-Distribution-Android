package c.a.d;

import c.aa;
import c.ac;
import c.ad;
import c.s;
import c.x;
import c.y;
import d.r;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final d.f f2654a = d.f.a("connection");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final d.f f2655b = d.f.a("host");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final d.f f2656c = d.f.a("keep-alive");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final d.f f2657d = d.f.a("proxy-connection");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final d.f f2658e = d.f.a("transfer-encoding");
    private static final d.f f = d.f.a("te");
    private static final d.f g = d.f.a("encoding");
    private static final d.f h = d.f.a("upgrade");
    private static final List<d.f> i = c.a.c.a(f2654a, f2655b, f2656c, f2657d, f2658e, c.a.c.f.f2561b, c.a.c.f.f2562c, c.a.c.f.f2563d, c.a.c.f.f2564e, c.a.c.f.f, c.a.c.f.g);
    private static final List<d.f> j = c.a.c.a(f2654a, f2655b, f2656c, f2657d, f2658e);
    private static final List<d.f> k = c.a.c.a(f2654a, f2655b, f2656c, f2657d, f, f2658e, g, h, c.a.c.f.f2561b, c.a.c.f.f2562c, c.a.c.f.f2563d, c.a.c.f.f2564e, c.a.c.f.f, c.a.c.f.g);
    private static final List<d.f> l = c.a.c.a(f2654a, f2655b, f2656c, f2657d, f, f2658e, g, h);
    private final x m;
    private final c.a.b.g n;
    private final c.a.c.d o;
    private c.a.c.e p;

    public d(x xVar, c.a.b.g gVar, c.a.c.d dVar) {
        this.m = xVar;
        this.n = gVar;
        this.o = dVar;
    }

    @Override // c.a.d.h
    public r a(aa aaVar, long j2) {
        return this.p.h();
    }

    @Override // c.a.d.h
    public void a(aa aaVar) throws IOException {
        List<c.a.c.f> listB;
        if (this.p != null) {
            return;
        }
        boolean zC = g.c(aaVar.b());
        if (this.o.a() == y.HTTP_2) {
            listB = c(aaVar);
        } else {
            listB = b(aaVar);
        }
        c.a.c.e eVarA = this.o.a(listB, zC, true);
        this.p = eVarA;
        eVarA.e().a(this.m.b(), TimeUnit.MILLISECONDS);
        this.p.f().a(this.m.c(), TimeUnit.MILLISECONDS);
    }

    @Override // c.a.d.h
    public void c() throws IOException {
        this.p.h().close();
    }

    @Override // c.a.d.h
    public ac.a b() throws IOException {
        if (this.o.a() == y.HTTP_2) {
            return b(this.p.d());
        }
        return a(this.p.d());
    }

    public static List<c.a.c.f> b(aa aaVar) {
        s sVarC = aaVar.c();
        ArrayList arrayList = new ArrayList(sVarC.a() + 5);
        arrayList.add(new c.a.c.f(c.a.c.f.f2561b, aaVar.b()));
        arrayList.add(new c.a.c.f(c.a.c.f.f2562c, k.a(aaVar.a())));
        arrayList.add(new c.a.c.f(c.a.c.f.g, "HTTP/1.1"));
        arrayList.add(new c.a.c.f(c.a.c.f.f, c.a.c.a(aaVar.a(), false)));
        arrayList.add(new c.a.c.f(c.a.c.f.f2563d, aaVar.a().b()));
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        int iA = sVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            d.f fVarA = d.f.a(sVarC.a(i2).toLowerCase(Locale.US));
            if (!i.contains(fVarA)) {
                String strB = sVarC.b(i2);
                if (linkedHashSet.add(fVarA)) {
                    arrayList.add(new c.a.c.f(fVarA, strB));
                } else {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            break;
                        }
                        if (((c.a.c.f) arrayList.get(i3)).h.equals(fVarA)) {
                            arrayList.set(i3, new c.a.c.f(fVarA, a(((c.a.c.f) arrayList.get(i3)).i.a(), strB)));
                            break;
                        }
                        i3++;
                    }
                }
            }
        }
        return arrayList;
    }

    private static String a(String str, String str2) {
        return str + (char) 0 + str2;
    }

    public static List<c.a.c.f> c(aa aaVar) {
        s sVarC = aaVar.c();
        ArrayList arrayList = new ArrayList(sVarC.a() + 4);
        arrayList.add(new c.a.c.f(c.a.c.f.f2561b, aaVar.b()));
        arrayList.add(new c.a.c.f(c.a.c.f.f2562c, k.a(aaVar.a())));
        arrayList.add(new c.a.c.f(c.a.c.f.f2564e, c.a.c.a(aaVar.a(), false)));
        arrayList.add(new c.a.c.f(c.a.c.f.f2563d, aaVar.a().b()));
        int iA = sVarC.a();
        for (int i2 = 0; i2 < iA; i2++) {
            d.f fVarA = d.f.a(sVarC.a(i2).toLowerCase(Locale.US));
            if (!k.contains(fVarA)) {
                arrayList.add(new c.a.c.f(fVarA, sVarC.b(i2)));
            }
        }
        return arrayList;
    }

    public static ac.a a(List<c.a.c.f> list) throws IOException {
        s.a aVar = new s.a();
        int size = list.size();
        String str = null;
        String str2 = "HTTP/1.1";
        for (int i2 = 0; i2 < size; i2++) {
            d.f fVar = list.get(i2).h;
            String strA = list.get(i2).i.a();
            int i3 = 0;
            while (i3 < strA.length()) {
                int iIndexOf = strA.indexOf(0, i3);
                if (iIndexOf == -1) {
                    iIndexOf = strA.length();
                }
                String strSubstring = strA.substring(i3, iIndexOf);
                if (fVar.equals(c.a.c.f.f2560a)) {
                    str = strSubstring;
                } else if (fVar.equals(c.a.c.f.g)) {
                    str2 = strSubstring;
                } else if (!j.contains(fVar)) {
                    c.a.a.f2438a.a(aVar, fVar.a(), strSubstring);
                }
                i3 = iIndexOf + 1;
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a(str2 + " " + str);
        return new ac.a().a(y.SPDY_3).a(mVarA.f2675b).a(mVarA.f2676c).a(aVar.a());
    }

    public static ac.a b(List<c.a.c.f> list) throws IOException {
        s.a aVar = new s.a();
        int size = list.size();
        String str = null;
        for (int i2 = 0; i2 < size; i2++) {
            d.f fVar = list.get(i2).h;
            String strA = list.get(i2).i.a();
            if (fVar.equals(c.a.c.f.f2560a)) {
                str = strA;
            } else if (!l.contains(fVar)) {
                c.a.a.f2438a.a(aVar, fVar.a(), strA);
            }
        }
        if (str == null) {
            throw new ProtocolException("Expected ':status' header not present");
        }
        m mVarA = m.a("HTTP/1.1 " + str);
        return new ac.a().a(y.HTTP_2).a(mVarA.f2675b).a(mVarA.f2676c).a(aVar.a());
    }

    @Override // c.a.d.h
    public ad a(ac acVar) throws IOException {
        return new j(acVar.f(), d.l.a(new a(this.p.g())));
    }

    @Override // c.a.d.h
    public void a() {
        c.a.c.e eVar = this.p;
        if (eVar != null) {
            eVar.b(c.a.c.a.CANCEL);
        }
    }

    class a extends d.h {
        public a(d.s sVar) {
            super(sVar);
        }

        @Override // d.h, d.s, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            d.this.n.a(false, (h) d.this);
            super.close();
        }
    }
}
