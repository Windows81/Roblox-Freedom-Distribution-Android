package com.google.ads.interactivemedia.v3.a.d;

import com.google.ads.interactivemedia.v3.a.b.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2732a = ")]}'\n".toCharArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Reader f2733b;
    private long j;
    private int k;
    private String l;
    private int n;
    private String[] o;
    private int[] p;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2734c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final char[] f2735d = new char[1024];
    private int e = 0;
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;
    private int[] m = new int[32];

    static {
        e.f2697a = new e() { // from class: com.google.ads.interactivemedia.v3.a.d.a.1
            @Override // com.google.ads.interactivemedia.v3.a.b.e
            public void a(a aVar) throws IOException {
                if (!(aVar instanceof com.google.ads.interactivemedia.v3.a.b.a.e)) {
                    int iO = aVar.i;
                    if (iO == 0) {
                        iO = aVar.o();
                    }
                    if (iO == 13) {
                        aVar.i = 9;
                        return;
                    }
                    if (iO == 12) {
                        aVar.i = 8;
                        return;
                    }
                    if (iO == 14) {
                        aVar.i = 10;
                        return;
                    }
                    String strValueOf = String.valueOf(aVar.f());
                    int iV = aVar.v();
                    int iW = aVar.w();
                    String strQ = aVar.q();
                    throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 70 + String.valueOf(strQ).length()).append("Expected a name but was ").append(strValueOf).append(" ").append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
                }
                ((com.google.ads.interactivemedia.v3.a.b.a.e) aVar).o();
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
        this.f2733b = reader;
    }

    public final void a(boolean z) {
        this.f2734c = z;
    }

    public final boolean p() {
        return this.f2734c;
    }

    public void a() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 3) {
            a(1);
            this.p[this.n - 1] = 0;
            this.i = 0;
        } else {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 74 + String.valueOf(strQ).length()).append("Expected BEGIN_ARRAY but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
    }

    public void b() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 4) {
            this.n--;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            this.i = 0;
            return;
        }
        String strValueOf = String.valueOf(f());
        int iV = v();
        int iW = w();
        String strQ = q();
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 72 + String.valueOf(strQ).length()).append("Expected END_ARRAY but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
    }

    public void c() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 1) {
            a(3);
            this.i = 0;
        } else {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 75 + String.valueOf(strQ).length()).append("Expected BEGIN_OBJECT but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
    }

    public void d() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 2) {
            this.n--;
            this.o[this.n] = null;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            this.i = 0;
            return;
        }
        String strValueOf = String.valueOf(f());
        int iV = v();
        int iW = w();
        String strQ = q();
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 73 + String.valueOf(strQ).length()).append("Expected END_OBJECT but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
    }

    public boolean e() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        return (iO == 2 || iO == 4) ? false : true;
    }

    public b f() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        switch (iO) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public int o() throws IOException {
        int i = this.m[this.n - 1];
        if (i == 1) {
            this.m[this.n - 1] = 2;
        } else if (i == 2) {
            switch (b(true)) {
                case 44:
                    break;
                case 59:
                    x();
                    break;
                case 93:
                    this.i = 4;
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
                            x();
                            break;
                        case 125:
                            this.i = 2;
                            return 2;
                        default:
                            throw b("Unterminated object");
                    }
                }
                int iB = b(true);
                switch (iB) {
                    case 34:
                        this.i = 13;
                        return 13;
                    case 39:
                        x();
                        this.i = 12;
                        return 12;
                    case 125:
                        if (i != 5) {
                            this.i = 2;
                            return 2;
                        }
                        throw b("Expected name");
                    default:
                        x();
                        this.e--;
                        if (a((char) iB)) {
                            this.i = 14;
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
                        x();
                        if ((this.e < this.f || b(1)) && this.f2735d[this.e] == '>') {
                            this.e++;
                        }
                        break;
                }
            } else if (i == 6) {
                if (this.f2734c) {
                    A();
                }
                this.m[this.n - 1] = 7;
            } else if (i == 7) {
                if (b(false) == -1) {
                    this.i = 17;
                    return 17;
                }
                x();
                this.e--;
            } else if (i == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        switch (b(true)) {
            case 34:
                if (this.n == 1) {
                    x();
                }
                this.i = 9;
                return 9;
            case 39:
                x();
                this.i = 8;
                return 8;
            case 44:
            case 59:
                break;
            case 91:
                this.i = 3;
                return 3;
            case 93:
                if (i == 1) {
                    this.i = 4;
                    return 4;
                }
                break;
            case 123:
                this.i = 1;
                return 1;
            default:
                this.e--;
                if (this.n == 1) {
                    x();
                }
                int iR = r();
                if (iR == 0) {
                    int iS = s();
                    if (iS == 0) {
                        if (!a(this.f2735d[this.e])) {
                            throw b("Expected value");
                        }
                        x();
                        this.i = 10;
                        return 10;
                    }
                    return iS;
                }
                return iR;
        }
        if (i == 1 || i == 2) {
            x();
            this.e--;
            this.i = 7;
            return 7;
        }
        throw b("Unexpected value");
    }

    private int r() throws IOException {
        String str;
        String str2;
        int i;
        char c2 = this.f2735d[this.e];
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
            if (this.e + i2 >= this.f && !b(i2 + 1)) {
                return 0;
            }
            char c3 = this.f2735d[this.e + i2];
            if (c3 != str.charAt(i2) && c3 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.e + length < this.f || b(length + 1)) && a(this.f2735d[this.e + length])) {
            return 0;
        }
        this.e += length;
        this.i = i;
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
        r15.e += r10;
        r15.i = 15;
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
        r15.i = 16;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.ads.interactivemedia.v3.a.d.a.s():int");
    }

    private boolean a(char c2) throws IOException {
        switch (c2) {
            case '#':
            case '/':
            case ';':
            case '=':
            case '\\':
                x();
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
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 14) {
            strB = t();
        } else if (iO == 12) {
            strB = b('\'');
        } else if (iO == 13) {
            strB = b('\"');
        } else {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 69 + String.valueOf(strQ).length()).append("Expected a name but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
        this.i = 0;
        this.o[this.n - 1] = strB;
        return strB;
    }

    public String h() throws IOException {
        String str;
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 10) {
            str = t();
        } else if (iO == 8) {
            str = b('\'');
        } else if (iO == 9) {
            str = b('\"');
        } else if (iO == 11) {
            str = this.l;
            this.l = null;
        } else if (iO == 15) {
            str = Long.toString(this.j);
        } else if (iO == 16) {
            str = new String(this.f2735d, this.e, this.k);
            this.e += this.k;
        } else {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 71 + String.valueOf(strQ).length()).append("Expected a string but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
        this.i = 0;
        int[] iArr = this.p;
        int i = this.n - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 5) {
            this.i = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iO == 6) {
            this.i = 0;
            int[] iArr2 = this.p;
            int i2 = this.n - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        String strValueOf = String.valueOf(f());
        int iV = v();
        int iW = w();
        String strQ = q();
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 72 + String.valueOf(strQ).length()).append("Expected a boolean but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
    }

    public void j() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 7) {
            this.i = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return;
        }
        String strValueOf = String.valueOf(f());
        int iV = v();
        int iW = w();
        String strQ = q();
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 67 + String.valueOf(strQ).length()).append("Expected null but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
    }

    public double k() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 15) {
            this.i = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iO == 16) {
            this.l = new String(this.f2735d, this.e, this.k);
            this.e += this.k;
        } else if (iO == 8 || iO == 9) {
            this.l = b(iO == 8 ? '\'' : '\"');
        } else if (iO == 10) {
            this.l = t();
        } else if (iO != 11) {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 71 + String.valueOf(strQ).length()).append("Expected a double but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
        this.i = 11;
        double d2 = Double.parseDouble(this.l);
        if (!this.f2734c && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            int iV2 = v();
            int iW2 = w();
            String strQ2 = q();
            throw new d(new StringBuilder(String.valueOf(strQ2).length() + 102).append("JSON forbids NaN and infinities: ").append(d2).append(" at line ").append(iV2).append(" column ").append(iW2).append(" path ").append(strQ2).toString());
        }
        this.l = null;
        this.i = 0;
        int[] iArr2 = this.p;
        int i2 = this.n - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d2;
    }

    public long l() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 15) {
            this.i = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iO == 16) {
            this.l = new String(this.f2735d, this.e, this.k);
            this.e += this.k;
        } else if (iO == 8 || iO == 9) {
            this.l = b(iO == 8 ? '\'' : '\"');
            try {
                long j = Long.parseLong(this.l);
                this.i = 0;
                int[] iArr2 = this.p;
                int i2 = this.n - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException e) {
            }
        } else {
            String strValueOf = String.valueOf(f());
            int iV = v();
            int iW = w();
            String strQ = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 69 + String.valueOf(strQ).length()).append("Expected a long but was ").append(strValueOf).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
        }
        this.i = 11;
        double d2 = Double.parseDouble(this.l);
        long j2 = (long) d2;
        if (j2 != d2) {
            String str = this.l;
            int iV2 = v();
            int iW2 = w();
            String strQ2 = q();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(strQ2).length()).append("Expected a long but was ").append(str).append(" at line ").append(iV2).append(" column ").append(iW2).append(" path ").append(strQ2).toString());
        }
        this.l = null;
        this.i = 0;
        int[] iArr3 = this.p;
        int i3 = this.n - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }

    private String b(char c2) throws IOException {
        char[] cArr = this.f2735d;
        StringBuilder sb = new StringBuilder();
        do {
            int i = this.e;
            int i2 = this.f;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c3 = cArr[i3];
                if (c3 == c2) {
                    this.e = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    return sb.toString();
                }
                if (c3 == '\\') {
                    this.e = i4;
                    sb.append(cArr, i, (i4 - i) - 1);
                    sb.append(z());
                    i = this.e;
                    i2 = this.f;
                    i4 = i;
                } else if (c3 == '\n') {
                    this.g++;
                    this.h = i4;
                }
                i3 = i4;
            }
            sb.append(cArr, i, i3 - i);
            this.e = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private String t() throws IOException {
        String string;
        StringBuilder sb = null;
        int i = 0;
        while (true) {
            if (this.e + i < this.f) {
                switch (this.f2735d[this.e + i]) {
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
                        x();
                        break;
                    default:
                        i++;
                        continue;
                }
            } else if (i < this.f2735d.length) {
                if (b(i + 1)) {
                }
            } else {
                if (sb == null) {
                    sb = new StringBuilder();
                }
                sb.append(this.f2735d, this.e, i);
                this.e = i + this.e;
                if (b(1)) {
                    i = 0;
                } else {
                    i = 0;
                }
            }
        }
        if (sb == null) {
            string = new String(this.f2735d, this.e, i);
        } else {
            sb.append(this.f2735d, this.e, i);
            string = sb.toString();
        }
        this.e = i + this.e;
        return string;
    }

    private void c(char c2) throws IOException {
        char[] cArr = this.f2735d;
        do {
            int i = this.e;
            int i2 = this.f;
            int i3 = i;
            while (i3 < i2) {
                int i4 = i3 + 1;
                char c3 = cArr[i3];
                if (c3 == c2) {
                    this.e = i4;
                    return;
                }
                if (c3 == '\\') {
                    this.e = i4;
                    z();
                    i4 = this.e;
                    i2 = this.f;
                } else if (c3 == '\n') {
                    this.g++;
                    this.h = i4;
                }
                i3 = i4;
            }
            this.e = i3;
        } while (b(1));
        throw b("Unterminated string");
    }

    private void u() throws IOException {
        do {
            int i = 0;
            while (this.e + i < this.f) {
                switch (this.f2735d[this.e + i]) {
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
                        x();
                        break;
                    default:
                        i++;
                        break;
                }
                this.e = i + this.e;
                return;
            }
            this.e = i + this.e;
        } while (b(1));
    }

    public int m() throws IOException {
        int iO = this.i;
        if (iO == 0) {
            iO = o();
        }
        if (iO == 15) {
            int i = (int) this.j;
            if (this.j != i) {
                long j = this.j;
                int iV = v();
                int iW = w();
                String strQ = q();
                throw new NumberFormatException(new StringBuilder(String.valueOf(strQ).length() + 89).append("Expected an int but was ").append(j).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
            }
            this.i = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return i;
        }
        if (iO == 16) {
            this.l = new String(this.f2735d, this.e, this.k);
            this.e += this.k;
        } else if (iO == 8 || iO == 9) {
            this.l = b(iO == 8 ? '\'' : '\"');
            try {
                int i3 = Integer.parseInt(this.l);
                this.i = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException e) {
            }
        } else {
            String strValueOf = String.valueOf(f());
            int iV2 = v();
            int iW2 = w();
            String strQ2 = q();
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 69 + String.valueOf(strQ2).length()).append("Expected an int but was ").append(strValueOf).append(" at line ").append(iV2).append(" column ").append(iW2).append(" path ").append(strQ2).toString());
        }
        this.i = 11;
        double d2 = Double.parseDouble(this.l);
        int i5 = (int) d2;
        if (i5 != d2) {
            String str = this.l;
            int iV3 = v();
            int iW3 = w();
            String strQ3 = q();
            throw new NumberFormatException(new StringBuilder(String.valueOf(str).length() + 69 + String.valueOf(strQ3).length()).append("Expected an int but was ").append(str).append(" at line ").append(iV3).append(" column ").append(iW3).append(" path ").append(strQ3).toString());
        }
        this.l = null;
        this.i = 0;
        int[] iArr3 = this.p;
        int i6 = this.n - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.i = 0;
        this.m[0] = 8;
        this.n = 1;
        this.f2733b.close();
    }

    public void n() throws IOException {
        int i = 0;
        do {
            int iO = this.i;
            if (iO == 0) {
                iO = o();
            }
            if (iO == 3) {
                a(1);
                i++;
            } else if (iO == 1) {
                a(3);
                i++;
            } else if (iO == 4 || iO == 2) {
                this.n--;
                i--;
            } else if (iO == 14 || iO == 10) {
                u();
            } else if (iO == 8 || iO == 12) {
                c('\'');
            } else if (iO == 9 || iO == 13) {
                c('\"');
            } else if (iO == 16) {
                this.e += this.k;
            }
            this.i = 0;
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
        char[] cArr = this.f2735d;
        this.h -= this.e;
        if (this.f != this.e) {
            this.f -= this.e;
            System.arraycopy(cArr, this.e, cArr, 0, this.f);
        } else {
            this.f = 0;
        }
        this.e = 0;
        do {
            int i2 = this.f2733b.read(cArr, this.f, cArr.length - this.f);
            if (i2 == -1) {
                return false;
            }
            this.f = i2 + this.f;
            if (this.g == 0 && this.h == 0 && this.f > 0 && cArr[0] == 65279) {
                this.e++;
                this.h++;
                i++;
            }
        } while (this.f < i);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int v() {
        return this.g + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int w() {
        return (this.e - this.h) + 1;
    }

    private int b(boolean z) throws IOException {
        char[] cArr = this.f2735d;
        int i = this.e;
        int i2 = this.f;
        while (true) {
            if (i == i2) {
                this.e = i;
                if (b(1)) {
                    i = this.e;
                    i2 = this.f;
                } else {
                    if (z) {
                        String strValueOf = String.valueOf("End of input at line ");
                        throw new EOFException(new StringBuilder(String.valueOf(strValueOf).length() + 30).append(strValueOf).append(v()).append(" column ").append(w()).toString());
                    }
                    return -1;
                }
            }
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 == '\n') {
                this.g++;
                this.h = i3;
                i = i3;
            } else if (c2 == ' ' || c2 == '\r') {
                i = i3;
            } else if (c2 == '\t') {
                i = i3;
            } else if (c2 == '/') {
                this.e = i3;
                if (i3 == i2) {
                    this.e--;
                    boolean zB = b(2);
                    this.e++;
                    if (!zB) {
                        return c2;
                    }
                }
                x();
                switch (cArr[this.e]) {
                    case '*':
                        this.e++;
                        if (!a("*/")) {
                            throw b("Unterminated comment");
                        }
                        i = this.e + 2;
                        i2 = this.f;
                        break;
                        break;
                    case '/':
                        this.e++;
                        y();
                        i = this.e;
                        i2 = this.f;
                        break;
                    default:
                        return c2;
                }
            } else if (c2 == '#') {
                this.e = i3;
                x();
                y();
                i = this.e;
                i2 = this.f;
            } else {
                this.e = i3;
                return c2;
            }
        }
    }

    private void x() throws IOException {
        if (!this.f2734c) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void y() throws IOException {
        char c2;
        do {
            if (this.e < this.f || b(1)) {
                char[] cArr = this.f2735d;
                int i = this.e;
                this.e = i + 1;
                c2 = cArr[i];
                if (c2 == '\n') {
                    this.g++;
                    this.h = this.e;
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
            if (this.e + str.length() > this.f && !b(str.length())) {
                return false;
            }
            if (this.f2735d[this.e] == '\n') {
                this.g++;
                this.h = this.e + 1;
            } else {
                for (0; i < str.length(); i + 1) {
                    i = this.f2735d[this.e + i] == str.charAt(i) ? i + 1 : 0;
                }
                return true;
            }
            this.e++;
        }
    }

    public String toString() {
        String strValueOf = String.valueOf(getClass().getSimpleName());
        int iV = v();
        return new StringBuilder(String.valueOf(strValueOf).length() + 39).append(strValueOf).append(" at line ").append(iV).append(" column ").append(w()).toString();
    }

    public String q() {
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

    private char z() throws IOException {
        int i;
        if (this.e == this.f && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.f2735d;
        int i2 = this.e;
        this.e = i2 + 1;
        char c2 = cArr[i2];
        switch (c2) {
            case '\n':
                this.g++;
                this.h = this.e;
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
                if (this.e + 4 > this.f && !b(4)) {
                    throw b("Unterminated escape sequence");
                }
                int i3 = this.e;
                int i4 = i3 + 4;
                char c3 = 0;
                for (int i5 = i3; i5 < i4; i5++) {
                    char c4 = this.f2735d[i5];
                    char c5 = (char) (c3 << 4);
                    if (c4 >= '0' && c4 <= '9') {
                        i = c4 - '0';
                    } else if (c4 >= 'a' && c4 <= 'f') {
                        i = (c4 - 'a') + 10;
                    } else if (c4 >= 'A' && c4 <= 'F') {
                        i = (c4 - 'A') + 10;
                    } else {
                        String strValueOf = String.valueOf(new String(this.f2735d, this.e, 4));
                        throw new NumberFormatException(strValueOf.length() != 0 ? "\\u".concat(strValueOf) : new String("\\u"));
                    }
                    c3 = (char) (c5 + i);
                }
                this.e += 4;
                return c3;
            default:
                return c2;
        }
    }

    private IOException b(String str) throws IOException {
        int iV = v();
        int iW = w();
        String strQ = q();
        throw new d(new StringBuilder(String.valueOf(str).length() + 45 + String.valueOf(strQ).length()).append(str).append(" at line ").append(iV).append(" column ").append(iW).append(" path ").append(strQ).toString());
    }

    private void A() throws IOException {
        b(true);
        this.e--;
        if (this.e + f2732a.length <= this.f || b(f2732a.length)) {
            for (int i = 0; i < f2732a.length; i++) {
                if (this.f2735d[this.e + i] != f2732a[i]) {
                    return;
                }
            }
            this.e += f2732a.length;
        }
    }
}
