package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f3885a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f3886b;

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
        if (f3885a == null) {
            f3885a = a(b());
        }
        return f3885a;
    }

    @Nullable
    private static String a(int i) throws Throwable {
        Throwable th;
        BufferedReader bufferedReaderA;
        String strTrim = null;
        if (i <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            bufferedReaderA = a(sb.toString());
        } catch (IOException unused) {
            bufferedReaderA = null;
        } catch (Throwable th2) {
            th = th2;
            bufferedReaderA = null;
        }
        try {
            strTrim = bufferedReaderA.readLine().trim();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            th = th3;
            l.a(bufferedReaderA);
            throw th;
        }
        l.a(bufferedReaderA);
        return strTrim;
    }

    private static int b() {
        if (f3886b == 0) {
            f3886b = Process.myPid();
        }
        return f3886b;
    }
}
