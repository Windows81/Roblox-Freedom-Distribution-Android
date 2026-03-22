package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3566a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f3567b = 0;

    private static BufferedReader a(String str) throws IOException {
        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
        }
    }

    @Nullable
    public static String a() {
        if (f3566a == null) {
            f3566a = a(b());
        }
        return f3566a;
    }

    @Nullable
    private static String a(int i) throws Throwable {
        BufferedReader bufferedReaderA;
        Throwable th;
        String strTrim = null;
        if (i > 0) {
            try {
                bufferedReaderA = a(new StringBuilder(25).append("/proc/").append(i).append("/cmdline").toString());
            } catch (IOException e) {
                bufferedReaderA = null;
            } catch (Throwable th2) {
                bufferedReaderA = null;
                th = th2;
            }
            try {
                strTrim = bufferedReaderA.readLine().trim();
                l.a(bufferedReaderA);
            } catch (IOException e2) {
                l.a(bufferedReaderA);
            } catch (Throwable th3) {
                th = th3;
                l.a(bufferedReaderA);
                throw th;
            }
        }
        return strTrim;
    }

    private static int b() {
        if (f3567b == 0) {
            f3567b = Process.myPid();
        }
        return f3567b;
    }
}
