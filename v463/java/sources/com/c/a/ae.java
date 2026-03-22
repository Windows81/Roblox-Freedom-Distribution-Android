package com.c.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final StringBuilder f3112a = new StringBuilder();

    static int a(Bitmap bitmap) {
        int rowBytes;
        if (Build.VERSION.SDK_INT >= 12) {
            rowBytes = b.a(bitmap);
        } else {
            rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (rowBytes >= 0) {
            return rowBytes;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    static <T> T a(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    static void a() {
        if (!b()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static String a(com.c.a.c cVar) {
        return a(cVar, "");
    }

    static String a(com.c.a.c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        com.c.a.a aVarI = cVar.i();
        if (aVarI != null) {
            sb.append(aVarI.f3090b.a());
        }
        List<com.c.a.a> listK = cVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || aVarI != null) {
                    sb.append(", ");
                }
                sb.append(listK.get(i).f3090b.a());
            }
        }
        return sb.toString();
    }

    static void a(String str, String str2, String str3) {
        a(str, str2, str3, "");
    }

    static void a(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    static String a(w wVar) {
        String strA = a(wVar, f3112a);
        f3112a.setLength(0);
        return strA;
    }

    static String a(w wVar, StringBuilder sb) {
        if (wVar.f != null) {
            sb.ensureCapacity(wVar.f.length() + 50);
            sb.append(wVar.f);
        } else if (wVar.f3207d != null) {
            String string = wVar.f3207d.toString();
            sb.ensureCapacity(string.length() + 50);
            sb.append(string);
        } else {
            sb.ensureCapacity(50);
            sb.append(wVar.f3208e);
        }
        sb.append('\n');
        if (wVar.m != 0.0f) {
            sb.append("rotation:");
            sb.append(wVar.m);
            if (wVar.p) {
                sb.append('@');
                sb.append(wVar.n);
                sb.append('x');
                sb.append(wVar.o);
            }
            sb.append('\n');
        }
        if (wVar.d()) {
            sb.append("resize:");
            sb.append(wVar.h);
            sb.append('x');
            sb.append(wVar.i);
            sb.append('\n');
        }
        if (wVar.j) {
            sb.append("centerCrop");
            sb.append('\n');
        } else if (wVar.k) {
            sb.append("centerInside");
            sb.append('\n');
        }
        if (wVar.g != null) {
            int size = wVar.g.size();
            for (int i = 0; i < size; i++) {
                sb.append(wVar.g.get(i).a());
                sb.append('\n');
            }
        }
        return sb.toString();
    }

    static void a(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            inputStream.close();
        } catch (IOException unused) {
        }
    }

    static boolean a(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split(" ", 2);
        if ("CACHE".equals(strArrSplit[0])) {
            return true;
        }
        if (strArrSplit.length == 1) {
            return false;
        }
        try {
            if ("CONDITIONAL_CACHE".equals(strArrSplit[0])) {
                return Integer.parseInt(strArrSplit[1]) == 304;
            }
            return false;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    static j a(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return c.a(context);
        } catch (ClassNotFoundException unused) {
            return new ad(context);
        }
    }

    static File b(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static long a(File file) {
        long blockCount;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / 50;
        } catch (IllegalArgumentException unused) {
            blockCount = 5242880;
        }
        return Math.max(Math.min(blockCount, 52428800L), 5242880L);
    }

    static int c(Context context) {
        ActivityManager activityManager = (ActivityManager) a(context, "activity");
        boolean z = (context.getApplicationInfo().flags & 1048576) != 0;
        int memoryClass = activityManager.getMemoryClass();
        if (z && Build.VERSION.SDK_INT >= 11) {
            memoryClass = a.a(activityManager);
        }
        return (memoryClass * 1048576) / 7;
    }

    static boolean d(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    static <T> T a(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    static boolean b(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    static byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 != i) {
                byteArrayOutputStream.write(bArr, 0, i);
            } else {
                return byteArrayOutputStream.toByteArray();
            }
        }
    }

    static boolean c(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[12];
        return inputStream.read(bArr, 0, 12) == 12 && "RIFF".equals(new String(bArr, 0, 4, "US-ASCII")) && "WEBP".equals(new String(bArr, 8, 4, "US-ASCII"));
    }

    static int a(Resources resources, w wVar) throws FileNotFoundException {
        if (wVar.f3208e != 0 || wVar.f3207d == null) {
            return wVar.f3208e;
        }
        String authority = wVar.f3207d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f3207d);
        }
        List<String> pathSegments = wVar.f3207d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + wVar.f3207d);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + wVar.f3207d);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + wVar.f3207d);
    }

    static Resources a(Context context, w wVar) throws FileNotFoundException {
        if (wVar.f3208e != 0 || wVar.f3207d == null) {
            return context.getResources();
        }
        String authority = wVar.f3207d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f3207d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + wVar.f3207d);
        }
    }

    static void a(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.c.a.ae.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    private static class a {
        static int a(ActivityManager activityManager) {
            return activityManager.getLargeMemoryClass();
        }
    }

    static class e implements ThreadFactory {
        e() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new d(runnable);
        }
    }

    private static class d extends Thread {
        public d(Runnable runnable) {
            super(runnable);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }
    }

    private static class b {
        static int a(Bitmap bitmap) {
            return bitmap.getByteCount();
        }
    }

    private static class c {
        static j a(Context context) {
            return new s(context);
        }
    }
}
