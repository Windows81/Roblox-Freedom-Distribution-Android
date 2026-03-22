package c;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f implements Serializable, Comparable<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f2132a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f2133b = a(new byte[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final byte[] f2134c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f2135d;
    transient String e;

    f(byte[] bArr) {
        this.f2134c = bArr;
    }

    public static f a(byte... bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("data == null");
        }
        return new f((byte[]) bArr.clone());
    }

    public static f a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("s == null");
        }
        f fVar = new f(str.getBytes(u.f2172a));
        fVar.e = str;
        return fVar;
    }

    public String a() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f2134c, u.f2172a);
        this.e = str2;
        return str2;
    }

    public String b() {
        return b.a(this.f2134c);
    }

    public String c() {
        char[] cArr = new char[this.f2134c.length * 2];
        int i = 0;
        for (byte b2 : this.f2134c) {
            int i2 = i + 1;
            cArr[i] = f2132a[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = f2132a[b2 & 15];
        }
        return new String(cArr);
    }

    public f d() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f2134c.length) {
                byte b2 = this.f2134c[i2];
                if (b2 < 65 || b2 > 90) {
                    i = i2 + 1;
                } else {
                    byte[] bArr = (byte[]) this.f2134c.clone();
                    bArr[i2] = (byte) (b2 + 32);
                    for (int i3 = i2 + 1; i3 < bArr.length; i3++) {
                        byte b3 = bArr[i3];
                        if (b3 >= 65 && b3 <= 90) {
                            bArr[i3] = (byte) (b3 + 32);
                        }
                    }
                    return new f(bArr);
                }
            } else {
                return this;
            }
        }
    }

    public f a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        if (i2 > this.f2134c.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f2134c.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i != 0 || i2 != this.f2134c.length) {
            byte[] bArr = new byte[i3];
            System.arraycopy(this.f2134c, i, bArr, 0, i3);
            return new f(bArr);
        }
        return this;
    }

    public byte a(int i) {
        return this.f2134c[i];
    }

    public int e() {
        return this.f2134c.length;
    }

    public byte[] f() {
        return (byte[]) this.f2134c.clone();
    }

    void a(c cVar) {
        cVar.c(this.f2134c, 0, this.f2134c.length);
    }

    public boolean a(int i, f fVar, int i2, int i3) {
        return fVar.a(i2, this.f2134c, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= this.f2134c.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && u.a(this.f2134c, i, bArr, i2, i3);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof f) && ((f) obj).e() == this.f2134c.length && ((f) obj).a(0, this.f2134c, 0, this.f2134c.length);
    }

    public int hashCode() {
        int i = this.f2135d;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.f2134c);
        this.f2135d = iHashCode;
        return iHashCode;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(f fVar) {
        int iE = e();
        int iE2 = fVar.e();
        int iMin = Math.min(iE, iE2);
        for (int i = 0; i < iMin; i++) {
            int iA = a(i) & 255;
            int iA2 = fVar.a(i) & 255;
            if (iA != iA2) {
                return iA < iA2 ? -1 : 1;
            }
        }
        if (iE == iE2) {
            return 0;
        }
        return iE >= iE2 ? 1 : -1;
    }

    public String toString() {
        if (this.f2134c.length == 0) {
            return "[size=0]";
        }
        String strA = a();
        int iA = a(strA, 64);
        if (iA == -1) {
            if (this.f2134c.length <= 64) {
                return "[hex=" + c() + "]";
            }
            return "[size=" + this.f2134c.length + " hex=" + a(0, 64).c() + "…]";
        }
        String strReplace = strA.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        return iA < strA.length() ? "[size=" + this.f2134c.length + " text=" + strReplace + "…]" : "[text=" + strReplace + "]";
    }

    static int a(String str, int i) {
        int iCharCount = 0;
        int length = str.length();
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 != i) {
                int iCodePointAt = str.codePointAt(iCharCount);
                if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                    return -1;
                }
                i2++;
                iCharCount += Character.charCount(iCodePointAt);
            } else {
                return iCharCount;
            }
        }
        return str.length();
    }
}
