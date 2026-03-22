package com.d.a;

import android.annotation.TargetApi;
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
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final StringBuilder f2459a = new StringBuilder();

    static int a(Bitmap bitmap) {
        int rowBytes;
        if (Build.VERSION.SDK_INT >= 12) {
            rowBytes = b.a(bitmap);
        } else {
            rowBytes = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (rowBytes < 0) {
            throw new IllegalStateException("Negative size: " + bitmap);
        }
        return rowBytes;
    }

    static <T> T a(T t, String str) {
        if (t == null) {
            throw new NullPointerException(str);
        }
        return t;
    }

    static void a() {
        if (!b()) {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static boolean b() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static String a(com.d.a.c cVar) {
        return a(cVar, "");
    }

    static String a(com.d.a.c cVar, String str) {
        StringBuilder sb = new StringBuilder(str);
        com.d.a.a aVarI = cVar.i();
        if (aVarI != null) {
            sb.append(aVarI.f2440b.a());
        }
        List<com.d.a.a> listK = cVar.k();
        if (listK != null) {
            int size = listK.size();
            for (int i = 0; i < size; i++) {
                if (i > 0 || aVarI != null) {
                    sb.append(", ");
                }
                sb.append(listK.get(i).f2440b.a());
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
        String strA = a(wVar, f2459a);
        f2459a.setLength(0);
        return strA;
    }

    static String a(w wVar, StringBuilder sb) {
        if (wVar.f != null) {
            sb.ensureCapacity(wVar.f.length() + 50);
            sb.append(wVar.f);
        } else if (wVar.f2544d != null) {
            String string = wVar.f2544d.toString();
            sb.ensureCapacity(string.length() + 50);
            sb.append(string);
        } else {
            sb.ensureCapacity(50);
            sb.append(wVar.e);
        }
        sb.append('\n');
        if (wVar.m != 0.0f) {
            sb.append("rotation:").append(wVar.m);
            if (wVar.p) {
                sb.append('@').append(wVar.n).append('x').append(wVar.o);
            }
            sb.append('\n');
        }
        if (wVar.d()) {
            sb.append("resize:").append(wVar.h).append('x').append(wVar.i);
            sb.append('\n');
        }
        if (wVar.j) {
            sb.append("centerCrop").append('\n');
        } else if (wVar.k) {
            sb.append("centerInside").append('\n');
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
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static boolean a(java.lang.String r5) {
        /*
            r0 = 1
            r1 = 0
            if (r5 != 0) goto L5
        L4:
            return r1
        L5:
            java.lang.String r2 = " "
            r3 = 2
            java.lang.String[] r2 = r5.split(r2, r3)
            java.lang.String r3 = "CACHE"
            r4 = r2[r1]
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L18
            r1 = r0
            goto L4
        L18:
            int r3 = r2.length
            if (r3 == r0) goto L4
            java.lang.String r3 = "CONDITIONAL_CACHE"
            r4 = 0
            r4 = r2[r4]     // Catch: java.lang.NumberFormatException -> L35
            boolean r3 = r3.equals(r4)     // Catch: java.lang.NumberFormatException -> L35
            if (r3 == 0) goto L33
            r3 = 1
            r2 = r2[r3]     // Catch: java.lang.NumberFormatException -> L35
            int r2 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.NumberFormatException -> L35
            r3 = 304(0x130, float:4.26E-43)
            if (r2 != r3) goto L33
        L31:
            r1 = r0
            goto L4
        L33:
            r0 = r1
            goto L31
        L35:
            r0 = move-exception
            goto L4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.d.a.ae.a(java.lang.String):boolean");
    }

    static j a(Context context) {
        try {
            Class.forName("com.squareup.okhttp.OkHttpClient");
            return c.a(context);
        } catch (ClassNotFoundException e2) {
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
        long blockSize;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockSize = (((long) statFs.getBlockSize()) * ((long) statFs.getBlockCount())) / 50;
        } catch (IllegalArgumentException e2) {
            blockSize = 5242880;
        }
        return Math.max(Math.min(blockSize, 52428800L), 5242880L);
    }

    static int c(Context context) {
        ActivityManager activityManager = (ActivityManager) a(context, "activity");
        return (((!((context.getApplicationInfo().flags & 1048576) != 0) || Build.VERSION.SDK_INT < 11) ? activityManager.getMemoryClass() : a.a(activityManager)) * 1048576) / 7;
    }

    static boolean d(Context context) {
        try {
            return Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0;
        } catch (NullPointerException e2) {
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
        byte[] bArr = new byte[RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT];
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
        if (wVar.e != 0 || wVar.f2544d == null) {
            return wVar.e;
        }
        String authority = wVar.f2544d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f2544d);
        }
        List<String> pathSegments = wVar.f2544d.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + wVar.f2544d);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException e2) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + wVar.f2544d);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + wVar.f2544d);
    }

    static Resources a(Context context, w wVar) throws FileNotFoundException {
        if (wVar.e != 0 || wVar.f2544d == null) {
            return context.getResources();
        }
        String authority = wVar.f2544d.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + wVar.f2544d);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException e2) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + wVar.f2544d);
        }
    }

    static void a(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.d.a.ae.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    @TargetApi(11)
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

    @TargetApi(12)
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
