package b.a;

import c.f;
import c.s;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Array;
import java.net.IDN;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import microsoft.aspnet.signalr.client.Constants;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f1783a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f1784b = new String[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Charset f1785c = Charset.forName(Constants.UTF8_NAME);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TimeZone f1786d = TimeZone.getTimeZone("GMT");
    private static final Pattern e = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");

    public static void a(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void a(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e2) {
                if (!a(e2)) {
                    throw e2;
                }
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception e4) {
            }
        }
    }

    public static void a(Closeable closeable, Closeable closeable2) throws IOException {
        Throwable th = null;
        try {
            closeable.close();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            closeable2.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        if (th == null) {
            return;
        }
        if (th instanceof IOException) {
            throw ((IOException) th);
        }
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        }
        if (!(th instanceof Error)) {
            throw new AssertionError(th);
        }
        throw ((Error) th);
    }

    public static boolean a(s sVar, int i, TimeUnit timeUnit) {
        try {
            return b(sVar, i, timeUnit);
        } catch (IOException e2) {
            return false;
        }
    }

    public static boolean b(s sVar, int i, TimeUnit timeUnit) throws IOException {
        long jNanoTime = System.nanoTime();
        long jD = sVar.a().z_() ? sVar.a().d() - jNanoTime : Long.MAX_VALUE;
        sVar.a().a(Math.min(jD, timeUnit.toNanos(i)) + jNanoTime);
        try {
            c.c cVar = new c.c();
            while (sVar.a(cVar, 8192L) != -1) {
                cVar.t();
            }
            if (jD == Long.MAX_VALUE) {
                sVar.a().f();
            } else {
                sVar.a().a(jD + jNanoTime);
            }
            return true;
        } catch (InterruptedIOException e2) {
            if (jD == Long.MAX_VALUE) {
                sVar.a().f();
            } else {
                sVar.a().a(jD + jNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jD == Long.MAX_VALUE) {
                sVar.a().f();
            } else {
                sVar.a().a(jD + jNanoTime);
            }
            throw th;
        }
    }

    public static f a(f fVar) {
        try {
            return f.a(MessageDigest.getInstance("SHA-1").digest(fVar.f()));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static f b(f fVar) {
        try {
            return f.a(MessageDigest.getInstance("SHA-256").digest(fVar.f()));
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    public static <T> List<T> a(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> a(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory a(final String str, final boolean z) {
        return new ThreadFactory() { // from class: b.a.c.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, str);
                thread.setDaemon(z);
                return thread;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> T[] a(Class<T> cls, T[] tArr, T[] tArr2) {
        List listA = a((Object[]) tArr, (Object[]) tArr2);
        return (T[]) listA.toArray((Object[]) Array.newInstance((Class<?>) cls, listA.size()));
    }

    private static <T> List<T> a(T[] tArr, T[] tArr2) {
        ArrayList arrayList = new ArrayList();
        for (T t : tArr) {
            int length = tArr2.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    T t2 = tArr2[i];
                    if (!t.equals(t2)) {
                        i++;
                    } else {
                        arrayList.add(t2);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    public static String a(b.s sVar, boolean z) {
        String strF;
        if (sVar.f().contains(":")) {
            strF = "[" + sVar.f() + "]";
        } else {
            strF = sVar.f();
        }
        if (!z && sVar.g() == b.s.a(sVar.b())) {
            return strF;
        }
        return strF + ":" + sVar.g();
    }

    public static boolean a(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static <T> int a(T[] tArr, T t) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (a(tArr[i], t)) {
                return i;
            }
        }
        return -1;
    }

    public static String[] a(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static int a(String str, int i, int i2) {
        for (int i3 = i; i3 < i2; i3++) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i3;
            }
        }
        return i2;
    }

    public static int b(String str, int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            switch (str.charAt(i3)) {
                case '\t':
                case '\n':
                case '\f':
                case '\r':
                case ' ':
                    break;
                default:
                    return i3 + 1;
            }
        }
        return i;
    }

    public static String c(String str, int i, int i2) {
        int iA = a(str, i, i2);
        return str.substring(iA, b(str, iA, i2));
    }

    public static int a(String str, int i, int i2, String str2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str2.indexOf(str.charAt(i3)) != -1) {
                return i3;
            }
        }
        return i2;
    }

    public static int a(String str, int i, int i2, char c2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str.charAt(i3) == c2) {
                return i3;
            }
        }
        return i2;
    }

    public static String a(String str) {
        try {
            String lowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
            if (lowerCase.isEmpty()) {
                return null;
            }
            if (c(lowerCase)) {
                return null;
            }
            return lowerCase;
        } catch (IllegalArgumentException e2) {
            return null;
        }
    }

    private static boolean c(String str) {
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt <= 31 || cCharAt >= 127) {
                return true;
            }
            if (" #%/:?@[\\]".indexOf(cCharAt) != -1) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(String str) {
        return e.matcher(str).matches();
    }

    public static String a(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }
}
