package com.appsflyer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Random;
import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f2254a = null;

    public static synchronized String a(WeakReference<Context> weakReference) {
        String str;
        if (weakReference.get() != null && f2254a == null) {
            String strC = c(weakReference);
            if (strC != null) {
                f2254a = strC;
            } else {
                try {
                    File file = new File(weakReference.get().getFilesDir(), "AF_INSTALLATION");
                    if (!file.exists()) {
                        f2254a = b(weakReference);
                    } else {
                        f2254a = a(file);
                        file.delete();
                    }
                    a(weakReference, f2254a);
                } catch (Exception e) {
                    c.a("Error getting AF unique ID", e);
                }
            }
            if (f2254a != null) {
                g.a().a("uid", f2254a);
            }
        }
        str = f2254a;
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0042 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.lang.String a(java.io.File r7) throws java.lang.Throwable {
        /*
            r1 = 0
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            java.lang.String r0 = "r"
            r2.<init>(r7, r0)     // Catch: java.io.IOException -> L27 java.lang.Throwable -> L3e
            long r4 = r2.length()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L53
            int r0 = (int) r4     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L53
            byte[] r0 = new byte[r0]     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L53
            r2.readFully(r0)     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L58
            r2.close()     // Catch: java.lang.Throwable -> L51 java.io.IOException -> L58
            r2.close()     // Catch: java.io.IOException -> L20
        L18:
            java.lang.String r1 = new java.lang.String
            if (r0 == 0) goto L4d
        L1c:
            r1.<init>(r0)
            return r1
        L20:
            r1 = move-exception
            java.lang.String r2 = "Exception while trying to close the InstallationFile"
            com.appsflyer.c.a(r2, r1)
            goto L18
        L27:
            r0 = move-exception
            r2 = r1
            r6 = r1
            r1 = r0
            r0 = r6
        L2c:
            java.lang.String r3 = "Exception while reading InstallationFile: "
            com.appsflyer.c.a(r3, r1)     // Catch: java.lang.Throwable -> L51
            if (r2 == 0) goto L18
            r2.close()     // Catch: java.io.IOException -> L37
            goto L18
        L37:
            r1 = move-exception
            java.lang.String r2 = "Exception while trying to close the InstallationFile"
            com.appsflyer.c.a(r2, r1)
            goto L18
        L3e:
            r0 = move-exception
            r2 = r1
        L40:
            if (r2 == 0) goto L45
            r2.close()     // Catch: java.io.IOException -> L46
        L45:
            throw r0
        L46:
            r1 = move-exception
            java.lang.String r2 = "Exception while trying to close the InstallationFile"
            com.appsflyer.c.a(r2, r1)
            goto L45
        L4d:
            r0 = 0
            byte[] r0 = new byte[r0]
            goto L1c
        L51:
            r0 = move-exception
            goto L40
        L53:
            r0 = move-exception
            r6 = r0
            r0 = r1
            r1 = r6
            goto L2c
        L58:
            r1 = move-exception
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.w.a(java.io.File):java.lang.String");
    }

    private static String b(WeakReference<Context> weakReference) throws PackageManager.NameNotFoundException {
        PackageInfo packageInfo = weakReference.get().getPackageManager().getPackageInfo(weakReference.get().getPackageName(), 0);
        if (Build.VERSION.SDK_INT >= 9) {
            return packageInfo.firstInstallTime + "-" + Math.abs(new Random().nextLong());
        }
        return UUID.randomUUID().toString();
    }

    private static String c(WeakReference<Context> weakReference) {
        if (weakReference.get() == null) {
            return null;
        }
        return weakReference.get().getSharedPreferences("appsflyer-data", 0).getString("AF_INSTALLATION", null);
    }

    @SuppressLint({"CommitPrefEdits"})
    private static void a(WeakReference<Context> weakReference, String str) throws PackageManager.NameNotFoundException {
        SharedPreferences.Editor editorEdit = weakReference.get().getSharedPreferences("appsflyer-data", 0).edit();
        editorEdit.putString("AF_INSTALLATION", str);
        if (Build.VERSION.SDK_INT >= 9) {
            editorEdit.apply();
        } else {
            editorEdit.commit();
        }
    }
}
