package com.google.gson.c;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f6167b = ")]}'\n".toCharArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Reader f6169c;
    private long j;
    private int k;
    private String l;
    private int n;
    private String[] o;
    private int[] p;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6170d = false;
    private final char[] e = new char[1024];
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f6168a = 0;
    private int[] m = new int[32];

    static {
        com.google.gson.internal.d.f6308a = new com.google.gson.internal.d() { // from class: com.google.gson.c.a.1
            @Override // com.google.gson.internal.d
            public void a(a aVar) throws IOException {
                if (aVar instanceof com.google.gson.internal.bind.c) {
                    ((com.google.gson.internal.bind.c) aVar).o();
                    return;
                }
                int iR = aVar.f6168a;
                if (iR == 0) {
                    iR = aVar.r();
                }
                if (iR == 13) {
                    aVar.f6168a = 9;
                } else if (iR == 12) {
                    aVar.f6168a = 8;
                } else {
                    if (iR == 14) {
                        aVar.f6168a = 10;
                        return;
                    }
                    throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.x());
                }
            }
        };
    }

    public a(Reader reader) {
        this.n = 0;
        int[] iArr = this.m;
        int i = this.n;
        this.n = i + 1;
        iArr[i] = 6;
        this.o = new String[32];
        this.p = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f6169c = reader;
    }

    public final void a(boolean z) {
        this.f6170d = z;
    }

    public final boolean q() {
        return this.f6170d;
    }

    public void a() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 3) {
            a(1);
            this.p[this.n - 1] = 0;
            this.f6168a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + x());
    }

    public void b() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 4) {
            this.n--;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            this.f6168a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + x());
    }

    public void c() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 1) {
            a(3);
            this.f6168a = 0;
            return;
        }
        throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + x());
    }

    public void d() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 2) {
            this.n--;
            this.o[this.n] = null;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            this.f6168a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + x());
    }

    public boolean e() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        return (iR == 2 || iR == 4) ? false : true;
    }

    public b f() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        switch (iR) {
            case 1:
                return b.BEGIN_OBJECT;
            case 2:
                return b.END_OBJECT;
            case 3:
                return b.BEGIN_ARRAY;
            case 4:
                return b.END_ARRAY;
            case 5:
            case 6:
                return b.BOOLEAN;
            case 7:
                return b.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return b.STRING;
            case 12:
            case 13:
            case 14:
                return b.NAME;
            case 15:
            case 16:
                return b.NUMBER;
            case 17:
                return b.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    int r() throws IOException {
        int i = this.m[this.n - 1];
        if (i == 1) {
            this.m[this.n - 1] = 2;
        } else if (i == 2) {
            switch (b(true)) {
                case 44:
                    break;
                case 59:
                    v();
                    break;
                case 93:
                    this.f6168a = 4;
                    return 4;
                default:
                    throw b("Unterminated array");
            }
        } else {
            if (i == 3 || i == 5) {
                this.m[this.n - 1] = 4;
                if (i == 5) {
                    switch (b(true)) {
                        case 44:
                            break;
                        case 59:
                            v();
                            break;
                        case 125:
                            this.f6168a = 2;
                            return 2;
                        default:
                            throw b("Unterminated object");
                    }
                }
                int iB = b(true);
                switch (iB) {
                    case 34:
                        this.f6168a = 13;
                        return 13;
                    case 39:
                        v();
                        this.f6168a = 12;
                        return 12;
                    case 125:
                        if (i != 5) {
                            this.f6168a = 2;
                            return 2;
                        }
                        throw b("Expected name");
                    default:
                        v();
                        this.f--;
                        if (a((char) iB)) {
                            this.f6168a = 14;
                            return 14;
                        }
                        throw b("Expected name");
                }
            }
            if (i == 4) {
                this.m[this.n - 1] = 5;
                switch (b(true)) {
                    case 58:
                        break;
                    case 59:
                    case 60:
                    default:
                        throw b("Expected ':'");
                    case 61:
                        v();
                        if ((this.f < this.g || b(1)) && this.e[this.f] == '>') {
                            this.f++;
                        }
                        break;
                }
            } else if (i == 6) {
                if (this.f6170d) {
                    z();
                }
                this.m[this.n - 1] = 7;
            } else if (i == 7) {
                if (b(false) == -1) {
                    this.f6168a = 17;
                    return 17;
                }
                v();
                this.f--;
            } else if (i == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        switch (b(true)) {
            case 34:
                this.f6168a = 9;
                return 9;
            case 39:
                v();
                this.f6168a = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.f6168a = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.f6168a = 4;
                    return 4;
                }
                break;
            case 123:
                this.f6168a = 1;
                return 1;
            default:
                this.f--;
                int iO = o();
                if (iO == 0) {
                    int iS = s();
                    if (iS == 0) {
                        if (!a(this.e[this.f])) {
                            throw b("Expected value");
                        }
                        v();
                        this.f6168a = 10;
                        return 10;
                    }
                    return iS;
                }
                return iO;
        }
        if (i == 1 || i == 2) {
            v();
            this.f--;
            this.f6168a = 7;
            return 7;
        }
        throw b("Unexpected value");
    }

    private int o() throws IOException {
        String str;
        String str2;
        int i;
        char c2 = this.e[this.f];
        if (c2 == 't' || c2 == 'T') {
            str = "true";
            str2 = "TRUE";
            i = 5;
        } else if (c2 == 'f' || c2 == 'F') {
            str = "false";
            str2 = "FALSE";
            i = 6;
        } else {
            if (c2 != 'n' && c2 != 'N') {
                return 0;
            }
            str = "null";
            str2 = "NULL";
            i = 7;
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f + i2 >= this.g && !b(i2 + 1)) {
                return 0;
            }
            char c3 = this.e[this.f + i2];
            if (c3 != str.charAt(i2) && c3 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f + length < this.g || b(length + 1)) && a(this.e[this.f + length])) {
            return 0;
        }
        this.f += length;
        this.f6168a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:?, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
    
        if (r3 != 2) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0023, code lost:
    
        if (r4 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
    
        if (r6 != Long.MIN_VALUE) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002b, code lost:
    
        if (r5 == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002d, code lost:
    
        if (r5 == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002f, code lost:
    
        r15.j = r6;
        r15.f += r10;
        r15.f6168a = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
    
        if (a(r2) == false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0054, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00dc, code lost:
    
        r6 = -r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00e0, code lost:
    
        if (r3 == 2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00e3, code lost:
    
        if (r3 == 4) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e6, code lost:
    
        if (r3 != 7) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e8, code lost:
    
        r15.k = r10;
        r15.f6168a = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00f0, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int s() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.s():int");
    }

    private boolean a(char c2) throws IOException {
        switch (c2) {
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                v();
            case '\t':
            case '\n':
            case '\f':
            case '\r':
            case ' ':
            case ',':
            case ':':
            case '[':
            case ']':
            case '{':
            case '}':
                return false;
            default:
                return true;
        }
    }

    public String g() throws IOException {
        String strB;
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 14) {
            strB = t();
        } else if (iR == 12) {
            strB = b('\'');
        } else if (iR == 13) {
            strB = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + x());
        }
        this.f6168a = 0;
        this.o[this.n - 1] = strB;
        return strB;
    }

    public String h() throws IOException {
        String str;
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 10) {
            str = t();
        } else if (iR == 8) {
            str = b('\'');
        } else if (iR == 9) {
            str = b('\"');
        } else if (iR == 11) {
            str = this.l;
            this.l = null;
        } else if (iR == 15) {
            str = Long.toString(this.j);
        } else if (iR == 16) {
            str = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + x());
        }
        this.f6168a = 0;
        int[] iArr = this.p;
        int i = this.n - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 5) {
            this.f6168a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iR == 6) {
            this.f6168a = 0;
            int[] iArr2 = this.p;
            int i2 = this.n - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + f() + x());
    }

    public void j() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 7) {
            this.f6168a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + x());
    }

    public double k() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            this.f6168a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iR == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9) {
            this.l = b(iR == 8 ? '\'' : '\"');
        } else if (iR == 10) {
            this.l = t();
        } else if (iR != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + x());
        }
        this.f6168a = 11;
        double d2 = Double.parseDouble(this.l);
        if (!this.f6170d && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new d("JSON forbids NaN and infinities: " + d2 + x());
        }
        this.l = null;
        this.f6168a = 0;
        int[] iArr2 = this.p;
        int i2 = this.n - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d2;
    }

    public long l() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            this.f6168a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iR == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9 || iR == 10) {
            if (iR == 10) {
                this.l = t();
            } else {
                this.l = b(iR == 8 ? '\'' : '\"');
            }
            try {
                long j = Long.parseLong(this.l);
                this.f6168a = 0;
                int[] iArr2 = this.p;
                int i2 = this.n - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + f() + x());
        }
        this.f6168a = 11;
        double d2 = Double.parseDouble(this.l);
        long j2 = (long) d2;
        if (j2 != d2) {
            throw new NumberFormatException("Expected a long but was " + this.l + x());
        }
        this.l = null;
        this.f6168a = 0;
        int[] iArr3 = this.p;
        int i3 = this.n - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }

    private String b(char c2) throws IOException {
        char[] cArr = this.e;
        StringBuilder sb = new StringBuilder();
        do {
            int i = this.f;
            int i2 = this.g;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c3 = cArr[i3];
                if (c3 == c2) {
                    this.f = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    return sb.toString();
                }
                if (c3 == '\\') {
                    this.f = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    sb.append(y());
                    i = this.f;
                    i2 = this.g;
                    i4 = i;
                } else if (c3 == '\n') {
                    this.h++;
                    this.i = i4;
                }
                i3 = i4;
            }
            sb.append(cArr, i, i3 - i);
            this.f = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private String t() throws IOException {
        String string;
        StringBuilder sb = null;
        int i = 0;
        while (true) {
            if (this.f + i < this.g) {
                switch (this.e[this.f + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        v();
                        break;
                    default:
                        i++;
                        continue;
                }
            } else if (i < this.e.length) {
                if (b(i + 1)) {
                }
            } else {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.e, this.f, i);
                this.f = i + this.f;
                if (b(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            }
        }
        if (sb == null) {
            string = new String(this.e, this.f, i);
        } else {
            sb.append(this.e, this.f, i);
            string = sb.toString();
        }
        this.f = i + this.f;
        return string;
    }

    private void c(char c2) throws IOException {
        char[] cArr = this.e;
        do {
            int i = this.f;
            int i2 = this.g;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c3 = cArr[i3];
                if (c3 == c2) {
                    this.f = i4;
                    return;
                }
                if (c3 == '\\') {
                    this.f = i4;
                    y();
                    i4 = this.f;
                    i2 = this.g;
                } else if (c3 == '\n') {
                    this.h++;
                    this.i = i4;
                }
                i3 = i4;
            }
            this.f = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private void u() throws IOException {
        do {
            int i = 0;
            while (this.f + i < this.g) {
                switch (this.e[this.f + i]) {
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                    case ',':
                    case ':':
                    case '[':
                    case ']':
                    case '{':
                    case '}':
                        break;
                    case '#':
                    case '/':
                    case ';':
                    case '=':
                    case '\\':
                        v();
                        break;
                    default:
                        i++;
                        break;
                }
                this.f = i + this.f;
                return;
            }
            this.f = i + this.f;
        } while (b(1));
    }

    public int m() throws IOException {
        int iR = this.f6168a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            int i = (int) this.j;
            if (this.j != i) {
                throw new NumberFormatException("Expected an int but was " + this.j + x());
            }
            this.f6168a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return i;
        }
        if (iR == 16) {
            this.l = new String(this.e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9 || iR == 10) {
            if (iR == 10) {
                this.l = t();
            } else {
                this.l = b(iR == 8 ? '\'' : '\"');
            }
            try {
                int i3 = Integer.parseInt(this.l);
                this.f6168a = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException e) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + f() + x());
        }
        this.f6168a = 11;
        double d2 = Double.parseDouble(this.l);
        int i5 = (int) d2;
        if (i5 != d2) {
            throw new NumberFormatException("Expected an int but was " + this.l + x());
        }
        this.l = null;
        this.f6168a = 0;
        int[] iArr3 = this.p;
        int i6 = this.n - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f6168a = 0;
        this.m[0] = 8;
        this.n = 1;
        this.f6169c.close();
    }

    public void n() throws IOException {
        int i = 0;
        do {
            int iR = this.f6168a;
            if (iR == 0) {
                iR = r();
            }
            if (iR == 3) {
                a(1);
                i++;
            } else if (iR == 1) {
                a(3);
                i++;
            } else if (iR == 4 || iR == 2) {
                this.n--;
                i--;
            } else if (iR == 14 || iR == 10) {
                u();
            } else if (iR == 8 || iR == 12) {
                c('\'');
            } else if (iR == 9 || iR == 13) {
                c('\"');
            } else if (iR == 16) {
                this.f += this.k;
            }
            this.f6168a = 0;
        } while (i != 0);
        int[] iArr = this.p;
        int i2 = this.n - 1;
        iArr[i2] = iArr[i2] + 1;
        this.o[this.n - 1] = "null";
    }

    private void a(int i) {
        if (this.n == this.m.length) {
            int[] iArr = new int[this.n * 2];
            int[] iArr2 = new int[this.n * 2];
            String[] strArr = new String[this.n * 2];
            System.arraycopy(this.m, 0, iArr, 0, this.n);
            System.arraycopy(this.p, 0, iArr2, 0, this.n);
            System.arraycopy(this.o, 0, strArr, 0, this.n);
            this.m = iArr;
            this.p = iArr2;
            this.o = strArr;
        }
        int[] iArr3 = this.m;
        int i2 = this.n;
        this.n = i2 + 1;
        iArr3[i2] = i;
    }

    private boolean b(int i) throws IOException {
        char[] cArr = this.e;
        this.i -= this.f;
        if (this.g != this.f) {
            this.g -= this.f;
            System.arraycopy(cArr, this.f, cArr, 0, this.g);
        } else {
            this.g = 0;
        }
        this.f = 0;
        do {
            int i2 = this.f6169c.read(cArr, this.g, cArr.length - this.g);
            if (i2 == -1) {
                return false;
            }
            this.g = i2 + this.g;
            if (this.h == 0 && this.i == 0 && this.g > 0 && cArr[0] == 65279) {
                this.f++;
                this.i++;
                i++;
            }
        } while (this.g < i);
        return true;
    }

    private int b(boolean z) throws IOException {
        char[] cArr = this.e;
        int i = this.f;
        int i2 = this.g;
        while (true) {
            if (i == i2) {
                this.f = i;
                if (b(1)) {
                    i = this.f;
                    i2 = this.g;
                } else {
                    if (z) {
                        throw new EOFException("End of input" + x());
                    }
                    return -1;
                }
            }
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 == '\n') {
                this.h++;
                this.i = i3;
                i = i3;
            } else if (c2 == ' ' || c2 == '\r') {
                i = i3;
            } else if (c2 == '\t') {
                i = i3;
            } else if (c2 == '/') {
                this.f = i3;
                if (i3 == i2) {
                    this.f--;
                    boolean zB = b(2);
                    this.f++;
                    if (!zB) {
                        return c2;
                    }
                }
                v();
                switch (cArr[this.f]) {
                    case '*':
                        this.f++;
                        if (!a("*/")) {
                            throw b("Unterminated comment");
                        }
                        i = this.f + 2;
                        i2 = this.g;
                        break;
                        break;
                    case '/':
                        this.f++;
                        w();
                        i = this.f;
                        i2 = this.g;
                        break;
                    default:
                        return c2;
                }
            } else if (c2 == '#') {
                this.f = i3;
                v();
                w();
                i = this.f;
                i2 = this.g;
            } else {
                this.f = i3;
                return c2;
            }
        }
    }

    private void v() throws IOException {
        if (!this.f6170d) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void w() throws IOException {
        char c2;
        do {
            if (this.f < this.g || b(1)) {
                char[] cArr = this.e;
                int i = this.f;
                this.f = i + 1;
                c2 = cArr[i];
                if (c2 == '\n') {
                    this.h++;
                    this.i = this.f;
                    return;
                }
            } else {
                return;
            }
        } while (c2 != '\r');
    }

    private boolean a(String str) throws IOException {
        int i;
        while (true) {
            if (this.f + str.length() > this.g && !b(str.length())) {
                return false;
            }
            if (this.e[this.f] == '\n') {
                this.h++;
                this.i = this.f + 1;
            } else {
                for (0; i < str.length(); i + 1) {
                    i = this.e[this.f + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.f++;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + x();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String x() {
        return " at line " + (this.h + 1) + " column " + ((this.f - this.i) + 1) + " path " + p();
    }

    public String p() {
        StringBuilder sbAppend = new StringBuilder().append('$');
        int i = this.n;
        for (int i2 = 0; i2 < i; i2++) {
            switch (this.m[i2]) {
                case 1:
                case 2:
                    sbAppend.append('[').append(this.p[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sbAppend.append('.');
                    if (this.o[i2] != null) {
                        sbAppend.append(this.o[i2]);
                    }
                    break;
            }
        }
        return sbAppend.toString();
    }

    private char y() throws IOException {
        int i;
        if (this.f == this.g && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.e;
        int i2 = this.f;
        this.f = i2 + 1;
        char c2 = cArr[i2];
        switch (c2) {
            case '\n':
                this.h++;
                this.i = this.f;
                return c2;
            case '\"':
            case '\'':
            case '/':
            case '\\':
                return c2;
            case 'b':
                return '\b';
            case 'f':
                return '\f';
            case 'n':
                return '\n';
            case 'r':
                return '\r';
            case 't':
                return '\t';
            case 'u':
                if (this.f + 4 > this.g && !b(4)) {
                    throw b("Unterminated escape sequence");
                }
                int i3 = this.f;
                int i4 = i3 + 4;
                char c3 = 0;
                for (int i5 = i3; i5 < i4; i5++) {
                    char c4 = this.e[i5];
                    char c5 = (char) (c3 << 4);
                    if (c4 >= '0' && c4 <= '9') {
                        i = c4 - '0';
                    } else if (c4 >= 'a' && c4 <= 'f') {
                        i = (c4 - 'a') + 10;
                    } else if (c4 >= 'A' && c4 <= 'F') {
                        i = (c4 - 'A') + 10;
                    } else {
                        throw new NumberFormatException("\\u" + new String(this.e, this.f, 4));
                    }
                    c3 = (char) (c5 + i);
                }
                this.f += 4;
                return c3;
            default:
                throw b("Invalid escape sequence");
        }
    }

    private IOException b(String str) throws IOException {
        throw new d(str + x());
    }

    private void z() throws IOException {
        b(true);
        this.f--;
        if (this.f + f6167b.length <= this.g || b(f6167b.length)) {
            for (int i = 0; i < f6167b.length; i++) {
                if (this.e[this.f + i] != f6167b[i]) {
                    return;
                }
            }
            this.f += f6167b.length;
        }
    }
}
