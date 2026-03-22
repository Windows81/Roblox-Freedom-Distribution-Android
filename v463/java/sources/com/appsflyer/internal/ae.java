package com.appsflyer.internal;

import android.content.Context;
import android.content.SharedPreferences;
import com.appsflyer.AFLogger;
import com.appsflyer.AppsFlyerLibCore;
import com.appsflyer.AppsFlyerProperties;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ae {

    /* JADX INFO: renamed from: ǃ, reason: contains not printable characters */
    private static String f169;

    ae() {
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    public static synchronized String m125(WeakReference<Context> weakReference) {
        if (weakReference.get() == null) {
            return f169;
        }
        if (f169 == null) {
            String string = null;
            if (weakReference.get() != null) {
                string = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).getString("AF_INSTALLATION", null);
            }
            if (string != null) {
                f169 = string;
            } else {
                try {
                    File file = new File(weakReference.get().getFilesDir(), "AF_INSTALLATION");
                    if (file.exists()) {
                        f169 = m124(file);
                        file.delete();
                    } else {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        StringBuilder sb = new StringBuilder();
                        sb.append(jCurrentTimeMillis);
                        sb.append("-");
                        sb.append(Math.abs(new SecureRandom().nextLong()));
                        f169 = sb.toString();
                    }
                    String str = f169;
                    SharedPreferences.Editor editorEdit = AppsFlyerLibCore.getSharedPreferences(weakReference.get()).edit();
                    editorEdit.putString("AF_INSTALLATION", str);
                    editorEdit.apply();
                } catch (Exception e2) {
                    AFLogger.afErrorLog("Error getting AF unique ID", e2);
                }
            }
            if (f169 != null) {
                AppsFlyerProperties.getInstance().set("uid", f169);
            }
        }
        return f169;
    }

    /* JADX INFO: renamed from: Ι, reason: contains not printable characters */
    private static String m124(File file) throws Throwable {
        byte[] bArr;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        byte[] bArr2 = null;
        randomAccessFile2 = null;
        try {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e2) {
                e = e2;
                bArr = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            bArr2 = new byte[(int) randomAccessFile.length()];
            randomAccessFile.readFully(bArr2);
            randomAccessFile.close();
            try {
                randomAccessFile.close();
            } catch (IOException e3) {
                AFLogger.afErrorLog("Exception while trying to close the InstallationFile", e3);
            }
        } catch (IOException e4) {
            e = e4;
            bArr = bArr2;
            randomAccessFile2 = randomAccessFile;
            AFLogger.afErrorLog("Exception while reading InstallationFile: ", e);
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (IOException e5) {
                    AFLogger.afErrorLog("Exception while trying to close the InstallationFile", e5);
                }
            }
            bArr2 = bArr;
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (IOException e6) {
                    AFLogger.afErrorLog("Exception while trying to close the InstallationFile", e6);
                }
            }
            throw th;
        }
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return new String(bArr2);
    }
}
