package b;

import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2066a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2069d;
    private final String e;
    private final int f;
    private final List<String> g;
    private final List<String> h;
    private final String i;
    private final String j;

    /* synthetic */ s(a aVar, AnonymousClass1 anonymousClass1) {
        this(aVar);
    }

    private s(a aVar) {
        this.f2067b = aVar.f2071a;
        this.f2068c = a(aVar.f2072b, false);
        this.f2069d = a(aVar.f2073c, false);
        this.e = aVar.f2074d;
        this.f = aVar.a();
        this.g = a(aVar.f, false);
        this.h = aVar.g != null ? a(aVar.g, true) : null;
        this.i = aVar.h != null ? a(aVar.h, false) : null;
        this.j = aVar.toString();
    }

    public URI a() {
        String string = n().b().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
    }

    public String b() {
        return this.f2067b;
    }

    public boolean c() {
        return this.f2067b.equals("https");
    }

    public String d() {
        if (this.f2068c.isEmpty()) {
            return "";
        }
        int length = this.f2067b.length() + 3;
        return this.j.substring(length, b.a.c.a(this.j, length, this.j.length(), ":@"));
    }

    public String e() {
        if (this.f2069d.isEmpty()) {
            return "";
        }
        return this.j.substring(this.j.indexOf(58, this.f2067b.length() + 3) + 1, this.j.indexOf(64));
    }

    public String f() {
        return this.e;
    }

    public int g() {
        return this.f;
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return 443;
        }
        return -1;
    }

    public String h() {
        int iIndexOf = this.j.indexOf(47, this.f2067b.length() + 3);
        return this.j.substring(iIndexOf, b.a.c.a(this.j, iIndexOf, this.j.length(), "?#"));
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public List<String> i() {
        int iIndexOf = this.j.indexOf(47, this.f2067b.length() + 3);
        int iA = b.a.c.a(this.j, iIndexOf, this.j.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i = iIndexOf + 1;
            iIndexOf = b.a.c.a(this.j, i, iA, '/');
            arrayList.add(this.j.substring(i, iIndexOf));
        }
        return arrayList;
    }

    public List<String> j() {
        return this.g;
    }

    public String k() {
        if (this.h == null) {
            return null;
        }
        int iIndexOf = this.j.indexOf(63) + 1;
        return this.j.substring(iIndexOf, b.a.c.a(this.j, iIndexOf + 1, this.j.length(), '#'));
    }

    static void b(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = list.get(i);
            String str2 = list.get(i + 1);
            if (i > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    static List<String> b(String str) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int iIndexOf = str.indexOf(38, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i = iIndexOf + 1;
        }
        return arrayList;
    }

    public String l() {
        if (this.h == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        b(sb, this.h);
        return sb.toString();
    }

    public String m() {
        if (this.i == null) {
            return null;
        }
        return this.j.substring(this.j.indexOf(35) + 1);
    }

    public s c(String str) {
        a aVarD = d(str);
        if (aVarD != null) {
            return aVarD.c();
        }
        return null;
    }

    public a n() {
        a aVar = new a();
        aVar.f2071a = this.f2067b;
        aVar.f2072b = d();
        aVar.f2073c = e();
        aVar.f2074d = this.e;
        aVar.e = this.f != a(this.f2067b) ? this.f : -1;
        aVar.f.clear();
        aVar.f.addAll(i());
        aVar.c(k());
        aVar.h = m();
        return aVar;
    }

    public a d(String str) {
        a aVar = new a();
        if (aVar.a(this, str) == a.EnumC0042a.SUCCESS) {
            return aVar;
        }
        return null;
    }

    public static s e(String str) {
        a aVar = new a();
        if (aVar.a((s) null, str) == a.EnumC0042a.SUCCESS) {
            return aVar.c();
        }
        return null;
    }

    /* JADX INFO: renamed from: b.s$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2070a = new int[a.EnumC0042a.values().length];

        static {
            try {
                f2070a[a.EnumC0042a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2070a[a.EnumC0042a.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f2070a[a.EnumC0042a.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f2070a[a.EnumC0042a.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f2070a[a.EnumC0042a.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && ((s) obj).j.equals(this.j);
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public String toString() {
        return this.j;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f2071a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f2074d;
        List<String> g;
        String h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f2072b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f2073c = "";
        int e = -1;
        final List<String> f = new ArrayList();

        /* JADX INFO: renamed from: b.s$a$a, reason: collision with other inner class name */
        enum EnumC0042a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            this.f.add("");
        }

        public a a(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f2071a = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.f2071a = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + str);
            }
            return this;
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("host == null");
            }
            String strE = e(str, 0, str.length());
            if (strE == null) {
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            this.f2074d = strE;
            return this;
        }

        public a a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.e = i;
            return this;
        }

        int a() {
            return this.e != -1 ? this.e : s.a(this.f2071a);
        }

        public a c(String str) {
            this.g = str != null ? s.b(s.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.g == null) {
                this.g = new ArrayList();
            }
            this.g.add(s.a(str, " \"'<>#&=", false, false, true, true));
            this.g.add(str2 != null ? s.a(str2, " \"'<>#&=", false, false, true, true) : null);
            return this;
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.g == null) {
                this.g = new ArrayList();
            }
            this.g.add(s.a(str, " \"'<>#&=", true, false, true, true));
            this.g.add(str2 != null ? s.a(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        a b() {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.set(i, s.a(this.f.get(i), "[]", true, true, false, true));
            }
            if (this.g != null) {
                int size2 = this.g.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.g.get(i2);
                    if (str != null) {
                        this.g.set(i2, s.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            if (this.h != null) {
                this.h = s.a(this.h, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public s c() {
            if (this.f2071a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f2074d == null) {
                throw new IllegalStateException("host == null");
            }
            return new s(this, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2071a);
            sb.append("://");
            if (!this.f2072b.isEmpty() || !this.f2073c.isEmpty()) {
                sb.append(this.f2072b);
                if (!this.f2073c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f2073c);
                }
                sb.append('@');
            }
            if (this.f2074d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f2074d);
                sb.append(']');
            } else {
                sb.append(this.f2074d);
            }
            int iA = a();
            if (iA != s.a(this.f2071a)) {
                sb.append(':');
                sb.append(iA);
            }
            s.a(sb, this.f);
            if (this.g != null) {
                sb.append('?');
                s.b(sb, this.g);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }

        EnumC0042a a(s sVar, String str) {
            int iA;
            int iA2 = b.a.c.a(str, 0, str.length());
            int iB = b.a.c.b(str, iA2, str.length());
            if (b(str, iA2, iB) != -1) {
                if (str.regionMatches(true, iA2, "https:", 0, 6)) {
                    this.f2071a = "https";
                    iA2 += "https:".length();
                } else if (str.regionMatches(true, iA2, "http:", 0, 5)) {
                    this.f2071a = "http";
                    iA2 += "http:".length();
                } else {
                    return EnumC0042a.UNSUPPORTED_SCHEME;
                }
            } else if (sVar != null) {
                this.f2071a = sVar.f2067b;
            } else {
                return EnumC0042a.MISSING_SCHEME;
            }
            boolean z = false;
            boolean z2 = false;
            int iC = c(str, iA2, iB);
            if (iC >= 2 || sVar == null || !sVar.f2067b.equals(this.f2071a)) {
                int i = iA2 + iC;
                while (true) {
                    boolean z3 = z2;
                    boolean z4 = z;
                    int i2 = i;
                    int iA3 = b.a.c.a(str, i2, iB, "@/\\?#");
                    switch (iA3 != iB ? str.charAt(iA3) : (byte) -1) {
                        case -1:
                        case 35:
                        case 47:
                        case 63:
                        case 92:
                            int iD = d(str, i2, iA3);
                            if (iD + 1 < iA3) {
                                this.f2074d = e(str, i2, iD);
                                this.e = g(str, iD + 1, iA3);
                                if (this.e == -1) {
                                    return EnumC0042a.INVALID_PORT;
                                }
                            } else {
                                this.f2074d = e(str, i2, iD);
                                this.e = s.a(this.f2071a);
                            }
                            if (this.f2074d == null) {
                                return EnumC0042a.INVALID_HOST;
                            }
                            iA2 = iA3;
                            break;
                        case 64:
                            if (z3) {
                                this.f2073c += "%40" + s.a(str, i2, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            } else {
                                int iA4 = b.a.c.a(str, i2, iA3, ':');
                                String strA = s.a(str, i2, iA4, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                if (z4) {
                                    strA = this.f2072b + "%40" + strA;
                                }
                                this.f2072b = strA;
                                if (iA4 != iA3) {
                                    z3 = true;
                                    this.f2073c = s.a(str, iA4 + 1, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                }
                                z4 = true;
                            }
                            i = iA3 + 1;
                            z2 = z3;
                            continue;
                            z = z4;
                            break;
                        default:
                            z2 = z3;
                            i = i2;
                            continue;
                            z = z4;
                            break;
                    }
                }
            } else {
                this.f2072b = sVar.d();
                this.f2073c = sVar.e();
                this.f2074d = sVar.e;
                this.e = sVar.f;
                this.f.clear();
                this.f.addAll(sVar.i());
                if (iA2 == iB || str.charAt(iA2) == '#') {
                    c(sVar.k());
                }
            }
            int iA5 = b.a.c.a(str, iA2, iB, "?#");
            a(str, iA2, iA5);
            if (iA5 >= iB || str.charAt(iA5) != '?') {
                iA = iA5;
            } else {
                iA = b.a.c.a(str, iA5, iB, '#');
                this.g = s.b(s.a(str, iA5 + 1, iA, " \"'<>#", true, false, true, true));
            }
            if (iA < iB && str.charAt(iA) == '#') {
                this.h = s.a(str, iA + 1, iB, "", true, false, false, false);
            }
            return EnumC0042a.SUCCESS;
        }

        private void a(String str, int i, int i2) {
            if (i != i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt == '/' || cCharAt == '\\') {
                    this.f.clear();
                    this.f.add("");
                    i++;
                } else {
                    this.f.set(this.f.size() - 1, "");
                }
                int i3 = i;
                while (i3 < i2) {
                    int iA = b.a.c.a(str, i3, i2, "/\\");
                    boolean z = iA < i2;
                    a(str, i3, iA, z, true);
                    if (z) {
                        iA++;
                    }
                    i3 = iA;
                }
            }
        }

        private void a(String str, int i, int i2, boolean z, boolean z2) {
            String strA = s.a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true);
            if (!d(strA)) {
                if (e(strA)) {
                    d();
                    return;
                }
                if (this.f.get(this.f.size() - 1).isEmpty()) {
                    this.f.set(this.f.size() - 1, strA);
                } else {
                    this.f.add(strA);
                }
                if (z) {
                    this.f.add("");
                }
            }
        }

        private boolean d(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean e(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void d() {
            if (this.f.remove(this.f.size() - 1).isEmpty() && !this.f.isEmpty()) {
                this.f.set(this.f.size() - 1, "");
            } else {
                this.f.add("");
            }
        }

        private static int b(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((cCharAt < 'a' || cCharAt > 'z') && (cCharAt < 'A' || cCharAt > 'Z')) {
                return -1;
            }
            for (int i3 = i + 1; i3 < i2; i3++) {
                char cCharAt2 = str.charAt(i3);
                if ((cCharAt2 < 'a' || cCharAt2 > 'z') && ((cCharAt2 < 'A' || cCharAt2 > 'Z') && ((cCharAt2 < '0' || cCharAt2 > '9') && cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.'))) {
                    if (cCharAt2 == ':') {
                        return i3;
                    }
                    return -1;
                }
            }
            return -1;
        }

        private static int c(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static int d(String str, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                switch (str.charAt(i3)) {
                    case ':':
                        return i3;
                    case '[':
                        do {
                            i3++;
                            if (i3 < i2) {
                            }
                            i3++;
                            break;
                        } while (str.charAt(i3) != ']');
                        i3++;
                        break;
                    default:
                        i3++;
                        break;
                }
            }
            return i2;
        }

        private static String e(String str, int i, int i2) {
            InetAddress inetAddressF;
            String strA = s.a(str, i, i2, false);
            if (strA.contains(":")) {
                if (strA.startsWith("[") && strA.endsWith("]")) {
                    inetAddressF = f(strA, 1, strA.length() - 1);
                } else {
                    inetAddressF = f(strA, 0, strA.length());
                }
                if (inetAddressF == null) {
                    return null;
                }
                byte[] address = inetAddressF.getAddress();
                if (address.length == 16) {
                    return a(address);
                }
                throw new AssertionError();
            }
            return b.a.c.a(strA);
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x002c, code lost:
        
            if (r2 == r8.length) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x002e, code lost:
        
            if (r1 != (-1)) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0085, code lost:
        
            java.lang.System.arraycopy(r8, r1, r8, r8.length - (r2 - r1), r2 - r1);
            java.util.Arrays.fill(r8, r1, (r8.length - r2) + r1, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x00a0, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:?, code lost:
        
            return java.net.InetAddress.getByAddress(r8);
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0042  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static java.net.InetAddress f(java.lang.String r12, int r13, int r14) {
            /*
                r11 = 1
                r7 = -1
                r3 = 0
                r5 = 0
                r0 = 16
                byte[] r8 = new byte[r0]
                r0 = r13
                r4 = r7
                r1 = r7
                r2 = r5
            Lc:
                if (r0 >= r14) goto L2b
                int r6 = r8.length
                if (r2 != r6) goto L13
                r0 = r3
            L12:
                return r0
            L13:
                int r6 = r0 + 2
                if (r6 > r14) goto L32
                java.lang.String r6 = "::"
                r9 = 2
                boolean r6 = r12.regionMatches(r0, r6, r5, r9)
                if (r6 == 0) goto L32
                if (r1 == r7) goto L24
                r0 = r3
                goto L12
            L24:
                int r0 = r0 + 2
                int r1 = r2 + 2
                if (r0 != r14) goto La1
                r2 = r1
            L2b:
                int r0 = r8.length
                if (r2 == r0) goto L94
                if (r1 != r7) goto L85
                r0 = r3
                goto L12
            L32:
                if (r2 == 0) goto L3e
                java.lang.String r6 = ":"
                boolean r6 = r12.regionMatches(r0, r6, r5, r11)
                if (r6 == 0) goto L55
                int r0 = r0 + 1
            L3e:
                r4 = r5
                r6 = r0
            L40:
                if (r6 >= r14) goto L4c
                char r9 = r12.charAt(r6)
                int r9 = b.s.a(r9)
                if (r9 != r7) goto L6c
            L4c:
                int r9 = r6 - r0
                if (r9 == 0) goto L53
                r10 = 4
                if (r9 <= r10) goto L72
            L53:
                r0 = r3
                goto L12
            L55:
                java.lang.String r6 = "."
                boolean r0 = r12.regionMatches(r0, r6, r5, r11)
                if (r0 == 0) goto L6a
                int r0 = r2 + (-2)
                boolean r0 = a(r12, r4, r14, r8, r0)
                if (r0 != 0) goto L67
                r0 = r3
                goto L12
            L67:
                int r2 = r2 + 2
                goto L2b
            L6a:
                r0 = r3
                goto L12
            L6c:
                int r4 = r4 << 4
                int r4 = r4 + r9
                int r6 = r6 + 1
                goto L40
            L72:
                int r9 = r2 + 1
                int r10 = r4 >>> 8
                r10 = r10 & 255(0xff, float:3.57E-43)
                byte r10 = (byte) r10
                r8[r2] = r10
                int r2 = r9 + 1
                r4 = r4 & 255(0xff, float:3.57E-43)
                byte r4 = (byte) r4
                r8[r9] = r4
                r4 = r0
                r0 = r6
                goto Lc
            L85:
                int r0 = r8.length
                int r3 = r2 - r1
                int r0 = r0 - r3
                int r3 = r2 - r1
                java.lang.System.arraycopy(r8, r1, r8, r0, r3)
                int r0 = r8.length
                int r0 = r0 - r2
                int r0 = r0 + r1
                java.util.Arrays.fill(r8, r1, r0, r5)
            L94:
                java.net.InetAddress r0 = java.net.InetAddress.getByAddress(r8)     // Catch: java.net.UnknownHostException -> L9a
                goto L12
            L9a:
                r0 = move-exception
                java.lang.AssertionError r0 = new java.lang.AssertionError
                r0.<init>()
                throw r0
            La1:
                r2 = r1
                goto L3e
            */
            throw new UnsupportedOperationException("Method not decompiled: b.s.a.f(java.lang.String, int, int):java.net.InetAddress");
        }

        private static boolean a(String str, int i, int i2, byte[] bArr, int i3) {
            int i4 = i;
            int i5 = i3;
            while (i4 < i2) {
                if (i5 == bArr.length) {
                    return false;
                }
                if (i5 != i3) {
                    if (str.charAt(i4) != '.') {
                        return false;
                    }
                    i4++;
                }
                int i6 = 0;
                int i7 = i4;
                while (i7 < i2) {
                    char cCharAt = str.charAt(i7);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    if ((i6 != 0 || i4 == i7) && ((i6 * 10) + cCharAt) - 48 <= 255) {
                        i7++;
                    }
                    return false;
                }
                if (i7 - i4 == 0) {
                    return false;
                }
                bArr[i5] = (byte) i6;
                i5++;
                i4 = i7;
            }
            return i5 == i3 + 4;
        }

        private static String a(byte[] bArr) {
            int i = 0;
            int i2 = 0;
            int i3 = -1;
            int i4 = 0;
            while (i4 < bArr.length) {
                int i5 = i4;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i4;
                if (i6 > i2) {
                    i2 = i6;
                    i3 = i4;
                }
                i4 = i5 + 2;
            }
            c.c cVar = new c.c();
            while (i < bArr.length) {
                if (i == i3) {
                    cVar.i(58);
                    i += i2;
                    if (i == 16) {
                        cVar.i(58);
                    }
                } else {
                    if (i > 0) {
                        cVar.i(58);
                    }
                    cVar.k(((bArr[i] & 255) << 8) | (bArr[i + 1] & 255));
                    i += 2;
                }
            }
            return cVar.p();
        }

        private static int g(String str, int i, int i2) {
            try {
                int i3 = Integer.parseInt(s.a(str, i, i2, "", false, false, false, true));
                if (i3 <= 0 || i3 > 65535) {
                    return -1;
                }
                return i3;
            } catch (NumberFormatException e) {
                return -1;
            }
        }
    }

    static String a(String str, boolean z) {
        return a(str, 0, str.length(), z);
    }

    private List<String> a(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? a(next, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '%' || (cCharAt == '+' && z)) {
                c.c cVar = new c.c();
                cVar.a(str, i, i3);
                a(cVar, str, i3, i2, z);
                return cVar.p();
            }
        }
        return str.substring(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(c.c r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
            r4 = -1
            r0 = r7
        L2:
            if (r0 >= r8) goto L46
            int r1 = r6.codePointAt(r0)
            r2 = 37
            if (r1 != r2) goto L36
            int r2 = r0 + 2
            if (r2 >= r8) goto L36
            int r2 = r0 + 1
            char r2 = r6.charAt(r2)
            int r2 = a(r2)
            int r3 = r0 + 2
            char r3 = r6.charAt(r3)
            int r3 = a(r3)
            if (r2 == r4) goto L42
            if (r3 == r4) goto L42
            int r2 = r2 << 4
            int r2 = r2 + r3
            r5.i(r2)
            int r0 = r0 + 2
        L30:
            int r1 = java.lang.Character.charCount(r1)
            int r0 = r0 + r1
            goto L2
        L36:
            r2 = 43
            if (r1 != r2) goto L42
            if (r9 == 0) goto L42
            r2 = 32
            r5.i(r2)
            goto L30
        L42:
            r5.a(r1)
            goto L30
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.s.a(c.c, java.lang.String, int, int, boolean):void");
    }

    static boolean a(String str, int i, int i2) {
        return i + 2 < i2 && str.charAt(i) == '%' && a(str.charAt(i + 1)) != -1 && a(str.charAt(i + 2)) != -1;
    }

    static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        if (c2 < 'A' || c2 > 'F') {
            return -1;
        }
        return (c2 - 'A') + 10;
    }

    static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && ((iCodePointAt < 128 || !z4) && str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z && (!z2 || a(str, iCharCount, i2)))) && (iCodePointAt != 43 || !z3)))) {
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                c.c cVar = new c.c();
                cVar.a(str, i, iCharCount);
                a(cVar, str, iCharCount, i2, str2, z, z2, z3, z4);
                return cVar.p();
            }
        }
        return str.substring(i, i2);
    }

    static void a(c.c cVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        c.c cVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    cVar.b(z ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !a(str, i, i2)))))) {
                    if (cVar2 == null) {
                        cVar2 = new c.c();
                    }
                    cVar2.a(iCodePointAt);
                    while (!cVar2.f()) {
                        int i3 = cVar2.i() & 255;
                        cVar.i(37);
                        cVar.i((int) f2066a[(i3 >> 4) & 15]);
                        cVar.i((int) f2066a[i3 & 15]);
                    }
                } else {
                    cVar.a(iCodePointAt);
                }
            }
            i += Character.charCount(iCodePointAt);
        }
    }

    static String a(String str, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        return a(str, 0, str.length(), str2, z, z2, z3, z4);
    }
}
