package b;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f2045a = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f2046b = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Pattern f2047c = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f2048d = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");
    private final String e;
    private final String f;
    private final long g;
    private final String h;
    private final String i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;

    private l(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.e = str;
        this.f = str2;
        this.g = j;
        this.h = str3;
        this.i = str4;
        this.j = z;
        this.k = z2;
        this.m = z3;
        this.l = z4;
    }

    public String a() {
        return this.e;
    }

    public String b() {
        return this.f;
    }

    private static boolean b(s sVar, String str) {
        String strF = sVar.f();
        if (strF.equals(str)) {
            return true;
        }
        return strF.endsWith(str) && strF.charAt((strF.length() - str.length()) + (-1)) == '.' && !b.a.c.b(strF);
    }

    public static l a(s sVar, String str) {
        return a(System.currentTimeMillis(), sVar, str);
    }

    static l a(long j, s sVar, String str) {
        long j2;
        String strSubstring;
        String strB;
        int length = str.length();
        int iA = b.a.c.a(str, 0, length, ';');
        int iA2 = b.a.c.a(str, 0, iA, '=');
        if (iA2 == iA) {
            return null;
        }
        String strC = b.a.c.c(str, 0, iA2);
        if (strC.isEmpty()) {
            return null;
        }
        String strC2 = b.a.c.c(str, iA2 + 1, iA);
        long jA = 253402300799999L;
        long jA2 = -1;
        String strF = null;
        String str2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = true;
        boolean z4 = false;
        int i = iA + 1;
        while (i < length) {
            int iA3 = b.a.c.a(str, i, length, ';');
            int iA4 = b.a.c.a(str, i, iA3, '=');
            String strC3 = b.a.c.c(str, i, iA4);
            String strC4 = iA4 < iA3 ? b.a.c.c(str, iA4 + 1, iA3) : "";
            if (strC3.equalsIgnoreCase("expires")) {
                try {
                    jA = a(strC4, 0, strC4.length());
                    z4 = true;
                    strB = strF;
                } catch (IllegalArgumentException e) {
                    strB = strF;
                }
            } else if (strC3.equalsIgnoreCase("max-age")) {
                try {
                    jA2 = a(strC4);
                    z4 = true;
                    strB = strF;
                } catch (NumberFormatException e2) {
                    strB = strF;
                }
            } else if (strC3.equalsIgnoreCase("domain")) {
                try {
                    strB = b(strC4);
                    z3 = false;
                } catch (IllegalArgumentException e3) {
                    strB = strF;
                }
            } else if (strC3.equalsIgnoreCase("path")) {
                str2 = strC4;
                strB = strF;
            } else if (strC3.equalsIgnoreCase("secure")) {
                z = true;
                strB = strF;
            } else if (strC3.equalsIgnoreCase("httponly")) {
                z2 = true;
                strB = strF;
            } else {
                strB = strF;
            }
            String str3 = strB;
            i = iA3 + 1;
            jA = jA;
            strF = str3;
        }
        if (jA2 == Long.MIN_VALUE) {
            j2 = Long.MIN_VALUE;
        } else if (jA2 != -1) {
            j2 = (jA2 <= 9223372036854775L ? jA2 * 1000 : Long.MAX_VALUE) + j;
            if (j2 < j || j2 > 253402300799999L) {
                j2 = 253402300799999L;
            }
        } else {
            j2 = jA;
        }
        if (strF == null) {
            strF = sVar.f();
        } else if (!b(sVar, strF)) {
            return null;
        }
        if (str2 == null || !str2.startsWith("/")) {
            String strH = sVar.h();
            int iLastIndexOf = strH.lastIndexOf(47);
            strSubstring = iLastIndexOf != 0 ? strH.substring(0, iLastIndexOf) : "/";
        } else {
            strSubstring = str2;
        }
        return new l(strC, strC2, j2, strF, strSubstring, z, z2, z3, z4);
    }

    private static long a(String str, int i, int i2) {
        int iA = a(str, i, i2, false);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int iIndexOf = -1;
        int i7 = -1;
        Matcher matcher = f2048d.matcher(str);
        while (iA < i2) {
            int iA2 = a(str, iA + 1, i2, true);
            matcher.region(iA, iA2);
            if (i3 == -1 && matcher.usePattern(f2048d).matches()) {
                i3 = Integer.parseInt(matcher.group(1));
                i4 = Integer.parseInt(matcher.group(2));
                i5 = Integer.parseInt(matcher.group(3));
            } else if (i6 == -1 && matcher.usePattern(f2047c).matches()) {
                i6 = Integer.parseInt(matcher.group(1));
            } else if (iIndexOf == -1 && matcher.usePattern(f2046b).matches()) {
                iIndexOf = f2046b.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
            } else if (i7 == -1 && matcher.usePattern(f2045a).matches()) {
                i7 = Integer.parseInt(matcher.group(1));
            }
            iA = a(str, iA2 + 1, i2, false);
        }
        if (i7 >= 70 && i7 <= 99) {
            i7 += 1900;
        }
        if (i7 >= 0 && i7 <= 69) {
            i7 += 2000;
        }
        if (i7 < 1601) {
            throw new IllegalArgumentException();
        }
        if (iIndexOf == -1) {
            throw new IllegalArgumentException();
        }
        if (i6 < 1 || i6 > 31) {
            throw new IllegalArgumentException();
        }
        if (i3 < 0 || i3 > 23) {
            throw new IllegalArgumentException();
        }
        if (i4 < 0 || i4 > 59) {
            throw new IllegalArgumentException();
        }
        if (i5 < 0 || i5 > 59) {
            throw new IllegalArgumentException();
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(b.a.c.f1786d);
        gregorianCalendar.setLenient(false);
        gregorianCalendar.set(1, i7);
        gregorianCalendar.set(2, iIndexOf - 1);
        gregorianCalendar.set(5, i6);
        gregorianCalendar.set(11, i3);
        gregorianCalendar.set(12, i4);
        gregorianCalendar.set(13, i5);
        gregorianCalendar.set(14, 0);
        return gregorianCalendar.getTimeInMillis();
    }

    private static int a(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char cCharAt = str.charAt(i3);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z)) {
                return i3;
            }
        }
        return i2;
    }

    private static long a(String str) {
        try {
            long j = Long.parseLong(str);
            if (j <= 0) {
                return Long.MIN_VALUE;
            }
            return j;
        } catch (NumberFormatException e) {
            if (str.matches("-?\\d+")) {
                return !str.startsWith("-") ? Long.MAX_VALUE : Long.MIN_VALUE;
            }
            throw e;
        }
    }

    private static String b(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strA = b.a.c.a(str);
        if (strA == null) {
            throw new IllegalArgumentException();
        }
        return strA;
    }

    public static List<l> a(s sVar, r rVar) {
        List<String> listC = rVar.c("Set-Cookie");
        ArrayList arrayList = null;
        int size = listC.size();
        for (int i = 0; i < size; i++) {
            l lVarA = a(sVar, listC.get(i));
            if (lVarA != null) {
                ArrayList arrayList2 = arrayList == null ? new ArrayList() : arrayList;
                arrayList2.add(lVarA);
                arrayList = arrayList2;
            }
        }
        if (arrayList != null) {
            return Collections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.e);
        sb.append('=');
        sb.append(this.f);
        if (this.l) {
            if (this.g == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=").append(b.a.d.e.a(new Date(this.g)));
            }
        }
        if (!this.m) {
            sb.append("; domain=").append(this.h);
        }
        sb.append("; path=").append(this.i);
        if (this.j) {
            sb.append("; secure");
        }
        if (this.k) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return lVar.e.equals(this.e) && lVar.f.equals(this.f) && lVar.h.equals(this.h) && lVar.i.equals(this.i) && lVar.g == this.g && lVar.j == this.j && lVar.k == this.k && lVar.l == this.l && lVar.m == this.m;
    }

    public int hashCode() {
        return (((this.l ? 0 : 1) + (((this.k ? 0 : 1) + (((this.j ? 0 : 1) + ((((((((((this.e.hashCode() + 527) * 31) + this.f.hashCode()) * 31) + this.h.hashCode()) * 31) + this.i.hashCode()) * 31) + ((int) (this.g ^ (this.g >>> 32)))) * 31)) * 31)) * 31)) * 31) + (this.m ? 0 : 1);
    }
}
