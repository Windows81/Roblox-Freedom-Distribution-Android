package b.a.g;

import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1968a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f1969b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1970c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1971d;
    private int e;
    private int f;
    private char[] g;

    public c(X500Principal x500Principal) {
        this.f1968a = x500Principal.getName("RFC2253");
        this.f1969b = this.f1968a.length();
    }

    private String a() {
        while (this.f1970c < this.f1969b && this.g[this.f1970c] == ' ') {
            this.f1970c++;
        }
        if (this.f1970c == this.f1969b) {
            return null;
        }
        this.f1971d = this.f1970c;
        this.f1970c++;
        while (this.f1970c < this.f1969b && this.g[this.f1970c] != '=' && this.g[this.f1970c] != ' ') {
            this.f1970c++;
        }
        if (this.f1970c >= this.f1969b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
        }
        this.e = this.f1970c;
        if (this.g[this.f1970c] == ' ') {
            while (this.f1970c < this.f1969b && this.g[this.f1970c] != '=' && this.g[this.f1970c] == ' ') {
                this.f1970c++;
            }
            if (this.g[this.f1970c] != '=' || this.f1970c == this.f1969b) {
                throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
            }
        }
        this.f1970c++;
        while (this.f1970c < this.f1969b && this.g[this.f1970c] == ' ') {
            this.f1970c++;
        }
        if (this.e - this.f1971d > 4 && this.g[this.f1971d + 3] == '.' && ((this.g[this.f1971d] == 'O' || this.g[this.f1971d] == 'o') && ((this.g[this.f1971d + 1] == 'I' || this.g[this.f1971d + 1] == 'i') && (this.g[this.f1971d + 2] == 'D' || this.g[this.f1971d + 2] == 'd')))) {
            this.f1971d += 4;
        }
        return new String(this.g, this.f1971d, this.e - this.f1971d);
    }

    private String b() {
        this.f1970c++;
        this.f1971d = this.f1970c;
        this.e = this.f1971d;
        while (this.f1970c != this.f1969b) {
            if (this.g[this.f1970c] == '\"') {
                this.f1970c++;
                while (this.f1970c < this.f1969b && this.g[this.f1970c] == ' ') {
                    this.f1970c++;
                }
                return new String(this.g, this.f1971d, this.e - this.f1971d);
            }
            if (this.g[this.f1970c] == '\\') {
                this.g[this.e] = e();
            } else {
                this.g[this.e] = this.g[this.f1970c];
            }
            this.f1970c++;
            this.e++;
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
    }

    private String c() {
        int i;
        if (this.f1970c + 4 >= this.f1969b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
        }
        this.f1971d = this.f1970c;
        this.f1970c++;
        while (this.f1970c != this.f1969b && this.g[this.f1970c] != '+' && this.g[this.f1970c] != ',' && this.g[this.f1970c] != ';') {
            if (this.g[this.f1970c] == ' ') {
                this.e = this.f1970c;
                this.f1970c++;
                while (this.f1970c < this.f1969b && this.g[this.f1970c] == ' ') {
                    this.f1970c++;
                }
                i = this.e - this.f1971d;
                if (i >= 5 || (i & 1) == 0) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
                }
                byte[] bArr = new byte[i / 2];
                int i2 = this.f1971d + 1;
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    bArr[i3] = (byte) a(i2);
                    i2 += 2;
                }
                return new String(this.g, this.f1971d, i);
            }
            if (this.g[this.f1970c] >= 'A' && this.g[this.f1970c] <= 'F') {
                char[] cArr = this.g;
                int i4 = this.f1970c;
                cArr[i4] = (char) (cArr[i4] + ' ');
            }
            this.f1970c++;
        }
        this.e = this.f1970c;
        i = this.e - this.f1971d;
        if (i >= 5) {
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
    }

    private String d() {
        this.f1971d = this.f1970c;
        this.e = this.f1970c;
        while (this.f1970c < this.f1969b) {
            switch (this.g[this.f1970c]) {
                case ' ':
                    this.f = this.e;
                    this.f1970c++;
                    char[] cArr = this.g;
                    int i = this.e;
                    this.e = i + 1;
                    cArr[i] = ' ';
                    while (this.f1970c < this.f1969b && this.g[this.f1970c] == ' ') {
                        char[] cArr2 = this.g;
                        int i2 = this.e;
                        this.e = i2 + 1;
                        cArr2[i2] = ' ';
                        this.f1970c++;
                    }
                    if (this.f1970c == this.f1969b || this.g[this.f1970c] == ',' || this.g[this.f1970c] == '+' || this.g[this.f1970c] == ';') {
                        return new String(this.g, this.f1971d, this.f - this.f1971d);
                    }
                    break;
                case '+':
                case ',':
                case ';':
                    return new String(this.g, this.f1971d, this.e - this.f1971d);
                case '\\':
                    char[] cArr3 = this.g;
                    int i3 = this.e;
                    this.e = i3 + 1;
                    cArr3[i3] = e();
                    this.f1970c++;
                    break;
                default:
                    char[] cArr4 = this.g;
                    int i4 = this.e;
                    this.e = i4 + 1;
                    cArr4[i4] = this.g[this.f1970c];
                    this.f1970c++;
                    break;
            }
        }
        return new String(this.g, this.f1971d, this.e - this.f1971d);
    }

    private char e() {
        this.f1970c++;
        if (this.f1970c == this.f1969b) {
            throw new IllegalStateException("Unexpected end of DN: " + this.f1968a);
        }
        switch (this.g[this.f1970c]) {
            case ' ':
            case '\"':
            case '#':
            case '%':
            case '*':
            case '+':
            case ',':
            case ';':
            case '<':
            case '=':
            case '>':
            case '\\':
            case '_':
                return this.g[this.f1970c];
            default:
                return f();
        }
    }

    private char f() {
        int i;
        int i2;
        int iA = a(this.f1970c);
        this.f1970c++;
        if (iA < 128) {
            return (char) iA;
        }
        if (iA < 192 || iA > 247) {
            return '?';
        }
        if (iA <= 223) {
            i = 1;
            i2 = iA & 31;
        } else if (iA <= 239) {
            i = 2;
            i2 = iA & 15;
        } else {
            i = 3;
            i2 = iA & 7;
        }
        int i3 = i2;
        for (int i4 = 0; i4 < i; i4++) {
            this.f1970c++;
            if (this.f1970c == this.f1969b || this.g[this.f1970c] != '\\') {
                return '?';
            }
            this.f1970c++;
            int iA2 = a(this.f1970c);
            this.f1970c++;
            if ((iA2 & 192) != 128) {
                return '?';
            }
            i3 = (i3 << 6) + (iA2 & 63);
        }
        return (char) i3;
    }

    private int a(int i) {
        int i2;
        int i3;
        if (i + 1 >= this.f1969b) {
            throw new IllegalStateException("Malformed DN: " + this.f1968a);
        }
        char c2 = this.g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else if (c2 >= 'A' && c2 <= 'F') {
            i2 = c2 - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.f1968a);
        }
        char c3 = this.g[i + 1];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else if (c3 >= 'A' && c3 <= 'F') {
            i3 = c3 - '7';
        } else {
            throw new IllegalStateException("Malformed DN: " + this.f1968a);
        }
        return (i2 << 4) + i3;
    }

    public String a(String str) {
        this.f1970c = 0;
        this.f1971d = 0;
        this.e = 0;
        this.f = 0;
        this.g = this.f1968a.toCharArray();
        String strA = a();
        if (strA == null) {
            return null;
        }
        do {
            String strC = "";
            if (this.f1970c == this.f1969b) {
                return null;
            }
            switch (this.g[this.f1970c]) {
                case '\"':
                    strC = b();
                    break;
                case '#':
                    strC = c();
                    break;
                case '+':
                case ',':
                case ';':
                    break;
                default:
                    strC = d();
                    break;
            }
            if (!str.equalsIgnoreCase(strA)) {
                if (this.f1970c >= this.f1969b) {
                    return null;
                }
                if (this.g[this.f1970c] != ',' && this.g[this.f1970c] != ';' && this.g[this.f1970c] != '+') {
                    throw new IllegalStateException("Malformed DN: " + this.f1968a);
                }
                this.f1970c++;
                strA = a();
            } else {
                return strC;
            }
        } while (strA != null);
        throw new IllegalStateException("Malformed DN: " + this.f1968a);
    }
}
