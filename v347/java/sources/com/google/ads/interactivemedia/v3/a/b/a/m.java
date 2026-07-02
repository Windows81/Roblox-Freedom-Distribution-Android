package com.google.ads.interactivemedia.v3.a.b.a;

import com.google.ads.interactivemedia.v3.a.n;
import com.google.ads.interactivemedia.v3.a.o;
import com.google.ads.interactivemedia.v3.a.q;
import com.google.ads.interactivemedia.v3.a.t;
import com.google.ads.interactivemedia.v3.a.w;
import com.google.ads.interactivemedia.v3.a.x;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.sql.Timestamp;
import java.util.BitSet;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final w<Class> f2639a = new w<Class>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.1
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Class cls) throws IOException {
            if (cls == null) {
                cVar.f();
            } else {
                String strValueOf = String.valueOf(cls.getName());
                throw new UnsupportedOperationException(new StringBuilder(String.valueOf(strValueOf).length() + 76).append("Attempted to serialize java.lang.Class: ").append(strValueOf).append(". Forgot to register a type adapter?").toString());
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Class read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final x f2640b = a(Class.class, f2639a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final w<BitSet> f2641c = new w<BitSet>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.12
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BitSet read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            boolean zI;
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            BitSet bitSet = new BitSet();
            aVar.a();
            com.google.ads.interactivemedia.v3.a.d.b bVarF = aVar.f();
            int i2 = 0;
            while (bVarF != com.google.ads.interactivemedia.v3.a.d.b.END_ARRAY) {
                switch (AnonymousClass26.f2657a[bVarF.ordinal()]) {
                    case 1:
                        zI = aVar.m() != 0;
                        break;
                    case 2:
                        zI = aVar.i();
                        break;
                    case 3:
                        String strH = aVar.h();
                        try {
                            zI = Integer.parseInt(strH) != 0;
                        } catch (NumberFormatException e2) {
                            String strValueOf = String.valueOf(strH);
                            throw new t(strValueOf.length() != 0 ? "Error: Expecting: bitset number value (1, 0), Found: ".concat(strValueOf) : new String("Error: Expecting: bitset number value (1, 0), Found: "));
                        }
                        break;
                    default:
                        String strValueOf2 = String.valueOf(bVarF);
                        throw new t(new StringBuilder(String.valueOf(strValueOf2).length() + 27).append("Invalid bitset value type: ").append(strValueOf2).toString());
                }
                if (zI) {
                    bitSet.set(i2);
                }
                i2++;
                bVarF = aVar.f();
            }
            aVar.b();
            return bitSet;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, BitSet bitSet) throws IOException {
            if (bitSet == null) {
                cVar.f();
                return;
            }
            cVar.b();
            for (int i2 = 0; i2 < bitSet.length(); i2++) {
                cVar.a(bitSet.get(i2) ? 1 : 0);
            }
            cVar.c();
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final x f2642d = a(BitSet.class, f2641c);
    public static final w<Boolean> e = new w<Boolean>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.23
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
            }
            return Boolean.valueOf(aVar.i());
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Boolean bool) throws IOException {
            if (bool == null) {
                cVar.f();
            } else {
                cVar.a(bool.booleanValue());
            }
        }
    };
    public static final w<Boolean> f = new w<Boolean>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.27
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return Boolean.valueOf(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Boolean bool) throws IOException {
            cVar.b(bool == null ? "null" : bool.toString());
        }
    };
    public static final x g = a(Boolean.TYPE, Boolean.class, e);
    public static final w<Number> h = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.28
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Byte.valueOf((byte) aVar.m());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final x i = a(Byte.TYPE, Byte.class, h);
    public static final w<Number> j = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.29
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Short.valueOf((short) aVar.m());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final x k = a(Short.TYPE, Short.class, j);
    public static final w<Number> l = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.30
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Integer.valueOf(aVar.m());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final x m = a(Integer.TYPE, Integer.class, l);
    public static final w<Number> n = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.31
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return Long.valueOf(aVar.l());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final w<Number> o = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.32
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return Float.valueOf((float) aVar.k());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final w<Number> p = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.2
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return Double.valueOf(aVar.k());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final w<Number> q = new w<Number>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.3
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            com.google.ads.interactivemedia.v3.a.d.b bVarF = aVar.f();
            switch (bVarF) {
                case NUMBER:
                    return new com.google.ads.interactivemedia.v3.a.b.f(aVar.h());
                case BOOLEAN:
                case STRING:
                default:
                    String strValueOf = String.valueOf(bVarF);
                    throw new t(new StringBuilder(String.valueOf(strValueOf).length() + 23).append("Expecting number, got: ").append(strValueOf).toString());
                case NULL:
                    aVar.j();
                    return null;
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final x r = a(Number.class, q);
    public static final w<Character> s = new w<Character>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.4
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            String strH = aVar.h();
            if (strH.length() != 1) {
                String strValueOf = String.valueOf(strH);
                throw new t(strValueOf.length() != 0 ? "Expecting character, got: ".concat(strValueOf) : new String("Expecting character, got: "));
            }
            return Character.valueOf(strH.charAt(0));
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Character ch) throws IOException {
            cVar.b(ch == null ? null : String.valueOf(ch));
        }
    };
    public static final x t = a(Character.TYPE, Character.class, s);
    public static final w<String> u = new w<String>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.5
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            com.google.ads.interactivemedia.v3.a.d.b bVarF = aVar.f();
            if (bVarF == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            if (bVarF == com.google.ads.interactivemedia.v3.a.d.b.BOOLEAN) {
                return Boolean.toString(aVar.i());
            }
            return aVar.h();
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, String str) throws IOException {
            cVar.b(str);
        }
    };
    public static final w<BigDecimal> v = new w<BigDecimal>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.6
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigDecimal read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigDecimal(aVar.h());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, BigDecimal bigDecimal) throws IOException {
            cVar.a(bigDecimal);
        }
    };
    public static final w<BigInteger> w = new w<BigInteger>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.7
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BigInteger read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            try {
                return new BigInteger(aVar.h());
            } catch (NumberFormatException e2) {
                throw new t(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, BigInteger bigInteger) throws IOException {
            cVar.a(bigInteger);
        }
    };
    public static final x x = a(String.class, u);
    public static final w<StringBuilder> y = new w<StringBuilder>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.8
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return new StringBuilder(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, StringBuilder sb) throws IOException {
            cVar.b(sb == null ? null : sb.toString());
        }
    };
    public static final x z = a(StringBuilder.class, y);
    public static final w<StringBuffer> A = new w<StringBuffer>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.9
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuffer read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return new StringBuffer(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, StringBuffer stringBuffer) throws IOException {
            cVar.b(stringBuffer == null ? null : stringBuffer.toString());
        }
    };
    public static final x B = a(StringBuffer.class, A);
    public static final w<URL> C = new w<URL>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.10
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public URL read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            String strH = aVar.h();
            if ("null".equals(strH)) {
                return null;
            }
            return new URL(strH);
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, URL url) throws IOException {
            cVar.b(url == null ? null : url.toExternalForm());
        }
    };
    public static final x D = a(URL.class, C);
    public static final w<URI> E = new w<URI>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.11
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public URI read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
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
                throw new com.google.ads.interactivemedia.v3.a.m(e2);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, URI uri) throws IOException {
            cVar.b(uri == null ? null : uri.toASCIIString());
        }
    };
    public static final x F = a(URI.class, E);
    public static final w<InetAddress> G = new w<InetAddress>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.13
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InetAddress read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return InetAddress.getByName(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, InetAddress inetAddress) throws IOException {
            cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    };
    public static final x H = b(InetAddress.class, G);
    public static final w<UUID> I = new w<UUID>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.14
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public UUID read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return UUID.fromString(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, UUID uuid) throws IOException {
            cVar.b(uuid == null ? null : uuid.toString());
        }
    };
    public static final x J = a(UUID.class, I);
    public static final x K = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.15
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            if (aVar.a() != Timestamp.class) {
                return null;
            }
            final w<T> wVarA = fVar.a((Class) Date.class);
            return (w<T>) new w<Timestamp>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.15.1
                @Override // com.google.ads.interactivemedia.v3.a.w
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Timestamp read(com.google.ads.interactivemedia.v3.a.d.a aVar2) throws IOException {
                    Date date = (Date) wVarA.read(aVar2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.ads.interactivemedia.v3.a.w
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Timestamp timestamp) throws IOException {
                    wVarA.write(cVar, timestamp);
                }
            };
        }
    };
    public static final w<Calendar> L = new w<Calendar>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.16
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Calendar read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            int i2 = 0;
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                aVar.j();
                return null;
            }
            aVar.c();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.END_OBJECT) {
                String strG = aVar.g();
                int iM = aVar.m();
                if ("year".equals(strG)) {
                    i7 = iM;
                } else if ("month".equals(strG)) {
                    i6 = iM;
                } else if ("dayOfMonth".equals(strG)) {
                    i5 = iM;
                } else if ("hourOfDay".equals(strG)) {
                    i4 = iM;
                } else if ("minute".equals(strG)) {
                    i3 = iM;
                } else if ("second".equals(strG)) {
                    i2 = iM;
                }
            }
            aVar.d();
            return new GregorianCalendar(i7, i6, i5, i4, i3, i2);
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Calendar calendar) throws IOException {
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
    public static final x M = b(Calendar.class, GregorianCalendar.class, L);
    public static final w<Locale> N = new w<Locale>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.17
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Locale read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() == com.google.ads.interactivemedia.v3.a.d.b.NULL) {
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

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, Locale locale) throws IOException {
            cVar.b(locale == null ? null : locale.toString());
        }
    };
    public static final x O = a(Locale.class, N);
    public static final w<com.google.ads.interactivemedia.v3.a.l> P = new w<com.google.ads.interactivemedia.v3.a.l>() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.18
        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.google.ads.interactivemedia.v3.a.l read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            switch (AnonymousClass26.f2657a[aVar.f().ordinal()]) {
                case 1:
                    return new q(new com.google.ads.interactivemedia.v3.a.b.f(aVar.h()));
                case 2:
                    return new q(Boolean.valueOf(aVar.i()));
                case 3:
                    return new q(aVar.h());
                case 4:
                    aVar.j();
                    return n.f2759a;
                case 5:
                    com.google.ads.interactivemedia.v3.a.i iVar = new com.google.ads.interactivemedia.v3.a.i();
                    aVar.a();
                    while (aVar.e()) {
                        iVar.a(read(aVar));
                    }
                    aVar.b();
                    return iVar;
                case 6:
                    o oVar = new o();
                    aVar.c();
                    while (aVar.e()) {
                        oVar.a(aVar.g(), read(aVar));
                    }
                    aVar.d();
                    return oVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, com.google.ads.interactivemedia.v3.a.l lVar) throws IOException {
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
                Iterator<com.google.ads.interactivemedia.v3.a.l> it = lVar.l().iterator();
                while (it.hasNext()) {
                    write(cVar, it.next());
                }
                cVar.c();
                return;
            }
            if (lVar.h()) {
                cVar.d();
                for (Map.Entry<String, com.google.ads.interactivemedia.v3.a.l> entry : lVar.k().o()) {
                    cVar.a(entry.getKey());
                    write(cVar, entry.getValue());
                }
                cVar.e();
                return;
            }
            String strValueOf = String.valueOf(lVar.getClass());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 15).append("Couldn't write ").append(strValueOf).toString());
        }
    };
    public static final x Q = b(com.google.ads.interactivemedia.v3.a.l.class, P);
    public static final x R = new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.19
        @Override // com.google.ads.interactivemedia.v3.a.x
        public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
            Class<? super T> clsA = aVar.a();
            if (!Enum.class.isAssignableFrom(clsA) || clsA == Enum.class) {
                return null;
            }
            if (!clsA.isEnum()) {
                clsA = clsA.getSuperclass();
            }
            return new a(clsA);
        }
    };

    private static final class a<T extends Enum<T>> extends w<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f2658a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f2659b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    com.google.ads.interactivemedia.v3.a.a.c cVar = (com.google.ads.interactivemedia.v3.a.a.c) cls.getField(strName).getAnnotation(com.google.ads.interactivemedia.v3.a.a.c.class);
                    if (cVar != null) {
                        strName = cVar.a();
                        String[] strArrB = cVar.b();
                        for (String str : strArrB) {
                            this.f2658a.put(str, t);
                        }
                    }
                    String str2 = strName;
                    this.f2658a.put(str2, t);
                    this.f2659b.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError();
            }
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T read(com.google.ads.interactivemedia.v3.a.d.a aVar) throws IOException {
            if (aVar.f() != com.google.ads.interactivemedia.v3.a.d.b.NULL) {
                return this.f2658a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.ads.interactivemedia.v3.a.w
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void write(com.google.ads.interactivemedia.v3.a.d.c cVar, T t) throws IOException {
            cVar.b(t == null ? null : this.f2659b.get(t));
        }
    }

    public static <TT> x a(final com.google.ads.interactivemedia.v3.a.c.a<TT> aVar, final w<TT> wVar) {
        return new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.20
            @Override // com.google.ads.interactivemedia.v3.a.x
            public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar2) {
                if (aVar2.equals(aVar)) {
                    return wVar;
                }
                return null;
            }
        };
    }

    public static <TT> x a(final Class<TT> cls, final w<TT> wVar) {
        return new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.21
            @Override // com.google.ads.interactivemedia.v3.a.x
            public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
                if (aVar.a() == cls) {
                    return wVar;
                }
                return null;
            }

            public String toString() {
                String strValueOf = String.valueOf(cls.getName());
                String strValueOf2 = String.valueOf(wVar);
                return new StringBuilder(String.valueOf(strValueOf).length() + 23 + String.valueOf(strValueOf2).length()).append("Factory[type=").append(strValueOf).append(",adapter=").append(strValueOf2).append("]").toString();
            }
        };
    }

    public static <TT> x a(final Class<TT> cls, final Class<TT> cls2, final w<? super TT> wVar) {
        return new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.22
            @Override // com.google.ads.interactivemedia.v3.a.x
            public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return wVar;
                }
                return null;
            }

            public String toString() {
                String strValueOf = String.valueOf(cls2.getName());
                String strValueOf2 = String.valueOf(cls.getName());
                String strValueOf3 = String.valueOf(wVar);
                return new StringBuilder(String.valueOf(strValueOf).length() + 24 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append("Factory[type=").append(strValueOf).append("+").append(strValueOf2).append(",adapter=").append(strValueOf3).append("]").toString();
            }
        };
    }

    public static <TT> x b(final Class<TT> cls, final Class<? extends TT> cls2, final w<? super TT> wVar) {
        return new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.24
            @Override // com.google.ads.interactivemedia.v3.a.x
            public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
                Class<? super T> clsA = aVar.a();
                if (clsA == cls || clsA == cls2) {
                    return wVar;
                }
                return null;
            }

            public String toString() {
                String strValueOf = String.valueOf(cls.getName());
                String strValueOf2 = String.valueOf(cls2.getName());
                String strValueOf3 = String.valueOf(wVar);
                return new StringBuilder(String.valueOf(strValueOf).length() + 24 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append("Factory[type=").append(strValueOf).append("+").append(strValueOf2).append(",adapter=").append(strValueOf3).append("]").toString();
            }
        };
    }

    public static <TT> x b(final Class<TT> cls, final w<TT> wVar) {
        return new x() { // from class: com.google.ads.interactivemedia.v3.a.b.a.m.25
            @Override // com.google.ads.interactivemedia.v3.a.x
            public <T> w<T> a(com.google.ads.interactivemedia.v3.a.f fVar, com.google.ads.interactivemedia.v3.a.c.a<T> aVar) {
                if (cls.isAssignableFrom(aVar.a())) {
                    return wVar;
                }
                return null;
            }

            public String toString() {
                String strValueOf = String.valueOf(cls.getName());
                String strValueOf2 = String.valueOf(wVar);
                return new StringBuilder(String.valueOf(strValueOf).length() + 32 + String.valueOf(strValueOf2).length()).append("Factory[typeHierarchy=").append(strValueOf).append(",adapter=").append(strValueOf2).append("]").toString();
            }
        };
    }
}
