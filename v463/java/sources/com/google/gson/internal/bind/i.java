package com.google.gson.internal.bind;

import com.google.gson.internal.bind.i;
import com.google.gson.l;
import com.google.gson.m;
import com.google.gson.n;
import com.google.gson.o;
import com.google.gson.q;
import com.google.gson.t;
import com.google.gson.v;
import com.google.gson.w;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i {
    public static final v<String> A;
    public static final v<BigDecimal> B;
    public static final v<BigInteger> C;
    public static final w D;
    public static final v<StringBuilder> E;
    public static final w F;
    public static final v<StringBuffer> G;
    public static final w H;
    public static final v<URL> I;
    public static final w J;
    public static final v<URI> K;
    public static final w L;
    public static final v<InetAddress> M;
    public static final w N;
    public static final v<UUID> O;
    public static final w P;
    public static final v<Currency> Q;
    public static final w R;
    public static final w S;
    public static final v<Calendar> T;
    public static final w U;
    public static final v<Locale> V;
    public static final w W;
    public static final v<l> X;
    public static final w Y;
    public static final w Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v<Class> f5443a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w f5444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v<BitSet> f5445c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final w f5446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final v<Boolean> f5447e;
    public static final v<Boolean> f;
    public static final w g;
    public static final v<Number> h;
    public static final w i;
    public static final v<Number> j;
    public static final w k;
    public static final v<Number> l;
    public static final w m;
    public static final v<AtomicInteger> n;
    public static final w o;
    public static final v<AtomicBoolean> p;
    public static final w q;
    public static final v<AtomicIntegerArray> r;
    public static final w s;
    public static final v<Number> t;
    public static final v<Number> u;
    public static final v<Number> v;
    public static final v<Number> w;
    public static final w x;
    public static final v<Character> y;
    public static final w z;

    static {
        v<Class> vVarA = new v<Class>() { // from class: com.google.gson.internal.bind.i.1
            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Class cls) throws IOException {
                throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
            }

            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Class b(com.google.gson.c.a aVar) throws IOException {
                throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
            }
        }.a();
        f5443a = vVarA;
        f5444b = a(Class.class, vVarA);
        v<BitSet> vVarA2 = new v<BitSet>() { // from class: com.google.gson.internal.bind.i.12
            /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public java.util.BitSet b(com.google.gson.c.a r8) throws java.io.IOException {
                /*
                    r7 = this;
                    java.util.BitSet r0 = new java.util.BitSet
                    r0.<init>()
                    r8.a()
                    com.google.gson.c.b r1 = r8.f()
                    r2 = 0
                    r3 = 0
                Le:
                    com.google.gson.c.b r4 = com.google.gson.c.b.END_ARRAY
                    if (r1 == r4) goto L75
                    int[] r4 = com.google.gson.internal.bind.i.AnonymousClass23.f5448a
                    int r5 = r1.ordinal()
                    r4 = r4[r5]
                    r5 = 1
                    if (r4 == r5) goto L63
                    r6 = 2
                    if (r4 == r6) goto L5e
                    r6 = 3
                    if (r4 != r6) goto L47
                    java.lang.String r1 = r8.h()
                    int r1 = java.lang.Integer.parseInt(r1)     // Catch: java.lang.NumberFormatException -> L30
                    if (r1 == 0) goto L2e
                    goto L69
                L2e:
                    r5 = 0
                    goto L69
                L30:
                    com.google.gson.t r8 = new com.google.gson.t
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r2 = "Error: Expecting: bitset number value (1, 0), Found: "
                    r0.append(r2)
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    r8.<init>(r0)
                    throw r8
                L47:
                    com.google.gson.t r8 = new com.google.gson.t
                    java.lang.StringBuilder r0 = new java.lang.StringBuilder
                    r0.<init>()
                    java.lang.String r2 = "Invalid bitset value type: "
                    r0.append(r2)
                    r0.append(r1)
                    java.lang.String r0 = r0.toString()
                    r8.<init>(r0)
                    throw r8
                L5e:
                    boolean r5 = r8.i()
                    goto L69
                L63:
                    int r1 = r8.m()
                    if (r1 == 0) goto L2e
                L69:
                    if (r5 == 0) goto L6e
                    r0.set(r3)
                L6e:
                    int r3 = r3 + 1
                    com.google.gson.c.b r1 = r8.f()
                    goto Le
                L75:
                    r8.b()
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.i.AnonymousClass12.b(com.google.gson.c.a):java.util.BitSet");
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, BitSet bitSet) throws IOException {
                cVar.b();
                int length = bitSet.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(bitSet.get(i2) ? 1L : 0L);
                }
                cVar.c();
            }
        }.a();
        f5445c = vVarA2;
        f5446d = a(BitSet.class, vVarA2);
        f5447e = new v<Boolean>() { // from class: com.google.gson.internal.bind.i.22
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b(com.google.gson.c.a aVar) throws IOException {
                com.google.gson.c.b bVarF = aVar.f();
                if (bVarF == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                if (bVarF == com.google.gson.c.b.STRING) {
                    return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
                }
                return Boolean.valueOf(aVar.i());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Boolean bool) throws IOException {
                cVar.a(bool);
            }
        };
        f = new v<Boolean>() { // from class: com.google.gson.internal.bind.i.24
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Boolean.valueOf(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Boolean bool) throws IOException {
                cVar.b(bool == null ? "null" : bool.toString());
            }
        };
        g = a(Boolean.TYPE, Boolean.class, f5447e);
        h = new v<Number>() { // from class: com.google.gson.internal.bind.i.25
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Byte.valueOf((byte) aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        i = a(Byte.TYPE, Byte.class, h);
        j = new v<Number>() { // from class: com.google.gson.internal.bind.i.26
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Short.valueOf((short) aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        k = a(Short.TYPE, Short.class, j);
        l = new v<Number>() { // from class: com.google.gson.internal.bind.i.27
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Integer.valueOf(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        m = a(Integer.TYPE, Integer.class, l);
        v<AtomicInteger> vVarA3 = new v<AtomicInteger>() { // from class: com.google.gson.internal.bind.i.28
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AtomicInteger b(com.google.gson.c.a aVar) throws IOException {
                try {
                    return new AtomicInteger(aVar.m());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, AtomicInteger atomicInteger) throws IOException {
                cVar.a(atomicInteger.get());
            }
        }.a();
        n = vVarA3;
        o = a(AtomicInteger.class, vVarA3);
        v<AtomicBoolean> vVarA4 = new v<AtomicBoolean>() { // from class: com.google.gson.internal.bind.i.29
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AtomicBoolean b(com.google.gson.c.a aVar) throws IOException {
                return new AtomicBoolean(aVar.i());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, AtomicBoolean atomicBoolean) throws IOException {
                cVar.a(atomicBoolean.get());
            }
        }.a();
        p = vVarA4;
        q = a(AtomicBoolean.class, vVarA4);
        v<AtomicIntegerArray> vVarA5 = new v<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.i.2
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public AtomicIntegerArray b(com.google.gson.c.a aVar) throws IOException {
                ArrayList arrayList = new ArrayList();
                aVar.a();
                while (aVar.e()) {
                    try {
                        arrayList.add(Integer.valueOf(aVar.m()));
                    } catch (NumberFormatException e2) {
                        throw new t(e2);
                    }
                }
                aVar.b();
                int size = arrayList.size();
                AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
                for (int i2 = 0; i2 < size; i2++) {
                    atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
                }
                return atomicIntegerArray;
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, AtomicIntegerArray atomicIntegerArray) throws IOException {
                cVar.b();
                int length = atomicIntegerArray.length();
                for (int i2 = 0; i2 < length; i2++) {
                    cVar.a(atomicIntegerArray.get(i2));
                }
                cVar.c();
            }
        }.a();
        r = vVarA5;
        s = a(AtomicIntegerArray.class, vVarA5);
        t = new v<Number>() { // from class: com.google.gson.internal.bind.i.3
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return Long.valueOf(aVar.l());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        u = new v<Number>() { // from class: com.google.gson.internal.bind.i.4
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Float.valueOf((float) aVar.k());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        v = new v<Number>() { // from class: com.google.gson.internal.bind.i.5
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return Double.valueOf(aVar.k());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        v<Number> vVar = new v<Number>() { // from class: com.google.gson.internal.bind.i.6
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Number b(com.google.gson.c.a aVar) throws IOException {
                com.google.gson.c.b bVarF = aVar.f();
                int i2 = AnonymousClass23.f5448a[bVarF.ordinal()];
                if (i2 == 1 || i2 == 3) {
                    return new com.google.gson.internal.f(aVar.h());
                }
                if (i2 == 4) {
                    aVar.j();
                    return null;
                }
                throw new t("Expecting number, got: " + bVarF);
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Number number) throws IOException {
                cVar.a(number);
            }
        };
        w = vVar;
        x = a(Number.class, vVar);
        y = new v<Character>() { // from class: com.google.gson.internal.bind.i.7
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Character b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if (strH.length() != 1) {
                    throw new t("Expecting character, got: " + strH);
                }
                return Character.valueOf(strH.charAt(0));
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Character ch) throws IOException {
                cVar.b(ch == null ? null : String.valueOf(ch));
            }
        };
        z = a(Character.TYPE, Character.class, y);
        A = new v<String>() { // from class: com.google.gson.internal.bind.i.8
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String b(com.google.gson.c.a aVar) throws IOException {
                com.google.gson.c.b bVarF = aVar.f();
                if (bVarF == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                if (bVarF == com.google.gson.c.b.BOOLEAN) {
                    return Boolean.toString(aVar.i());
                }
                return aVar.h();
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, String str) throws IOException {
                cVar.b(str);
            }
        };
        B = new v<BigDecimal>() { // from class: com.google.gson.internal.bind.i.9
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BigDecimal b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigDecimal(aVar.h());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, BigDecimal bigDecimal) throws IOException {
                cVar.a(bigDecimal);
            }
        };
        C = new v<BigInteger>() { // from class: com.google.gson.internal.bind.i.10
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public BigInteger b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    return new BigInteger(aVar.h());
                } catch (NumberFormatException e2) {
                    throw new t(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, BigInteger bigInteger) throws IOException {
                cVar.a(bigInteger);
            }
        };
        D = a(String.class, A);
        v<StringBuilder> vVar2 = new v<StringBuilder>() { // from class: com.google.gson.internal.bind.i.11
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public StringBuilder b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return new StringBuilder(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, StringBuilder sb) throws IOException {
                cVar.b(sb == null ? null : sb.toString());
            }
        };
        E = vVar2;
        F = a(StringBuilder.class, vVar2);
        v<StringBuffer> vVar3 = new v<StringBuffer>() { // from class: com.google.gson.internal.bind.i.13
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public StringBuffer b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return new StringBuffer(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, StringBuffer stringBuffer) throws IOException {
                cVar.b(stringBuffer == null ? null : stringBuffer.toString());
            }
        };
        G = vVar3;
        H = a(StringBuffer.class, vVar3);
        v<URL> vVar4 = new v<URL>() { // from class: com.google.gson.internal.bind.i.14
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public URL b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                String strH = aVar.h();
                if ("null".equals(strH)) {
                    return null;
                }
                return new URL(strH);
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, URL url) throws IOException {
                cVar.b(url == null ? null : url.toExternalForm());
            }
        };
        I = vVar4;
        J = a(URL.class, vVar4);
        v<URI> vVar5 = new v<URI>() { // from class: com.google.gson.internal.bind.i.15
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public URI b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                try {
                    String strH = aVar.h();
                    if ("null".equals(strH)) {
                        return null;
                    }
                    return new URI(strH);
                } catch (URISyntaxException e2) {
                    throw new m(e2);
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, URI uri) throws IOException {
                cVar.b(uri == null ? null : uri.toASCIIString());
            }
        };
        K = vVar5;
        L = a(URI.class, vVar5);
        v<InetAddress> vVar6 = new v<InetAddress>() { // from class: com.google.gson.internal.bind.i.16
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public InetAddress b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return InetAddress.getByName(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, InetAddress inetAddress) throws IOException {
                cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
            }
        };
        M = vVar6;
        N = b(InetAddress.class, vVar6);
        v<UUID> vVar7 = new v<UUID>() { // from class: com.google.gson.internal.bind.i.17
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UUID b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                return UUID.fromString(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, UUID uuid) throws IOException {
                cVar.b(uuid == null ? null : uuid.toString());
            }
        };
        O = vVar7;
        P = a(UUID.class, vVar7);
        v<Currency> vVarA6 = new v<Currency>() { // from class: com.google.gson.internal.bind.i.18
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Currency b(com.google.gson.c.a aVar) throws IOException {
                return Currency.getInstance(aVar.h());
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Currency currency) throws IOException {
                cVar.b(currency.getCurrencyCode());
            }
        }.a();
        Q = vVarA6;
        R = a(Currency.class, vVarA6);
        S = new w() { // from class: com.google.gson.internal.bind.TypeAdapters$26
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                if (aVar.a() != Timestamp.class) {
                    return null;
                }
                final v<T> vVarA7 = fVar.a((Class) Date.class);
                return (v<T>) new v<Timestamp>() { // from class: com.google.gson.internal.bind.TypeAdapters$26.1
                    @Override // com.google.gson.v
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public Timestamp b(com.google.gson.c.a aVar2) throws IOException {
                        Date date = (Date) vVarA7.b(aVar2);
                        if (date != null) {
                            return new Timestamp(date.getTime());
                        }
                        return null;
                    }

                    @Override // com.google.gson.v
                    public void a(com.google.gson.c.c cVar, Timestamp timestamp) throws IOException {
                        vVarA7.a(cVar, timestamp);
                    }
                };
            }
        };
        v<Calendar> vVar8 = new v<Calendar>() { // from class: com.google.gson.internal.bind.i.19
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Calendar b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                aVar.c();
                int i2 = 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                while (aVar.f() != com.google.gson.c.b.END_OBJECT) {
                    String strG = aVar.g();
                    int iM = aVar.m();
                    if ("year".equals(strG)) {
                        i2 = iM;
                    } else if ("month".equals(strG)) {
                        i3 = iM;
                    } else if ("dayOfMonth".equals(strG)) {
                        i4 = iM;
                    } else if ("hourOfDay".equals(strG)) {
                        i5 = iM;
                    } else if ("minute".equals(strG)) {
                        i6 = iM;
                    } else if ("second".equals(strG)) {
                        i7 = iM;
                    }
                }
                aVar.d();
                return new GregorianCalendar(i2, i3, i4, i5, i6, i7);
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Calendar calendar) throws IOException {
                if (calendar == null) {
                    cVar.f();
                    return;
                }
                cVar.d();
                cVar.a("year");
                cVar.a(calendar.get(1));
                cVar.a("month");
                cVar.a(calendar.get(2));
                cVar.a("dayOfMonth");
                cVar.a(calendar.get(5));
                cVar.a("hourOfDay");
                cVar.a(calendar.get(11));
                cVar.a("minute");
                cVar.a(calendar.get(12));
                cVar.a("second");
                cVar.a(calendar.get(13));
                cVar.e();
            }
        };
        T = vVar8;
        U = b(Calendar.class, GregorianCalendar.class, vVar8);
        v<Locale> vVar9 = new v<Locale>() { // from class: com.google.gson.internal.bind.i.20
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Locale b(com.google.gson.c.a aVar) throws IOException {
                if (aVar.f() == com.google.gson.c.b.NULL) {
                    aVar.j();
                    return null;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(aVar.h(), "_");
                String strNextToken = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken2 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                String strNextToken3 = stringTokenizer.hasMoreElements() ? stringTokenizer.nextToken() : null;
                if (strNextToken2 == null && strNextToken3 == null) {
                    return new Locale(strNextToken);
                }
                if (strNextToken3 == null) {
                    return new Locale(strNextToken, strNextToken2);
                }
                return new Locale(strNextToken, strNextToken2, strNextToken3);
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, Locale locale) throws IOException {
                cVar.b(locale == null ? null : locale.toString());
            }
        };
        V = vVar9;
        W = a(Locale.class, vVar9);
        v<l> vVar10 = new v<l>() { // from class: com.google.gson.internal.bind.i.21
            @Override // com.google.gson.v
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public l b(com.google.gson.c.a aVar) throws IOException {
                switch (AnonymousClass23.f5448a[aVar.f().ordinal()]) {
                    case 1:
                        return new q(new com.google.gson.internal.f(aVar.h()));
                    case 2:
                        return new q(Boolean.valueOf(aVar.i()));
                    case 3:
                        return new q(aVar.h());
                    case 4:
                        aVar.j();
                        return n.f5507a;
                    case 5:
                        com.google.gson.i iVar = new com.google.gson.i();
                        aVar.a();
                        while (aVar.e()) {
                            iVar.a(b(aVar));
                        }
                        aVar.b();
                        return iVar;
                    case 6:
                        o oVar = new o();
                        aVar.c();
                        while (aVar.e()) {
                            oVar.a(aVar.g(), b(aVar));
                        }
                        aVar.d();
                        return oVar;
                    default:
                        throw new IllegalArgumentException();
                }
            }

            @Override // com.google.gson.v
            public void a(com.google.gson.c.c cVar, l lVar) throws IOException {
                if (lVar == null || lVar.j()) {
                    cVar.f();
                    return;
                }
                if (lVar.i()) {
                    q qVarM = lVar.m();
                    if (qVarM.p()) {
                        cVar.a(qVarM.a());
                        return;
                    } else if (qVarM.o()) {
                        cVar.a(qVarM.f());
                        return;
                    } else {
                        cVar.b(qVarM.b());
                        return;
                    }
                }
                if (lVar.g()) {
                    cVar.b();
                    Iterator<l> it = lVar.l().iterator();
                    while (it.hasNext()) {
                        a(cVar, it.next());
                    }
                    cVar.c();
                    return;
                }
                if (lVar.h()) {
                    cVar.d();
                    for (Map.Entry<String, l> entry : lVar.k().o()) {
                        cVar.a(entry.getKey());
                        a(cVar, entry.getValue());
                    }
                    cVar.e();
                    return;
                }
                throw new IllegalArgumentException("Couldn't write " + lVar.getClass());
            }
        };
        X = vVar10;
        Y = b(l.class, vVar10);
        Z = new w() { // from class: com.google.gson.internal.bind.TypeAdapters$30
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (!Enum.class.isAssignableFrom(clsA) || clsA == Enum.class) {
                    return null;
                }
                if (!clsA.isEnum()) {
                    clsA = clsA.getSuperclass();
                }
                return new i.a(clsA);
            }
        };
    }

    /* JADX INFO: renamed from: com.google.gson.internal.bind.i$23, reason: invalid class name */
    static /* synthetic */ class AnonymousClass23 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5448a;

        static {
            int[] iArr = new int[com.google.gson.c.b.values().length];
            f5448a = iArr;
            try {
                iArr[com.google.gson.c.b.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5448a[com.google.gson.c.b.BOOLEAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5448a[com.google.gson.c.b.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f5448a[com.google.gson.c.b.NULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f5448a[com.google.gson.c.b.BEGIN_ARRAY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f5448a[com.google.gson.c.b.BEGIN_OBJECT.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f5448a[com.google.gson.c.b.END_DOCUMENT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f5448a[com.google.gson.c.b.NAME.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f5448a[com.google.gson.c.b.END_OBJECT.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f5448a[com.google.gson.c.b.END_ARRAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a<T extends Enum<T>> extends v<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f5449a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f5450b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    com.google.gson.a.c cVar = (com.google.gson.a.c) cls.getField(strName).getAnnotation(com.google.gson.a.c.class);
                    if (cVar != null) {
                        strName = cVar.a();
                        for (String str : cVar.b()) {
                            this.f5449a.put(str, t);
                        }
                    }
                    this.f5449a.put(strName, t);
                    this.f5450b.put(t, strName);
                }
            } catch (NoSuchFieldException e2) {
                throw new AssertionError(e2);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            return this.f5449a.get(aVar.h());
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, T t) throws IOException {
            cVar.b(t == null ? null : this.f5450b.get(t));
        }
    }

    public static <TT> w a(final Class<TT> cls, final v<TT> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$32
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                if (aVar.a() == cls) {
                    return vVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <TT> w a(final Class<TT> cls, final Class<TT> cls2, final v<? super TT> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$33
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return vVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls2.getName() + "+" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <TT> w b(final Class<TT> cls, final Class<? extends TT> cls2, final v<? super TT> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$34
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.f fVar, com.google.gson.b.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return vVar;
                }
                return null;
            }

            public String toString() {
                return "Factory[type=" + cls.getName() + "+" + cls2.getName() + ",adapter=" + vVar + "]";
            }
        };
    }

    public static <T1> w b(final Class<T1> cls, final v<T1> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$35
            @Override // com.google.gson.w
            public <T2> v<T2> a(com.google.gson.f fVar, com.google.gson.b.a<T2> aVar) {
                final Class<? super T2> clsA = aVar.a();
                if (cls.isAssignableFrom(clsA)) {
                    return (v<T2>) new v<T1>() { // from class: com.google.gson.internal.bind.TypeAdapters$35.1
                        @Override // com.google.gson.v
                        public void a(com.google.gson.c.c cVar, T1 t1) throws IOException {
                            vVar.a(cVar, t1);
                        }

                        @Override // com.google.gson.v
                        public T1 b(com.google.gson.c.a aVar2) throws IOException {
                            T1 t1 = (T1) vVar.b(aVar2);
                            if (t1 == null || clsA.isInstance(t1)) {
                                return t1;
                            }
                            throw new t("Expected a " + clsA.getName() + " but was " + t1.getClass().getName());
                        }
                    };
                }
                return null;
            }

            public String toString() {
                return "Factory[typeHierarchy=" + cls.getName() + ",adapter=" + vVar + "]";
            }
        };
    }
}
