package com.google.android.gms.common.util;

import android.content.Context;
import android.os.DropBoxManager;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.w;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f3554d;
    private static boolean e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String[] f3551a = {"android.", "com.android.", "dalvik.", "java.", "javax."};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static DropBoxManager f3552b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f3553c = false;
    private static int f = -1;

    @GuardedBy("CrashUtils.class")
    private static int g = 0;

    @GuardedBy("CrashUtils.class")
    private static int h = 0;

    /* JADX WARN: Removed duplicated region for block: B:95:0x0197 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized java.lang.String a(android.content.Context r8, java.lang.String r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instruction units count: 428
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.f.a(android.content.Context, java.lang.String, java.lang.String, int):java.lang.String");
    }

    private static synchronized Throwable a(Throwable th) {
        Throwable th2;
        boolean z;
        LinkedList linkedList = new LinkedList();
        while (th != null) {
            linkedList.push(th);
            th = th.getCause();
        }
        th2 = null;
        z = false;
        while (!linkedList.isEmpty()) {
            Throwable th3 = (Throwable) linkedList.pop();
            StackTraceElement[] stackTrace = th3.getStackTrace();
            ArrayList arrayList = new ArrayList();
            arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
            boolean z2 = z;
            for (StackTraceElement stackTraceElement : stackTrace) {
                String className = stackTraceElement.getClassName();
                String fileName = stackTraceElement.getFileName();
                boolean z3 = !TextUtils.isEmpty(fileName) && fileName.startsWith(":com.google.android.gms");
                z2 |= z3;
                if (!z3 && !a(className)) {
                    stackTraceElement = new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1);
                }
                arrayList.add(stackTraceElement);
            }
            th2 = th2 == null ? new Throwable("<filtered>") : new Throwable("<filtered>", th2);
            th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
            z = z2;
        }
        return !z ? null : th2;
    }

    private static boolean a() {
        if (f3553c) {
            return f3554d;
        }
        return false;
    }

    private static synchronized boolean a(Context context, String str, String str2, int i, Throwable th) {
        boolean z;
        w.a(context);
        if (!a() || r.b(str)) {
            z = false;
        } else {
            int iHashCode = str.hashCode();
            int iHashCode2 = th == null ? h : th.hashCode();
            if (g == iHashCode && h == iHashCode2) {
                z = false;
            } else {
                g = iHashCode;
                h = iHashCode2;
                DropBoxManager dropBoxManager = f3552b != null ? f3552b : (DropBoxManager) context.getSystemService("dropbox");
                if (dropBoxManager == null || !dropBoxManager.isTagEnabled("system_app_crash")) {
                    z = false;
                } else {
                    dropBoxManager.addText("system_app_crash", a(context, str, str2, i));
                    z = true;
                }
            }
        }
        return z;
    }

    public static boolean a(Context context, Throwable th) {
        return a(context, th, 536870912);
    }

    public static boolean a(Context context, Throwable th, int i) throws Exception {
        boolean zB;
        try {
            w.a(context);
            w.a(th);
            if (!a()) {
                return false;
            }
            if (b() || (th = a(th)) != null) {
                return a(context, Log.getStackTraceString(th), p.a(), i, th);
            }
            return false;
        } catch (Exception e2) {
            try {
                zB = b();
            } catch (Exception e3) {
                Log.e("CrashUtils", "Error determining which process we're running in!", e3);
                zB = false;
            }
            if (zB) {
                throw e2;
            }
            Log.e("CrashUtils", "Error adding exception to DropBox!", e2);
            return false;
        }
    }

    public static boolean a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : f3551a) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    private static boolean b() {
        if (f3553c) {
            return e;
        }
        return false;
    }
}
