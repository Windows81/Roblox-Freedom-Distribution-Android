package c.a.d;

import c.ac;
import c.s;
import c.t;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class f {
    public static long a(ac acVar) {
        return a(acVar.f());
    }

    public static long a(s sVar) {
        return a(sVar.a("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }

    public static void a(c.m mVar, t tVar, s sVar) {
        if (mVar == c.m.f2803a) {
            return;
        }
        List<c.l> listA = c.l.a(tVar, sVar);
        if (listA.isEmpty()) {
            return;
        }
        mVar.a(tVar, listA);
    }

    public static boolean b(ac acVar) {
        if (acVar.a().b().equals("HEAD")) {
            return false;
        }
        int iB = acVar.b();
        return (((iB >= 100 && iB < 200) || iB == 204 || iB == 304) && a(acVar) == -1 && !"chunked".equalsIgnoreCase(acVar.a("Transfer-Encoding"))) ? false : true;
    }

    public static int a(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }

    public static int a(String str, int i) {
        char cCharAt;
        while (i < str.length() && ((cCharAt = str.charAt(i)) == ' ' || cCharAt == '\t')) {
            i++;
        }
        return i;
    }

    public static int b(String str, int i) {
        try {
            long j = Long.parseLong(str);
            if (j > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j < 0) {
                return 0;
            }
            return (int) j;
        } catch (NumberFormatException unused) {
            return i;
        }
    }
}
