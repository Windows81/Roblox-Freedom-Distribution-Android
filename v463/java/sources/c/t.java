package c;

import java.net.InetAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2821a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f2823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f2825e;
    private final int f;
    private final List<String> g;
    private final List<String> h;
    private final String i;
    private final String j;

    static int a(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        char c3 = 'a';
        if (c2 < 'a' || c2 > 'f') {
            c3 = 'A';
            if (c2 < 'A' || c2 > 'F') {
                return -1;
            }
        }
        return (c2 - c3) + 10;
    }

    /* synthetic */ t(a aVar, AnonymousClass1 anonymousClass1) {
        this(aVar);
    }

    private t(a aVar) {
        this.f2822b = aVar.f2827a;
        this.f2823c = a(aVar.f2828b, false);
        this.f2824d = a(aVar.f2829c, false);
        this.f2825e = aVar.f2830d;
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
        } catch (URISyntaxException e2) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", ""));
            } catch (Exception unused) {
                throw new RuntimeException(e2);
            }
        }
    }

    public String b() {
        return this.f2822b;
    }

    public boolean c() {
        return this.f2822b.equals("https");
    }

    public String d() {
        if (this.f2823c.isEmpty()) {
            return "";
        }
        int length = this.f2822b.length() + 3;
        String str = this.j;
        return this.j.substring(length, c.a.c.a(str, length, str.length(), ":@"));
    }

    public String e() {
        if (this.f2824d.isEmpty()) {
            return "";
        }
        return this.j.substring(this.j.indexOf(58, this.f2822b.length() + 3) + 1, this.j.indexOf(64));
    }

    public String f() {
        return this.f2825e;
    }

    public int g() {
        return this.f;
    }

    public static int a(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    public String h() {
        int iIndexOf = this.j.indexOf(47, this.f2822b.length() + 3);
        String str = this.j;
        return this.j.substring(iIndexOf, c.a.c.a(str, iIndexOf, str.length(), "?#"));
    }

    static void a(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            sb.append('/');
            sb.append(list.get(i));
        }
    }

    public List<String> i() {
        int iIndexOf = this.j.indexOf(47, this.f2822b.length() + 3);
        String str = this.j;
        int iA = c.a.c.a(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iA) {
            int i = iIndexOf + 1;
            int iA2 = c.a.c.a(this.j, i, iA, '/');
            arrayList.add(this.j.substring(i, iA2));
            iIndexOf = iA2;
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
        String str = this.j;
        return this.j.substring(iIndexOf, c.a.c.a(str, iIndexOf + 1, str.length(), '#'));
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

    public t c(String str) {
        a aVarD = d(str);
        if (aVarD != null) {
            return aVarD.c();
        }
        return null;
    }

    public a n() {
        a aVar = new a();
        aVar.f2827a = this.f2822b;
        aVar.f2828b = d();
        aVar.f2829c = e();
        aVar.f2830d = this.f2825e;
        aVar.f2831e = this.f != a(this.f2822b) ? this.f : -1;
        aVar.f.clear();
        aVar.f.addAll(i());
        aVar.d(k());
        aVar.h = m();
        return aVar;
    }

    public a d(String str) {
        a aVar = new a();
        if (aVar.a(this, str) == a.EnumC0060a.SUCCESS) {
            return aVar;
        }
        return null;
    }

    public static t e(String str) {
        a aVar = new a();
        if (aVar.a((t) null, str) == a.EnumC0060a.SUCCESS) {
            return aVar.c();
        }
        return null;
    }

    /* JADX INFO: renamed from: c.t$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f2826a;

        static {
            int[] iArr = new int[a.EnumC0060a.values().length];
            f2826a = iArr;
            try {
                iArr[a.EnumC0060a.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2826a[a.EnumC0060a.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f2826a[a.EnumC0060a.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f2826a[a.EnumC0060a.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f2826a[a.EnumC0060a.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof t) && ((t) obj).j.equals(this.j);
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public String toString() {
        return this.j;
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f2827a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f2830d;
        final List<String> f;
        List<String> g;
        String h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f2828b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f2829c = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f2831e = -1;

        /* JADX INFO: renamed from: c.t$a$a, reason: collision with other inner class name */
        enum EnumC0060a {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public a a(String str) {
            if (str == null) {
                throw new NullPointerException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.f2827a = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.f2827a = "https";
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
            this.f2830d = strE;
            return this;
        }

        public a a(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.f2831e = i;
            return this;
        }

        int a() {
            int i = this.f2831e;
            return i != -1 ? i : t.a(this.f2827a);
        }

        public a c(String str) {
            if (str == null) {
                throw new NullPointerException("pathSegments == null");
            }
            return a(str, false);
        }

        private a a(String str, boolean z) {
            int i = 0;
            do {
                int iA = c.a.c.a(str, i, str.length(), "/\\");
                a(str, i, iA, iA < str.length(), z);
                i = iA + 1;
            } while (i <= str.length());
            return this;
        }

        public a d(String str) {
            this.g = str != null ? t.b(t.a(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public a a(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (this.g == null) {
                this.g = new ArrayList();
            }
            this.g.add(t.a(str, " \"'<>#&=", false, false, true, true));
            this.g.add(str2 != null ? t.a(str2, " \"'<>#&=", false, false, true, true) : null);
            return this;
        }

        public a b(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("encodedName == null");
            }
            if (this.g == null) {
                this.g = new ArrayList();
            }
            this.g.add(t.a(str, " \"'<>#&=", true, false, true, true));
            this.g.add(str2 != null ? t.a(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        a b() {
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.set(i, t.a(this.f.get(i), "[]", true, true, false, true));
            }
            List<String> list = this.g;
            if (list != null) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str = this.g.get(i2);
                    if (str != null) {
                        this.g.set(i2, t.a(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.h;
            if (str2 != null) {
                this.h = t.a(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public t c() {
            if (this.f2827a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f2830d == null) {
                throw new IllegalStateException("host == null");
            }
            return new t(this, null);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2827a);
            sb.append("://");
            if (!this.f2828b.isEmpty() || !this.f2829c.isEmpty()) {
                sb.append(this.f2828b);
                if (!this.f2829c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f2829c);
                }
                sb.append('@');
            }
            if (this.f2830d.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.f2830d);
                sb.append(']');
            } else {
                sb.append(this.f2830d);
            }
            int iA = a();
            if (iA != t.a(this.f2827a)) {
                sb.append(':');
                sb.append(iA);
            }
            t.a(sb, this.f);
            if (this.g != null) {
                sb.append('?');
                t.b(sb, this.g);
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }

        EnumC0060a a(t tVar, String str) {
            int iA;
            int i;
            int iA2 = c.a.c.a(str, 0, str.length());
            int iB = c.a.c.b(str, iA2, str.length());
            if (b(str, iA2, iB) != -1) {
                if (str.regionMatches(true, iA2, "https:", 0, 6)) {
                    this.f2827a = "https";
                    iA2 += 6;
                } else if (str.regionMatches(true, iA2, "http:", 0, 5)) {
                    this.f2827a = "http";
                    iA2 += 5;
                } else {
                    return EnumC0060a.UNSUPPORTED_SCHEME;
                }
            } else if (tVar != null) {
                this.f2827a = tVar.f2822b;
            } else {
                return EnumC0060a.MISSING_SCHEME;
            }
            int iC = c(str, iA2, iB);
            char c2 = '?';
            char c3 = '#';
            if (iC >= 2 || tVar == null || !tVar.f2822b.equals(this.f2827a)) {
                int i2 = iA2 + iC;
                boolean z = false;
                boolean z2 = false;
                while (true) {
                    iA = c.a.c.a(str, i2, iB, "@/\\?#");
                    byte bCharAt = iA != iB ? str.charAt(iA) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c3 || bCharAt == 47 || bCharAt == 92 || bCharAt == c2) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (!z) {
                            int iA3 = c.a.c.a(str, i2, iA, ':');
                            i = iA;
                            String strA = t.a(str, i2, iA3, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                            if (z2) {
                                strA = this.f2828b + "%40" + strA;
                            }
                            this.f2828b = strA;
                            if (iA3 != i) {
                                this.f2829c = t.a(str, iA3 + 1, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                                z = true;
                            }
                            z2 = true;
                        } else {
                            i = iA;
                            this.f2829c += "%40" + t.a(str, i2, i, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true);
                        }
                        i2 = i + 1;
                    }
                    c2 = '?';
                    c3 = '#';
                }
                int iD = d(str, i2, iA);
                int i3 = iD + 1;
                if (i3 < iA) {
                    this.f2830d = e(str, i2, iD);
                    int iG = g(str, i3, iA);
                    this.f2831e = iG;
                    if (iG == -1) {
                        return EnumC0060a.INVALID_PORT;
                    }
                } else {
                    this.f2830d = e(str, i2, iD);
                    this.f2831e = t.a(this.f2827a);
                }
                if (this.f2830d == null) {
                    return EnumC0060a.INVALID_HOST;
                }
                iA2 = iA;
            } else {
                this.f2828b = tVar.d();
                this.f2829c = tVar.e();
                this.f2830d = tVar.f2825e;
                this.f2831e = tVar.f;
                this.f.clear();
                this.f.addAll(tVar.i());
                if (iA2 == iB || str.charAt(iA2) == '#') {
                    d(tVar.k());
                }
            }
            int iA4 = c.a.c.a(str, iA2, iB, "?#");
            a(str, iA2, iA4);
            if (iA4 < iB && str.charAt(iA4) == '?') {
                int iA5 = c.a.c.a(str, iA4, iB, '#');
                this.g = t.b(t.a(str, iA4 + 1, iA5, " \"'<>#", true, false, true, true));
                iA4 = iA5;
            }
            if (iA4 < iB && str.charAt(iA4) == '#') {
                this.h = t.a(str, 1 + iA4, iB, "", true, false, false, false);
            }
            return EnumC0060a.SUCCESS;
        }

        private void a(String str, int i, int i2) {
            if (i == i2) {
                return;
            }
            char cCharAt = str.charAt(i);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f.clear();
                this.f.add("");
                i++;
            } else {
                List<String> list = this.f;
                list.set(list.size() - 1, "");
            }
            while (true) {
                int i3 = i;
                if (i3 >= i2) {
                    return;
                }
                i = c.a.c.a(str, i3, i2, "/\\");
                boolean z = i < i2;
                a(str, i3, i, z, true);
                if (z) {
                    i++;
                }
            }
        }

        private void a(String str, int i, int i2, boolean z, boolean z2) {
            String strA = t.a(str, i, i2, " \"<>^`{}|/\\?#", z2, false, false, true);
            if (e(strA)) {
                return;
            }
            if (f(strA)) {
                d();
                return;
            }
            if (this.f.get(r10.size() - 1).isEmpty()) {
                this.f.set(r10.size() - 1, strA);
            } else {
                this.f.add(strA);
            }
            if (z) {
                this.f.add("");
            }
        }

        private boolean e(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean f(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void d() {
            if (this.f.remove(r0.size() - 1).isEmpty() && !this.f.isEmpty()) {
                this.f.set(r0.size() - 1, "");
            } else {
                this.f.add("");
            }
        }

        private static int b(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i++;
                    if (i >= i2) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i;
                                    }
                                }
                            }
                        }
                    }
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

        private static int d(String str, int i, int i2) {
            while (i < i2) {
                char cCharAt = str.charAt(i);
                if (cCharAt == ':') {
                    return i;
                }
                if (cCharAt == '[') {
                    do {
                        i++;
                        if (i < i2) {
                        }
                    } while (str.charAt(i) != ']');
                }
                i++;
            }
            return i2;
        }

        private static String e(String str, int i, int i2) {
            InetAddress inetAddressF;
            String strA = t.a(str, i, i2, false);
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
            return c.a.c.a(strA);
        }

        /* JADX WARN: Code restructure failed: missing block: B:42:0x007a, code lost:
        
            if (r4 == 16) goto L51;
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x007c, code lost:
        
            if (r5 != (-1)) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x007e, code lost:
        
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x007f, code lost:
        
            r11 = r4 - r5;
            java.lang.System.arraycopy(r1, r5, r1, 16 - r11, r11);
            java.util.Arrays.fill(r1, r5, (16 - r4) + r5, (byte) 0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x008f, code lost:
        
            return java.net.InetAddress.getByAddress(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0096, code lost:
        
            throw new java.lang.AssertionError();
         */
        /* JADX WARN: Removed duplicated region for block: B:31:0x004f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static java.net.InetAddress f(java.lang.String r11, int r12, int r13) {
            /*
                r0 = 16
                byte[] r1 = new byte[r0]
                r2 = -1
                r3 = 0
                r4 = 0
                r5 = -1
                r6 = -1
            L9:
                r7 = 0
                if (r12 >= r13) goto L7a
                if (r4 != r0) goto Lf
                return r7
            Lf:
                int r8 = r12 + 2
                if (r8 > r13) goto L27
                java.lang.String r9 = "::"
                r10 = 2
                boolean r9 = r11.regionMatches(r12, r9, r3, r10)
                if (r9 == 0) goto L27
                if (r5 == r2) goto L1f
                return r7
            L1f:
                int r4 = r4 + 2
                r5 = r4
                if (r8 != r13) goto L25
                goto L7a
            L25:
                r6 = r8
                goto L4b
            L27:
                if (r4 == 0) goto L4a
                java.lang.String r8 = ":"
                r9 = 1
                boolean r8 = r11.regionMatches(r12, r8, r3, r9)
                if (r8 == 0) goto L35
                int r12 = r12 + 1
                goto L4a
            L35:
                java.lang.String r8 = "."
                boolean r12 = r11.regionMatches(r12, r8, r3, r9)
                if (r12 == 0) goto L49
                int r12 = r4 + (-2)
                boolean r11 = a(r11, r6, r13, r1, r12)
                if (r11 != 0) goto L46
                return r7
            L46:
                int r4 = r4 + 2
                goto L7a
            L49:
                return r7
            L4a:
                r6 = r12
            L4b:
                r12 = r6
                r8 = 0
            L4d:
                if (r12 >= r13) goto L60
                char r9 = r11.charAt(r12)
                int r9 = c.t.a(r9)
                if (r9 != r2) goto L5a
                goto L60
            L5a:
                int r8 = r8 << 4
                int r8 = r8 + r9
                int r12 = r12 + 1
                goto L4d
            L60:
                int r9 = r12 - r6
                if (r9 == 0) goto L79
                r10 = 4
                if (r9 <= r10) goto L68
                goto L79
            L68:
                int r7 = r4 + 1
                int r9 = r8 >>> 8
                r9 = r9 & 255(0xff, float:3.57E-43)
                byte r9 = (byte) r9
                r1[r4] = r9
                int r4 = r7 + 1
                r8 = r8 & 255(0xff, float:3.57E-43)
                byte r8 = (byte) r8
                r1[r7] = r8
                goto L9
            L79:
                return r7
            L7a:
                if (r4 == r0) goto L8b
                if (r5 != r2) goto L7f
                return r7
            L7f:
                int r11 = r4 - r5
                int r12 = 16 - r11
                java.lang.System.arraycopy(r1, r5, r1, r12, r11)
                int r0 = r0 - r4
                int r0 = r0 + r5
                java.util.Arrays.fill(r1, r5, r0, r3)
            L8b:
                java.net.InetAddress r11 = java.net.InetAddress.getByAddress(r1)     // Catch: java.net.UnknownHostException -> L90
                return r11
            L90:
                java.lang.AssertionError r11 = new java.lang.AssertionError
                r11.<init>()
                goto L97
            L96:
                throw r11
            L97:
                goto L96
            */
            throw new UnsupportedOperationException("Method not decompiled: c.t.a.f(java.lang.String, int, int):java.net.InetAddress");
        }

        private static boolean a(String str, int i, int i2, byte[] bArr, int i3) {
            int i4 = i3;
            while (i < i2) {
                if (i4 == bArr.length) {
                    return false;
                }
                if (i4 != i3) {
                    if (str.charAt(i) != '.') {
                        return false;
                    }
                    i++;
                }
                int i5 = i;
                int i6 = 0;
                while (i5 < i2) {
                    char cCharAt = str.charAt(i5);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    if ((i6 == 0 && i != i5) || (i6 = ((i6 * 10) + cCharAt) - 48) > 255) {
                        return false;
                    }
                    i5++;
                }
                if (i5 - i == 0) {
                    return false;
                }
                bArr[i4] = (byte) i6;
                i4++;
                i = i5;
            }
            return i4 == i3 + 4;
        }

        private static String a(byte[] bArr) {
            int i = 0;
            int i2 = -1;
            int i3 = 0;
            int i4 = 0;
            while (i3 < bArr.length) {
                int i5 = i3;
                while (i5 < 16 && bArr[i5] == 0 && bArr[i5 + 1] == 0) {
                    i5 += 2;
                }
                int i6 = i5 - i3;
                if (i6 > i4) {
                    i2 = i3;
                    i4 = i6;
                }
                i3 = i5 + 2;
            }
            d.c cVar = new d.c();
            while (i < bArr.length) {
                if (i == i2) {
                    cVar.i(58);
                    i += i4;
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
            int i3;
            try {
                i3 = Integer.parseInt(t.a(str, i, i2, "", false, false, false, true));
            } catch (NumberFormatException unused) {
            }
            if (i3 <= 0 || i3 > 65535) {
                return -1;
            }
            return i3;
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
                d.c cVar = new d.c();
                cVar.a(str, i, i3);
                a(cVar, str, i3, i2, z);
                return cVar.p();
            }
        }
        return str.substring(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void a(d.c r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
        L0:
            if (r7 >= r8) goto L42
            int r0 = r6.codePointAt(r7)
            r1 = 37
            if (r0 != r1) goto L2d
            int r1 = r7 + 2
            if (r1 >= r8) goto L2d
            int r2 = r7 + 1
            char r2 = r6.charAt(r2)
            int r2 = a(r2)
            char r3 = r6.charAt(r1)
            int r3 = a(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.i(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.i(r1)
            goto L3c
        L39:
            r5.a(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.t.a(d.c, java.lang.String, int, int, boolean):void");
    }

    static boolean a(String str, int i, int i2) {
        int i3 = i + 2;
        return i3 < i2 && str.charAt(i) == '%' && a(str.charAt(i + 1)) != -1 && a(str.charAt(i3)) != -1;
    }

    static String a(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        int iCharCount = i;
        while (iCharCount < i2) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt >= 32 && iCodePointAt != 127 && (iCodePointAt < 128 || !z4)) {
                if (str2.indexOf(iCodePointAt) == -1 && ((iCodePointAt != 37 || (z && (!z2 || a(str, iCharCount, i2)))) && (iCodePointAt != 43 || !z3))) {
                    iCharCount += Character.charCount(iCodePointAt);
                } else {
                    d.c cVar = new d.c();
                    cVar.a(str, i, iCharCount);
                    a(cVar, str, iCharCount, i2, str2, z, z2, z3, z4);
                    return cVar.p();
                }
            } else {
                d.c cVar2 = new d.c();
                cVar2.a(str, i, iCharCount);
                a(cVar2, str, iCharCount, i2, str2, z, z2, z3, z4);
                return cVar2.p();
            }
        }
        return str.substring(i, i2);
    }

    static void a(d.c cVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4) {
        d.c cVar2 = null;
        while (i < i2) {
            int iCodePointAt = str.codePointAt(i);
            if (!z || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z3) {
                    cVar.b(z ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z4) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z || (z2 && !a(str, i, i2)))))) {
                    if (cVar2 == null) {
                        cVar2 = new d.c();
                    }
                    cVar2.a(iCodePointAt);
                    while (!cVar2.f()) {
                        int i3 = cVar2.i() & 255;
                        cVar.i(37);
                        cVar.i((int) f2821a[(i3 >> 4) & 15]);
                        cVar.i((int) f2821a[i3 & 15]);
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
