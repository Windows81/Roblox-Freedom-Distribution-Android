package com.google.gson.internal.bind;

import com.google.gson.internal.bind.i;
import com.google.gson.k;
import com.google.gson.l;
import com.google.gson.m;
import com.google.gson.n;
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

/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final v<Class> f6277a = new v<Class>() { // from class: com.google.gson.internal.bind.i.1
        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Class cls) throws IOException {
            if (cls == null) {
                cVar.f();
                return;
            }
            throw new UnsupportedOperationException("Attempted to serialize java.lang.Class: " + cls.getName() + ". Forgot to register a type adapter?");
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Class b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            throw new UnsupportedOperationException("Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?");
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final w f6278b = a(Class.class, f6277a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final v<BitSet> f6279c = new v<BitSet>() { // from class: com.google.gson.internal.bind.i.12
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public BitSet b(com.google.gson.c.a aVar) throws IOException {
            boolean zI;
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            BitSet bitSet = new BitSet();
            aVar.a();
            com.google.gson.c.b bVarF = aVar.f();
            int i2 = 0;
            while (bVarF != com.google.gson.c.b.END_ARRAY) {
                switch (AnonymousClass23.f6281a[bVarF.ordinal()]) {
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
                            throw new t("Error: Expecting: bitset number value (1, 0), Found: " + strH);
                        }
                        break;
                    default:
                        throw new t("Invalid bitset value type: " + bVarF);
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

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, BitSet bitSet) throws IOException {
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
    public static final w f6280d = a(BitSet.class, f6279c);
    public static final v<Boolean> e = new v<Boolean>() { // from class: com.google.gson.internal.bind.i.22
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            if (aVar.f() == com.google.gson.c.b.STRING) {
                return Boolean.valueOf(Boolean.parseBoolean(aVar.h()));
            }
            return Boolean.valueOf(aVar.i());
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Boolean bool) throws IOException {
            cVar.a(bool);
        }
    };
    public static final v<Boolean> f = new v<Boolean>() { // from class: com.google.gson.internal.bind.i.24
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return Boolean.valueOf(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Boolean bool) throws IOException {
            cVar.b(bool == null ? "null" : bool.toString());
        }
    };
    public static final w g = a(Boolean.TYPE, Boolean.class, e);
    public static final v<Number> h = new v<Number>() { // from class: com.google.gson.internal.bind.i.25
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
    public static final w i = a(Byte.TYPE, Byte.class, h);
    public static final v<Number> j = new v<Number>() { // from class: com.google.gson.internal.bind.i.26
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
    public static final w k = a(Short.TYPE, Short.class, j);
    public static final v<Number> l = new v<Number>() { // from class: com.google.gson.internal.bind.i.27
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
    public static final w m = a(Integer.TYPE, Integer.class, l);
    public static final v<AtomicInteger> n = new v<AtomicInteger>() { // from class: com.google.gson.internal.bind.i.28
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
    public static final w o = a(AtomicInteger.class, n);
    public static final v<AtomicBoolean> p = new v<AtomicBoolean>() { // from class: com.google.gson.internal.bind.i.29
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
    public static final w q = a(AtomicBoolean.class, p);
    public static final v<AtomicIntegerArray> r = new v<AtomicIntegerArray>() { // from class: com.google.gson.internal.bind.i.2
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
    public static final w s = a(AtomicIntegerArray.class, r);
    public static final v<Number> t = new v<Number>() { // from class: com.google.gson.internal.bind.i.3
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
    public static final v<Number> u = new v<Number>() { // from class: com.google.gson.internal.bind.i.4
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return Float.valueOf((float) aVar.k());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final v<Number> v = new v<Number>() { // from class: com.google.gson.internal.bind.i.5
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return Double.valueOf(aVar.k());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final v<Number> w = new v<Number>() { // from class: com.google.gson.internal.bind.i.6
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Number b(com.google.gson.c.a aVar) throws IOException {
            com.google.gson.c.b bVarF = aVar.f();
            switch (bVarF) {
                case NUMBER:
                    return new com.google.gson.internal.e(aVar.h());
                case BOOLEAN:
                case STRING:
                default:
                    throw new t("Expecting number, got: " + bVarF);
                case NULL:
                    aVar.j();
                    return null;
            }
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, Number number) throws IOException {
            cVar.a(number);
        }
    };
    public static final w x = a(Number.class, w);
    public static final v<Character> y = new v<Character>() { // from class: com.google.gson.internal.bind.i.7
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
    public static final w z = a(Character.TYPE, Character.class, y);
    public static final v<String> A = new v<String>() { // from class: com.google.gson.internal.bind.i.8
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
    public static final v<BigDecimal> B = new v<BigDecimal>() { // from class: com.google.gson.internal.bind.i.9
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
    public static final v<BigInteger> C = new v<BigInteger>() { // from class: com.google.gson.internal.bind.i.10
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
    public static final w D = a(String.class, A);
    public static final v<StringBuilder> E = new v<StringBuilder>() { // from class: com.google.gson.internal.bind.i.11
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return new StringBuilder(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, StringBuilder sb) throws IOException {
            cVar.b(sb == null ? null : sb.toString());
        }
    };
    public static final w F = a(StringBuilder.class, E);
    public static final v<StringBuffer> G = new v<StringBuffer>() { // from class: com.google.gson.internal.bind.i.13
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuffer b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return new StringBuffer(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, StringBuffer stringBuffer) throws IOException {
            cVar.b(stringBuffer == null ? null : stringBuffer.toString());
        }
    };
    public static final w H = a(StringBuffer.class, G);
    public static final v<URL> I = new v<URL>() { // from class: com.google.gson.internal.bind.i.14
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
    public static final w J = a(URL.class, I);
    public static final v<URI> K = new v<URI>() { // from class: com.google.gson.internal.bind.i.15
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
                throw new l(e2);
            }
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, URI uri) throws IOException {
            cVar.b(uri == null ? null : uri.toASCIIString());
        }
    };
    public static final w L = a(URI.class, K);
    public static final v<InetAddress> M = new v<InetAddress>() { // from class: com.google.gson.internal.bind.i.16
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public InetAddress b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return InetAddress.getByName(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, InetAddress inetAddress) throws IOException {
            cVar.b(inetAddress == null ? null : inetAddress.getHostAddress());
        }
    };
    public static final w N = b(InetAddress.class, M);
    public static final v<UUID> O = new v<UUID>() { // from class: com.google.gson.internal.bind.i.17
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public UUID b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return UUID.fromString(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, UUID uuid) throws IOException {
            cVar.b(uuid == null ? null : uuid.toString());
        }
    };
    public static final w P = a(UUID.class, O);
    public static final v<Currency> Q = new v<Currency>() { // from class: com.google.gson.internal.bind.i.18
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
    public static final w R = a(Currency.class, Q);
    public static final w S = new w() { // from class: com.google.gson.internal.bind.TypeAdapters$26
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
            if (aVar.a() != Timestamp.class) {
                return null;
            }
            final v<T> vVarA = eVar.a((Class) Date.class);
            return (v<T>) new v<Timestamp>() { // from class: com.google.gson.internal.bind.TypeAdapters$26.1
                @Override // com.google.gson.v
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Timestamp b(com.google.gson.c.a aVar2) throws IOException {
                    Date date = (Date) vVarA.b(aVar2);
                    if (date != null) {
                        return new Timestamp(date.getTime());
                    }
                    return null;
                }

                @Override // com.google.gson.v
                public void a(com.google.gson.c.c cVar, Timestamp timestamp) throws IOException {
                    vVarA.a(cVar, timestamp);
                }
            };
        }
    };
    public static final v<Calendar> T = new v<Calendar>() { // from class: com.google.gson.internal.bind.i.19
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Calendar b(com.google.gson.c.a aVar) throws IOException {
            int i2 = 0;
            if (aVar.f() == com.google.gson.c.b.NULL) {
                aVar.j();
                return null;
            }
            aVar.c();
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            int i7 = 0;
            while (aVar.f() != com.google.gson.c.b.END_OBJECT) {
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
    public static final w U = b(Calendar.class, GregorianCalendar.class, T);
    public static final v<Locale> V = new v<Locale>() { // from class: com.google.gson.internal.bind.i.20
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
    public static final w W = a(Locale.class, V);
    public static final v<k> X = new v<k>() { // from class: com.google.gson.internal.bind.i.21
        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public k b(com.google.gson.c.a aVar) throws IOException {
            switch (AnonymousClass23.f6281a[aVar.f().ordinal()]) {
                case 1:
                    return new q((Number) new com.google.gson.internal.e(aVar.h()));
                case 2:
                    return new q(Boolean.valueOf(aVar.i()));
                case 3:
                    return new q(aVar.h());
                case 4:
                    aVar.j();
                    return m.f6335a;
                case 5:
                    com.google.gson.h hVar = new com.google.gson.h();
                    aVar.a();
                    while (aVar.e()) {
                        hVar.a(b(aVar));
                    }
                    aVar.b();
                    return hVar;
                case 6:
                    n nVar = new n();
                    aVar.c();
                    while (aVar.e()) {
                        nVar.a(aVar.g(), b(aVar));
                    }
                    aVar.d();
                    return nVar;
                default:
                    throw new IllegalArgumentException();
            }
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, k kVar) throws IOException {
            if (kVar == null || kVar.k()) {
                cVar.f();
                return;
            }
            if (kVar.j()) {
                q qVarN = kVar.n();
                if (qVarN.p()) {
                    cVar.a(qVarN.b());
                    return;
                } else if (qVarN.a()) {
                    cVar.a(qVarN.g());
                    return;
                } else {
                    cVar.b(qVarN.c());
                    return;
                }
            }
            if (kVar.h()) {
                cVar.b();
                Iterator<k> it = kVar.m().iterator();
                while (it.hasNext()) {
                    a(cVar, it.next());
                }
                cVar.c();
                return;
            }
            if (kVar.i()) {
                cVar.d();
                for (Map.Entry<String, k> entry : kVar.l().a()) {
                    cVar.a(entry.getKey());
                    a(cVar, entry.getValue());
                }
                cVar.e();
                return;
            }
            throw new IllegalArgumentException("Couldn't write " + kVar.getClass());
        }
    };
    public static final w Y = b(k.class, X);
    public static final w Z = new w() { // from class: com.google.gson.internal.bind.TypeAdapters$30
        @Override // com.google.gson.w
        public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
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

    /* JADX INFO: Access modifiers changed from: private */
    static final class a<T extends Enum<T>> extends v<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<String, T> f6282a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Map<T, String> f6283b = new HashMap();

        public a(Class<T> cls) {
            try {
                for (T t : cls.getEnumConstants()) {
                    String strName = t.name();
                    com.google.gson.a.c cVar = (com.google.gson.a.c) cls.getField(strName).getAnnotation(com.google.gson.a.c.class);
                    if (cVar != null) {
                        strName = cVar.a();
                        String[] strArrB = cVar.b();
                        for (String str : strArrB) {
                            this.f6282a.put(str, t);
                        }
                    }
                    String str2 = strName;
                    this.f6282a.put(str2, t);
                    this.f6283b.put(t, str2);
                }
            } catch (NoSuchFieldException e) {
                throw new AssertionError(e);
            }
        }

        @Override // com.google.gson.v
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public T b(com.google.gson.c.a aVar) throws IOException {
            if (aVar.f() != com.google.gson.c.b.NULL) {
                return this.f6282a.get(aVar.h());
            }
            aVar.j();
            return null;
        }

        @Override // com.google.gson.v
        public void a(com.google.gson.c.c cVar, T t) throws IOException {
            cVar.b(t == null ? null : this.f6283b.get(t));
        }
    }

    public static <TT> w a(final com.google.gson.b.a<TT> aVar, final v<TT> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$31
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar2) {
                if (aVar2.equals(aVar)) {
                    return vVar;
                }
                return null;
            }
        };
    }

    public static <TT> w a(final Class<TT> cls, final v<TT> vVar) {
        return new w() { // from class: com.google.gson.internal.bind.TypeAdapters$32
            @Override // com.google.gson.w
            public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
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
            public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
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
            public <T> v<T> a(com.google.gson.e eVar, com.google.gson.b.a<T> aVar) {
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
            public <T2> v<T2> a(com.google.gson.e eVar, com.google.gson.b.a<T2> aVar) {
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
                            if (t1 != null && !clsA.isInstance(t1)) {
                                throw new t("Expected a " + clsA.getName() + " but was " + t1.getClass().getName());
                            }
                            return t1;
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
