package c.a.g;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2701a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f2702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2703c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2704d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f2705e;
    private int f;
    private char[] g;

    public c(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f2701a = name;
        this.f2702b = name.length();
    }

    private String a() {
        while (true) {
            int i = this.f2703c;
            if (i >= this.f2702b || this.g[i] != ' ') {
                break;
            }
            this.f2703c = i + 1;
        }
        int i2 = this.f2703c;
        if (i2 == this.f2702b) {
            return null;
        }
        this.f2704d = i2;
        this.f2703c = i2 + 1;
        while (true) {
            int i3 = this.f2703c;
            if (i3 >= this.f2702b) {
                break;
            }
            char[] cArr = this.g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f2703c = i3 + 1;
        }
        int i4 = this.f2703c;
        if (i4 >= this.f2702b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f2701a);
        }
        this.f2705e = i4;
        if (this.g[i4] == ' ') {
            while (true) {
                int i5 = this.f2703c;
                if (i5 >= this.f2702b) {
                    break;
                }
                char[] cArr2 = this.g;
                if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                    break;
                }
                this.f2703c = i5 + 1;
            }
            char[] cArr3 = this.g;
            int i6 = this.f2703c;
            if (cArr3[i6] != '=' || i6 == this.f2702b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f2701a);
            }
        }
        this.f2703c++;
        while (true) {
            int i7 = this.f2703c;
            if (i7 >= this.f2702b || this.g[i7] != ' ') {
                break;
            }
            this.f2703c = i7 + 1;
        }
        int i8 = this.f2705e;
        int i9 = this.f2704d;
        if (i8 - i9 > 4) {
            char[] cArr4 = this.g;
            if (cArr4[i9 + 3] == '.' && (cArr4[i9] == 'O' || cArr4[i9] == 'o')) {
                char[] cArr5 = this.g;
                int i10 = this.f2704d;
                if (cArr5[i10 + 1] == 'I' || cArr5[i10 + 1] == 'i') {
                    char[] cArr6 = this.g;
                    int i11 = this.f2704d;
                    if (cArr6[i11 + 2] == 'D' || cArr6[i11 + 2] == 'd') {
                        this.f2704d += 4;
                    }
                }
            }
        }
        char[] cArr7 = this.g;
        int i12 = this.f2704d;
        return new String(cArr7, i12, this.f2705e - i12);
    }

    private String b() {
        int i = this.f2703c + 1;
        this.f2703c = i;
        this.f2704d = i;
        this.f2705e = i;
        while (true) {
            int i2 = this.f2703c;
            if (i2 == this.f2702b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f2701a);
            }
            char[] cArr = this.g;
            if (cArr[i2] == '\"') {
                this.f2703c = i2 + 1;
                while (true) {
                    int i3 = this.f2703c;
                    if (i3 >= this.f2702b || this.g[i3] != ' ') {
                        break;
                    }
                    this.f2703c = i3 + 1;
                }
                char[] cArr2 = this.g;
                int i4 = this.f2704d;
                return new String(cArr2, i4, this.f2705e - i4);
            }
            if (cArr[i2] == '\\') {
                cArr[this.f2705e] = e();
            } else {
                cArr[this.f2705e] = cArr[i2];
            }
            this.f2703c++;
            this.f2705e++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0061, code lost:
    
        r6.f2705e = r6.f2703c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String c() {
        /*
            r6 = this;
            int r0 = r6.f2703c
            int r1 = r0 + 4
            int r2 = r6.f2702b
            java.lang.String r3 = "Unexpected end of DN: "
            if (r1 >= r2) goto La7
            r6.f2704d = r0
            int r0 = r0 + 1
            r6.f2703c = r0
        L10:
            int r0 = r6.f2703c
            int r1 = r6.f2702b
            if (r0 == r1) goto L61
            char[] r1 = r6.g
            char r2 = r1[r0]
            r4 = 43
            if (r2 == r4) goto L61
            char r2 = r1[r0]
            r4 = 44
            if (r2 == r4) goto L61
            char r2 = r1[r0]
            r4 = 59
            if (r2 != r4) goto L2b
            goto L61
        L2b:
            char r2 = r1[r0]
            r4 = 32
            if (r2 != r4) goto L48
            r6.f2705e = r0
            int r0 = r0 + 1
            r6.f2703c = r0
        L37:
            int r0 = r6.f2703c
            int r1 = r6.f2702b
            if (r0 >= r1) goto L65
            char[] r1 = r6.g
            char r1 = r1[r0]
            if (r1 != r4) goto L65
            int r0 = r0 + 1
            r6.f2703c = r0
            goto L37
        L48:
            char r2 = r1[r0]
            r5 = 65
            if (r2 < r5) goto L5a
            char r2 = r1[r0]
            r5 = 70
            if (r2 > r5) goto L5a
            char r2 = r1[r0]
            int r2 = r2 + r4
            char r2 = (char) r2
            r1[r0] = r2
        L5a:
            int r0 = r6.f2703c
            int r0 = r0 + 1
            r6.f2703c = r0
            goto L10
        L61:
            int r0 = r6.f2703c
            r6.f2705e = r0
        L65:
            int r0 = r6.f2705e
            int r1 = r6.f2704d
            int r0 = r0 - r1
            r2 = 5
            if (r0 < r2) goto L90
            r2 = r0 & 1
            if (r2 == 0) goto L90
            int r2 = r0 / 2
            byte[] r3 = new byte[r2]
            r4 = 0
            int r1 = r1 + 1
        L78:
            if (r4 >= r2) goto L86
            int r5 = r6.a(r1)
            byte r5 = (byte) r5
            r3[r4] = r5
            int r1 = r1 + 2
            int r4 = r4 + 1
            goto L78
        L86:
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.g
            int r3 = r6.f2704d
            r1.<init>(r2, r3, r0)
            return r1
        L90:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r3)
            java.lang.String r2 = r6.f2701a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        La7:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r3)
            java.lang.String r2 = r6.f2701a
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            goto Lbf
        Lbe:
            throw r0
        Lbf:
            goto Lbe
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.g.c.c():java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        r1 = r8.g;
        r2 = r8.f2704d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
    
        return new java.lang.String(r1, r2, r8.f2705e - r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String d() {
        /*
            r8 = this;
            int r0 = r8.f2703c
            r8.f2704d = r0
            r8.f2705e = r0
        L6:
            int r0 = r8.f2703c
            int r1 = r8.f2702b
            if (r0 < r1) goto L19
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.g
            int r2 = r8.f2704d
            int r3 = r8.f2705e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L19:
            char[] r1 = r8.g
            char r2 = r1[r0]
            r3 = 44
            r4 = 43
            r5 = 59
            r6 = 32
            if (r2 == r6) goto L60
            if (r2 == r5) goto L53
            r5 = 92
            if (r2 == r5) goto L40
            if (r2 == r4) goto L53
            if (r2 == r3) goto L53
            int r2 = r8.f2705e
            int r3 = r2 + 1
            r8.f2705e = r3
            char r3 = r1[r0]
            r1[r2] = r3
            int r0 = r0 + 1
            r8.f2703c = r0
            goto L6
        L40:
            int r0 = r8.f2705e
            int r2 = r0 + 1
            r8.f2705e = r2
            char r2 = r8.e()
            r1[r0] = r2
            int r0 = r8.f2703c
            int r0 = r0 + 1
            r8.f2703c = r0
            goto L6
        L53:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.g
            int r2 = r8.f2704d
            int r3 = r8.f2705e
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        L60:
            int r2 = r8.f2705e
            r8.f = r2
            int r0 = r0 + 1
            r8.f2703c = r0
            int r0 = r2 + 1
            r8.f2705e = r0
            r1[r2] = r6
        L6e:
            int r0 = r8.f2703c
            int r1 = r8.f2702b
            if (r0 >= r1) goto L87
            char[] r1 = r8.g
            char r2 = r1[r0]
            if (r2 != r6) goto L87
            int r2 = r8.f2705e
            int r7 = r2 + 1
            r8.f2705e = r7
            r1[r2] = r6
            int r0 = r0 + 1
            r8.f2703c = r0
            goto L6e
        L87:
            int r0 = r8.f2703c
            int r1 = r8.f2702b
            if (r0 == r1) goto L9b
            char[] r1 = r8.g
            char r2 = r1[r0]
            if (r2 == r3) goto L9b
            char r2 = r1[r0]
            if (r2 == r4) goto L9b
            char r0 = r1[r0]
            if (r0 != r5) goto L6
        L9b:
            java.lang.String r0 = new java.lang.String
            char[] r1 = r8.g
            int r2 = r8.f2704d
            int r3 = r8.f
            int r3 = r3 - r2
            r0.<init>(r1, r2, r3)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.a.g.c.d():java.lang.String");
    }

    private char e() {
        int i = this.f2703c + 1;
        this.f2703c = i;
        if (i == this.f2702b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f2701a);
        }
        char c2 = this.g[i];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_' && c2 != '\"' && c2 != '#') {
            switch (c2) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c2) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            return f();
                    }
                    break;
            }
        }
        return this.g[this.f2703c];
    }

    private char f() {
        int i;
        int i2;
        int iA = a(this.f2703c);
        this.f2703c++;
        if (iA < 128) {
            return (char) iA;
        }
        if (iA < 192 || iA > 247) {
            return '?';
        }
        if (iA <= 223) {
            i2 = iA & 31;
            i = 1;
        } else if (iA <= 239) {
            i = 2;
            i2 = iA & 15;
        } else {
            i = 3;
            i2 = iA & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f2703c + 1;
            this.f2703c = i4;
            if (i4 == this.f2702b || this.g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f2703c = i5;
            int iA2 = a(i5);
            this.f2703c++;
            if ((iA2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (iA2 & 63);
        }
        return (char) i2;
    }

    private int a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.f2702b) {
            throw new IllegalStateException("Malformed DN: " + this.f2701a);
        }
        char c2 = this.g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f2701a);
            }
            i2 = c2 - '7';
        }
        char c3 = this.g[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f2701a);
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
    }

    public String a(String str) {
        String strB;
        this.f2703c = 0;
        this.f2704d = 0;
        this.f2705e = 0;
        this.f = 0;
        this.g = this.f2701a.toCharArray();
        String strA = a();
        if (strA == null) {
            return null;
        }
        do {
            int i = this.f2703c;
            if (i == this.f2702b) {
                return null;
            }
            char c2 = this.g[i];
            if (c2 == '\"') {
                strB = b();
            } else if (c2 == '#') {
                strB = c();
            } else {
                strB = (c2 == '+' || c2 == ',' || c2 == ';') ? "" : d();
            }
            if (str.equalsIgnoreCase(strA)) {
                return strB;
            }
            int i2 = this.f2703c;
            if (i2 >= this.f2702b) {
                return null;
            }
            char[] cArr = this.g;
            if (cArr[i2] != ',' && cArr[i2] != ';' && cArr[i2] != '+') {
                throw new IllegalStateException("Malformed DN: " + this.f2701a);
            }
            this.f2703c++;
            strA = a();
        } while (strA != null);
        throw new IllegalStateException("Malformed DN: " + this.f2701a);
    }
}
