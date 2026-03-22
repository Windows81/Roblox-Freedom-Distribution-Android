package d;

import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements Serializable, Comparable<f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final char[] f7765a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final f f7766b = a(new byte[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final byte[] f7767c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f7768d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    transient String f7769e;

    f(byte[] bArr) {
        this.f7767c = bArr;
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
        f fVar = new f(str.getBytes(u.f7808a));
        fVar.f7769e = str;
        return fVar;
    }

    public String a() {
        String str = this.f7769e;
        if (str != null) {
            return str;
        }
        String str2 = new String(this.f7767c, u.f7808a);
        this.f7769e = str2;
        return str2;
    }

    public String b() {
        return b.a(this.f7767c);
    }

    public String c() {
        byte[] bArr = this.f7767c;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            char[] cArr2 = f7765a;
            cArr[i] = cArr2[(b2 >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b2 & 15];
        }
        return new String(cArr);
    }

    public f d() {
        int i = 0;
        while (true) {
            byte[] bArr = this.f7767c;
            if (i >= bArr.length) {
                return this;
            }
            byte b2 = bArr[i];
            if (b2 >= 65 && b2 <= 90) {
                byte[] bArr2 = (byte[]) bArr.clone();
                bArr2[i] = (byte) (b2 + 32);
                for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                    byte b3 = bArr2[i2];
                    if (b3 >= 65 && b3 <= 90) {
                        bArr2[i2] = (byte) (b3 + 32);
                    }
                }
                return new f(bArr2);
            }
            i++;
        }
    }

    public f a(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0");
        }
        byte[] bArr = this.f7767c;
        if (i2 > bArr.length) {
            throw new IllegalArgumentException("endIndex > length(" + this.f7767c.length + ")");
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex");
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        byte[] bArr2 = new byte[i3];
        System.arraycopy(this.f7767c, i, bArr2, 0, i3);
        return new f(bArr2);
    }

    public byte a(int i) {
        return this.f7767c[i];
    }

    public int e() {
        return this.f7767c.length;
    }

    public byte[] f() {
        return (byte[]) this.f7767c.clone();
    }

    void a(c cVar) {
        byte[] bArr = this.f7767c;
        cVar.c(bArr, 0, bArr.length);
    }

    public boolean a(int i, f fVar, int i2, int i3) {
        return fVar.a(i2, this.f7767c, i, i3);
    }

    public boolean a(int i, byte[] bArr, int i2, int i3) {
        if (i >= 0) {
            byte[] bArr2 = this.f7767c;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && u.a(bArr2, i, bArr, i2, i3)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            int iE = fVar.e();
            byte[] bArr = this.f7767c;
            if (iE == bArr.length && fVar.a(0, bArr, 0, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = this.f7768d;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.f7767c);
        this.f7768d = iHashCode;
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
        return iE < iE2 ? -1 : 1;
    }

    public String toString() {
        StringBuilder sb;
        if (this.f7767c.length == 0) {
            return "[size=0]";
        }
        String strA = a();
        int iA = a(strA, 64);
        if (iA == -1) {
            if (this.f7767c.length <= 64) {
                return "[hex=" + c() + "]";
            }
            return "[size=" + this.f7767c.length + " hex=" + a(0, 64).c() + "…]";
        }
        String strReplace = strA.substring(0, iA).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (iA < strA.length()) {
            sb = new StringBuilder();
            sb.append("[size=");
            sb.append(this.f7767c.length);
            sb.append(" text=");
            sb.append(strReplace);
            sb.append("…]");
        } else {
            sb = new StringBuilder();
            sb.append("[text=");
            sb.append(strReplace);
            sb.append("]");
        }
        return sb.toString();
    }

    static int a(String str, int i) {
        int length = str.length();
        int iCharCount = 0;
        int i2 = 0;
        while (iCharCount < length) {
            if (i2 == i) {
                return iCharCount;
            }
            int iCodePointAt = str.codePointAt(iCharCount);
            if ((Character.isISOControl(iCodePointAt) && iCodePointAt != 10 && iCodePointAt != 13) || iCodePointAt == 65533) {
                return -1;
            }
            i2++;
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.length();
    }
}
