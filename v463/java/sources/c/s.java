package c;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String[] f2819a;

    private s(a aVar) {
        this.f2819a = (String[]) aVar.f2820a.toArray(new String[aVar.f2820a.size()]);
    }

    private s(String[] strArr) {
        this.f2819a = strArr;
    }

    public String a(String str) {
        return a(this.f2819a, str);
    }

    public Date b(String str) {
        String strA = a(str);
        if (strA != null) {
            return c.a.d.e.a(strA);
        }
        return null;
    }

    public int a() {
        return this.f2819a.length / 2;
    }

    public String a(int i) {
        return this.f2819a[i * 2];
    }

    public String b(int i) {
        return this.f2819a[(i * 2) + 1];
    }

    public List<String> c(String str) {
        int iA = a();
        ArrayList arrayList = null;
        for (int i = 0; i < iA; i++) {
            if (str.equalsIgnoreCase(a(i))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(b(i));
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public a b() {
        a aVar = new a();
        Collections.addAll(aVar.f2820a, this.f2819a);
        return aVar;
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && Arrays.equals(((s) obj).f2819a, this.f2819a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f2819a);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int iA = a();
        for (int i = 0; i < iA; i++) {
            sb.append(a(i));
            sb.append(": ");
            sb.append(b(i));
            sb.append("\n");
        }
        return sb.toString();
    }

    private static String a(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }

    public static s a(String... strArr) {
        if (strArr == null) {
            throw new NullPointerException("namesAndValues == null");
        }
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Expected alternating header names and values");
        }
        String[] strArr2 = (String[]) strArr.clone();
        for (int i = 0; i < strArr2.length; i++) {
            if (strArr2[i] == null) {
                throw new IllegalArgumentException("Headers cannot be null");
            }
            strArr2[i] = strArr2[i].trim();
        }
        for (int i2 = 0; i2 < strArr2.length; i2 += 2) {
            String str = strArr2[i2];
            String str2 = strArr2[i2 + 1];
            if (str.length() == 0 || str.indexOf(0) != -1 || str2.indexOf(0) != -1) {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }
        return new s(strArr2);
    }

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<String> f2820a = new ArrayList(20);

        a a(String str) {
            int iIndexOf = str.indexOf(":", 1);
            if (iIndexOf != -1) {
                return b(str.substring(0, iIndexOf), str.substring(iIndexOf + 1));
            }
            if (str.startsWith(":")) {
                return b("", str.substring(1));
            }
            return b("", str);
        }

        public a a(String str, String str2) {
            d(str, str2);
            return b(str, str2);
        }

        a b(String str, String str2) {
            this.f2820a.add(str);
            this.f2820a.add(str2.trim());
            return this;
        }

        public a b(String str) {
            int i = 0;
            while (i < this.f2820a.size()) {
                if (str.equalsIgnoreCase(this.f2820a.get(i))) {
                    this.f2820a.remove(i);
                    this.f2820a.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public a c(String str, String str2) {
            d(str, str2);
            b(str);
            b(str, str2);
            return this;
        }

        private void d(String str, String str2) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            if (str.isEmpty()) {
                throw new IllegalArgumentException("name is empty");
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (cCharAt <= 31 || cCharAt >= 127) {
                    throw new IllegalArgumentException(c.a.c.a("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str));
                }
            }
            if (str2 == null) {
                throw new NullPointerException("value == null");
            }
            int length2 = str2.length();
            for (int i2 = 0; i2 < length2; i2++) {
                char cCharAt2 = str2.charAt(i2);
                if (cCharAt2 <= 31 || cCharAt2 >= 127) {
                    throw new IllegalArgumentException(c.a.c.a("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt2), Integer.valueOf(i2), str, str2));
                }
            }
        }

        public s a() {
            return new s(this);
        }
    }
}
