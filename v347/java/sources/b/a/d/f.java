package b.a.d;

import b.ab;
import b.r;
import b.s;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {
    public static long a(ab abVar) {
        return a(abVar.f());
    }

    public static long a(r rVar) {
        return a(rVar.a("Content-Length"));
    }

    private static long a(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    public static void a(b.m mVar, s sVar, r rVar) {
        if (mVar != b.m.f2049a) {
            List<b.l> listA = b.l.a(sVar, rVar);
            if (!listA.isEmpty()) {
                mVar.a(sVar, listA);
            }
        }
    }

    public static boolean b(ab abVar) {
        if (abVar.a().b().equals("HEAD")) {
            return false;
        }
        int iB = abVar.b();
        if ((iB >= 100 && iB < 200) || iB == 204 || iB == 304) {
            return a(abVar) != -1 || "chunked".equalsIgnoreCase(abVar.a("Transfer-Encoding"));
        }
        return true;
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
        } catch (NumberFormatException e) {
            return i;
        }
    }
}
