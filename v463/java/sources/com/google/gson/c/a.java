package com.google.gson.c;

import com.google.gson.internal.e;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final char[] f5312b = ")]}'\n".toCharArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Reader f5314c;
    private long j;
    private int k;
    private String l;
    private int[] m;
    private int n;
    private String[] o;
    private int[] p;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5315d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final char[] f5316e = new char[1024];
    private int f = 0;
    private int g = 0;
    private int h = 0;
    private int i = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    int f5313a = 0;

    static {
        e.f5477a = new e() { // from class: com.google.gson.c.a.1
            @Override // com.google.gson.internal.e
            public void a(a aVar) throws IOException {
                if (aVar instanceof com.google.gson.internal.bind.c) {
                    ((com.google.gson.internal.bind.c) aVar).o();
                    return;
                }
                int iR = aVar.f5313a;
                if (iR == 0) {
                    iR = aVar.r();
                }
                if (iR == 13) {
                    aVar.f5313a = 9;
                    return;
                }
                if (iR == 12) {
                    aVar.f5313a = 8;
                    return;
                }
                if (iR == 14) {
                    aVar.f5313a = 10;
                    return;
                }
                throw new IllegalStateException("Expected a name but was " + aVar.f() + aVar.s());
            }
        };
    }

    public a(Reader reader) {
        int[] iArr = new int[32];
        this.m = iArr;
        this.n = 0;
        this.n = 0 + 1;
        iArr[0] = 6;
        this.o = new String[32];
        this.p = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f5314c = reader;
    }

    public final void a(boolean z) {
        this.f5315d = z;
    }

    public final boolean q() {
        return this.f5315d;
    }

    public void a() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 3) {
            a(1);
            this.p[this.n - 1] = 0;
            this.f5313a = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + f() + s());
        }
    }

    public void b() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 4) {
            int i = this.n - 1;
            this.n = i;
            int[] iArr = this.p;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
            this.f5313a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + f() + s());
    }

    public void c() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 1) {
            a(3);
            this.f5313a = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + f() + s());
        }
    }

    public void d() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 2) {
            int i = this.n - 1;
            this.n = i;
            this.o[i] = null;
            int[] iArr = this.p;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
            this.f5313a = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + f() + s());
    }

    public boolean e() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        return (iR == 2 || iR == 4) ? false : true;
    }

    public b f() throws IOException {
        int iR = this.f5313a;
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
        int iB;
        int[] iArr = this.m;
        int i = this.n;
        int i2 = iArr[i - 1];
        if (i2 == 1) {
            iArr[i - 1] = 2;
        } else if (i2 == 2) {
            int iB2 = b(true);
            if (iB2 != 44) {
                if (iB2 != 59) {
                    if (iB2 == 93) {
                        this.f5313a = 4;
                        return 4;
                    }
                    throw b("Unterminated array");
                }
                w();
            }
        } else {
            if (i2 == 3 || i2 == 5) {
                this.m[this.n - 1] = 4;
                if (i2 == 5 && (iB = b(true)) != 44) {
                    if (iB != 59) {
                        if (iB == 125) {
                            this.f5313a = 2;
                            return 2;
                        }
                        throw b("Unterminated object");
                    }
                    w();
                }
                int iB3 = b(true);
                if (iB3 == 34) {
                    this.f5313a = 13;
                    return 13;
                }
                if (iB3 == 39) {
                    w();
                    this.f5313a = 12;
                    return 12;
                }
                if (iB3 == 125) {
                    if (i2 != 5) {
                        this.f5313a = 2;
                        return 2;
                    }
                    throw b("Expected name");
                }
                w();
                this.f--;
                if (a((char) iB3)) {
                    this.f5313a = 14;
                    return 14;
                }
                throw b("Expected name");
            }
            if (i2 == 4) {
                iArr[i - 1] = 5;
                int iB4 = b(true);
                if (iB4 != 58) {
                    if (iB4 == 61) {
                        w();
                        if (this.f < this.g || b(1)) {
                            char[] cArr = this.f5316e;
                            int i3 = this.f;
                            if (cArr[i3] == '>') {
                                this.f = i3 + 1;
                            }
                        }
                    } else {
                        throw b("Expected ':'");
                    }
                }
            } else if (i2 == 6) {
                if (this.f5315d) {
                    z();
                }
                this.m[this.n - 1] = 7;
            } else if (i2 == 7) {
                if (b(false) == -1) {
                    this.f5313a = 17;
                    return 17;
                }
                w();
                this.f--;
            } else if (i2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int iB5 = b(true);
        if (iB5 == 34) {
            this.f5313a = 9;
            return 9;
        }
        if (iB5 == 39) {
            w();
            this.f5313a = 8;
            return 8;
        }
        if (iB5 != 44 && iB5 != 59) {
            if (iB5 == 91) {
                this.f5313a = 3;
                return 3;
            }
            if (iB5 != 93) {
                if (iB5 == 123) {
                    this.f5313a = 1;
                    return 1;
                }
                this.f--;
                int iO = o();
                if (iO != 0) {
                    return iO;
                }
                int iT = t();
                if (iT != 0) {
                    return iT;
                }
                if (!a(this.f5316e[this.f])) {
                    throw b("Expected value");
                }
                w();
                this.f5313a = 10;
                return 10;
            }
            if (i2 == 1) {
                this.f5313a = 4;
                return 4;
            }
        }
        if (i2 == 1 || i2 == 2) {
            w();
            this.f--;
            this.f5313a = 7;
            return 7;
        }
        throw b("Unexpected value");
    }

    private int o() throws IOException {
        int i;
        String str;
        String str2;
        char c2 = this.f5316e[this.f];
        if (c2 == 't' || c2 == 'T') {
            i = 5;
            str = "true";
            str2 = "TRUE";
        } else if (c2 == 'f' || c2 == 'F') {
            i = 6;
            str = "false";
            str2 = "FALSE";
        } else {
            if (c2 != 'n' && c2 != 'N') {
                return 0;
            }
            i = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int i2 = 1; i2 < length; i2++) {
            if (this.f + i2 >= this.g && !b(i2 + 1)) {
                return 0;
            }
            char c3 = this.f5316e[this.f + i2];
            if (c3 != str.charAt(i2) && c3 != str2.charAt(i2)) {
                return 0;
            }
        }
        if ((this.f + length < this.g || b(length + 1)) && a(this.f5316e[this.f + length])) {
            return 0;
        }
        this.f += length;
        this.f5313a = i;
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x0097, code lost:
    
        if (a(r14) != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0099, code lost:
    
        if (r9 != 2) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
    
        if (r10 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a1, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
    
        if (r13 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a9, code lost:
    
        if (r11 != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00ab, code lost:
    
        if (r13 != false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00ad, code lost:
    
        if (r13 == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b0, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b1, code lost:
    
        r18.j = r11;
        r18.f += r8;
        r18.f5313a = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00bc, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00bd, code lost:
    
        if (r9 == 2) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00c0, code lost:
    
        if (r9 == 4) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c3, code lost:
    
        if (r9 != 7) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c6, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c8, code lost:
    
        r18.k = r8;
        r18.f5313a = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00ce, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00cf, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private int t() throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.t():int");
    }

    private boolean a(char c2) throws IOException {
        if (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ') {
            return false;
        }
        if (c2 != '#') {
            if (c2 == ',') {
                return false;
            }
            if (c2 != '/' && c2 != '=') {
                if (c2 == '{' || c2 == '}' || c2 == ':') {
                    return false;
                }
                if (c2 != ';') {
                    switch (c2) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        w();
        return false;
    }

    public String g() throws IOException {
        String strB;
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 14) {
            strB = u();
        } else if (iR == 12) {
            strB = b('\'');
        } else if (iR == 13) {
            strB = b('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + f() + s());
        }
        this.f5313a = 0;
        this.o[this.n - 1] = strB;
        return strB;
    }

    public String h() throws IOException {
        String str;
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 10) {
            str = u();
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
            str = new String(this.f5316e, this.f, this.k);
            this.f += this.k;
        } else {
            throw new IllegalStateException("Expected a string but was " + f() + s());
        }
        this.f5313a = 0;
        int[] iArr = this.p;
        int i = this.n - 1;
        iArr[i] = iArr[i] + 1;
        return str;
    }

    public boolean i() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 5) {
            this.f5313a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return true;
        }
        if (iR == 6) {
            this.f5313a = 0;
            int[] iArr2 = this.p;
            int i2 = this.n - 1;
            iArr2[i2] = iArr2[i2] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + f() + s());
    }

    public void j() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 7) {
            this.f5313a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + f() + s());
    }

    public double k() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            this.f5313a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iR == 16) {
            this.l = new String(this.f5316e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9) {
            this.l = b(iR == 8 ? '\'' : '\"');
        } else if (iR == 10) {
            this.l = u();
        } else if (iR != 11) {
            throw new IllegalStateException("Expected a double but was " + f() + s());
        }
        this.f5313a = 11;
        double d2 = Double.parseDouble(this.l);
        if (!this.f5315d && (Double.isNaN(d2) || Double.isInfinite(d2))) {
            throw new d("JSON forbids NaN and infinities: " + d2 + s());
        }
        this.l = null;
        this.f5313a = 0;
        int[] iArr2 = this.p;
        int i2 = this.n - 1;
        iArr2[i2] = iArr2[i2] + 1;
        return d2;
    }

    public long l() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            this.f5313a = 0;
            int[] iArr = this.p;
            int i = this.n - 1;
            iArr[i] = iArr[i] + 1;
            return this.j;
        }
        if (iR == 16) {
            this.l = new String(this.f5316e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9 || iR == 10) {
            if (iR == 10) {
                this.l = u();
            } else {
                this.l = b(iR == 8 ? '\'' : '\"');
            }
            try {
                long j = Long.parseLong(this.l);
                this.f5313a = 0;
                int[] iArr2 = this.p;
                int i2 = this.n - 1;
                iArr2[i2] = iArr2[i2] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + f() + s());
        }
        this.f5313a = 11;
        double d2 = Double.parseDouble(this.l);
        long j2 = (long) d2;
        if (j2 != d2) {
            throw new NumberFormatException("Expected a long but was " + this.l + s());
        }
        this.l = null;
        this.f5313a = 0;
        int[] iArr3 = this.p;
        int i3 = this.n - 1;
        iArr3[i3] = iArr3[i3] + 1;
        return j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r9.f = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String b(char r10) throws java.io.IOException {
        /*
            r9 = this;
            char[] r0 = r9.f5316e
            r1 = 0
        L3:
            int r2 = r9.f
            int r3 = r9.g
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5c
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.f = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r10 = new java.lang.String
            r10.<init>(r0, r3, r7)
            return r10
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r10 = r1.toString()
            return r10
        L28:
            r8 = 92
            if (r2 != r8) goto L4f
            r9.f = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L40
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L40:
            r1.append(r0, r3, r7)
            char r2 = r9.y()
            r1.append(r2)
            int r2 = r9.f
            int r3 = r9.g
            goto L7
        L4f:
            r5 = 10
            if (r2 != r5) goto L5a
            int r2 = r9.h
            int r2 = r2 + r6
            r9.h = r2
            r9.i = r7
        L5a:
            r2 = r7
            goto L9
        L5c:
            if (r1 != 0) goto L6c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.f = r2
            boolean r2 = r9.b(r6)
            if (r2 == 0) goto L7a
            goto L3
        L7a:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r10 = r9.b(r10)
            goto L82
        L81:
            throw r10
        L82:
            goto L81
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.b(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        w();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String u() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = 0
        L3:
            int r3 = r6.f
            int r4 = r3 + r2
            int r5 = r6.g
            if (r4 >= r5) goto L4e
            char[] r4 = r6.f5316e
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.w()
            goto L5c
        L4e:
            char[] r3 = r6.f5316e
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.b(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.f5316e
            int r4 = r6.f
            r1.append(r3, r4, r2)
            int r3 = r6.f
            int r3 = r3 + r2
            r6.f = r3
            r2 = 1
            boolean r2 = r6.b(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.f5316e
            int r3 = r6.f
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.f5316e
            int r3 = r6.f
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.f
            int r2 = r2 + r0
            r6.f = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.u():java.lang.String");
    }

    private void c(char c2) throws IOException {
        char[] cArr = this.f5316e;
        do {
            int i = this.f;
            int i2 = this.g;
            while (i < i2) {
                int i3 = i + 1;
                char c3 = cArr[i];
                if (c3 == c2) {
                    this.f = i3;
                    return;
                }
                if (c3 == '\\') {
                    this.f = i3;
                    y();
                    i = this.f;
                    i2 = this.g;
                } else {
                    if (c3 == '\n') {
                        this.h++;
                        this.i = i3;
                    }
                    i = i3;
                }
            }
            this.f = i;
        } while (b(1));
        throw b("Unterminated string");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        w();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void v() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.f
            int r2 = r1 + r0
            int r3 = r4.g
            if (r2 >= r3) goto L51
            char[] r2 = r4.f5316e
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.w()
        L4b:
            int r1 = r4.f
            int r1 = r1 + r0
            r4.f = r1
            return
        L51:
            int r1 = r1 + r0
            r4.f = r1
            r0 = 1
            boolean r0 = r4.b(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.c.a.v():void");
    }

    public int m() throws IOException {
        int iR = this.f5313a;
        if (iR == 0) {
            iR = r();
        }
        if (iR == 15) {
            long j = this.j;
            int i = (int) j;
            if (j != i) {
                throw new NumberFormatException("Expected an int but was " + this.j + s());
            }
            this.f5313a = 0;
            int[] iArr = this.p;
            int i2 = this.n - 1;
            iArr[i2] = iArr[i2] + 1;
            return i;
        }
        if (iR == 16) {
            this.l = new String(this.f5316e, this.f, this.k);
            this.f += this.k;
        } else if (iR == 8 || iR == 9 || iR == 10) {
            if (iR == 10) {
                this.l = u();
            } else {
                this.l = b(iR == 8 ? '\'' : '\"');
            }
            try {
                int i3 = Integer.parseInt(this.l);
                this.f5313a = 0;
                int[] iArr2 = this.p;
                int i4 = this.n - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return i3;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + f() + s());
        }
        this.f5313a = 11;
        double d2 = Double.parseDouble(this.l);
        int i5 = (int) d2;
        if (i5 != d2) {
            throw new NumberFormatException("Expected an int but was " + this.l + s());
        }
        this.l = null;
        this.f5313a = 0;
        int[] iArr3 = this.p;
        int i6 = this.n - 1;
        iArr3[i6] = iArr3[i6] + 1;
        return i5;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5313a = 0;
        this.m[0] = 8;
        this.n = 1;
        this.f5314c.close();
    }

    public void n() throws IOException {
        int i = 0;
        do {
            int iR = this.f5313a;
            if (iR == 0) {
                iR = r();
            }
            if (iR == 3) {
                a(1);
            } else if (iR == 1) {
                a(3);
            } else if (iR == 4 || iR == 2) {
                this.n--;
                i--;
                this.f5313a = 0;
            } else {
                if (iR == 14 || iR == 10) {
                    v();
                } else if (iR == 8 || iR == 12) {
                    c('\'');
                } else if (iR == 9 || iR == 13) {
                    c('\"');
                } else if (iR == 16) {
                    this.f += this.k;
                }
                this.f5313a = 0;
            }
            i++;
            this.f5313a = 0;
        } while (i != 0);
        int[] iArr = this.p;
        int i2 = this.n;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.o[i2 - 1] = "null";
    }

    private void a(int i) {
        int i2 = this.n;
        int[] iArr = this.m;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            int[] iArr3 = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.p, 0, iArr3, 0, this.n);
            System.arraycopy(this.o, 0, strArr, 0, this.n);
            this.m = iArr2;
            this.p = iArr3;
            this.o = strArr;
        }
        int[] iArr4 = this.m;
        int i3 = this.n;
        this.n = i3 + 1;
        iArr4[i3] = i;
    }

    private boolean b(int i) throws IOException {
        int i2;
        char[] cArr = this.f5316e;
        int i3 = this.i;
        int i4 = this.f;
        this.i = i3 - i4;
        int i5 = this.g;
        if (i5 != i4) {
            int i6 = i5 - i4;
            this.g = i6;
            System.arraycopy(cArr, i4, cArr, 0, i6);
        } else {
            this.g = 0;
        }
        this.f = 0;
        do {
            Reader reader = this.f5314c;
            int i7 = this.g;
            int i8 = reader.read(cArr, i7, cArr.length - i7);
            if (i8 == -1) {
                return false;
            }
            int i9 = this.g + i8;
            this.g = i9;
            if (this.h == 0 && (i2 = this.i) == 0 && i9 > 0 && cArr[0] == 65279) {
                this.f++;
                this.i = i2 + 1;
                i++;
            }
        } while (this.g < i);
        return true;
    }

    private int b(boolean z) throws IOException {
        char[] cArr = this.f5316e;
        int i = this.f;
        int i2 = this.g;
        while (true) {
            if (i == i2) {
                this.f = i;
                if (!b(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + s());
                }
                i = this.f;
                i2 = this.g;
            }
            int i3 = i + 1;
            char c2 = cArr[i];
            if (c2 == '\n') {
                this.h++;
                this.i = i3;
            } else if (c2 != ' ' && c2 != '\r' && c2 != '\t') {
                if (c2 == '/') {
                    this.f = i3;
                    if (i3 == i2) {
                        this.f = i3 - 1;
                        boolean zB = b(2);
                        this.f++;
                        if (!zB) {
                            return c2;
                        }
                    }
                    w();
                    int i4 = this.f;
                    char c3 = cArr[i4];
                    if (c3 == '*') {
                        this.f = i4 + 1;
                        if (!a("*/")) {
                            throw b("Unterminated comment");
                        }
                        i = this.f + 2;
                        i2 = this.g;
                    } else {
                        if (c3 != '/') {
                            return c2;
                        }
                        this.f = i4 + 1;
                        x();
                        i = this.f;
                        i2 = this.g;
                    }
                } else if (c2 == '#') {
                    this.f = i3;
                    w();
                    x();
                    i = this.f;
                    i2 = this.g;
                } else {
                    this.f = i3;
                    return c2;
                }
            }
            i = i3;
        }
    }

    private void w() throws IOException {
        if (!this.f5315d) {
            throw b("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void x() throws IOException {
        char c2;
        do {
            if (this.f >= this.g && !b(1)) {
                return;
            }
            char[] cArr = this.f5316e;
            int i = this.f;
            int i2 = i + 1;
            this.f = i2;
            c2 = cArr[i];
            if (c2 == '\n') {
                this.h++;
                this.i = i2;
                return;
            }
        } while (c2 != '\r');
    }

    private boolean a(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.f + length > this.g && !b(length)) {
                return false;
            }
            char[] cArr = this.f5316e;
            int i = this.f;
            if (cArr[i] != '\n') {
                for (int i2 = 0; i2 < length; i2++) {
                    if (this.f5316e[this.f + i2] != str.charAt(i2)) {
                        break;
                    }
                }
                return true;
            }
            this.h++;
            this.i = i + 1;
            this.f++;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + s();
    }

    String s() {
        return " at line " + (this.h + 1) + " column " + ((this.f - this.i) + 1) + " path " + p();
    }

    public String p() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int i = this.n;
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = this.m[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(this.p[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String[] strArr = this.o;
                if (strArr[i2] != null) {
                    sb.append(strArr[i2]);
                }
            }
        }
        return sb.toString();
    }

    private char y() throws IOException {
        int i;
        int i2;
        if (this.f == this.g && !b(1)) {
            throw b("Unterminated escape sequence");
        }
        char[] cArr = this.f5316e;
        int i3 = this.f;
        int i4 = i3 + 1;
        this.f = i4;
        char c2 = cArr[i3];
        if (c2 == '\n') {
            this.h++;
            this.i = i4;
        } else if (c2 != '\"' && c2 != '\'' && c2 != '/' && c2 != '\\') {
            if (c2 == 'b') {
                return '\b';
            }
            if (c2 == 'f') {
                return '\f';
            }
            if (c2 == 'n') {
                return '\n';
            }
            if (c2 == 'r') {
                return '\r';
            }
            if (c2 == 't') {
                return '\t';
            }
            if (c2 == 'u') {
                if (i4 + 4 > this.g && !b(4)) {
                    throw b("Unterminated escape sequence");
                }
                char c3 = 0;
                int i5 = this.f;
                int i6 = i5 + 4;
                while (i5 < i6) {
                    char c4 = this.f5316e[i5];
                    char c5 = (char) (c3 << 4);
                    if (c4 < '0' || c4 > '9') {
                        if (c4 >= 'a' && c4 <= 'f') {
                            i = c4 - 'a';
                        } else {
                            if (c4 < 'A' || c4 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.f5316e, this.f, 4));
                            }
                            i = c4 - 'A';
                        }
                        i2 = i + 10;
                    } else {
                        i2 = c4 - '0';
                    }
                    c3 = (char) (c5 + i2);
                    i5++;
                }
                this.f += 4;
                return c3;
            }
            throw b("Invalid escape sequence");
        }
        return c2;
    }

    private IOException b(String str) throws IOException {
        throw new d(str + s());
    }

    private void z() throws IOException {
        b(true);
        int i = this.f - 1;
        this.f = i;
        char[] cArr = f5312b;
        if (i + cArr.length > this.g && !b(cArr.length)) {
            return;
        }
        int i2 = 0;
        while (true) {
            char[] cArr2 = f5312b;
            if (i2 < cArr2.length) {
                if (this.f5316e[this.f + i2] != cArr2[i2]) {
                    return;
                } else {
                    i2++;
                }
            } else {
                this.f += cArr2.length;
                return;
            }
        }
    }
}
