package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class aw extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f4056a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Future<String> f4057b;

    protected aw(ae aeVar) {
        super(aeVar);
    }

    /* JADX WARN: Not initialized variable reg: 3, insn: 0x0081: MOVE (r2 I:??[OBJECT, ARRAY]) = (r3 I:??[OBJECT, ARRAY]), block:B:45:0x0081 */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0084 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String a(android.content.Context r9) throws java.lang.Throwable {
        /*
            r8 = this;
            java.lang.String r0 = "gaClientId"
            java.lang.String r1 = "Failed to close client id reading stream"
            java.lang.String r2 = "ClientId should be loaded from worker thread"
            com.google.android.gms.common.internal.aa.c(r2)
            r2 = 0
            java.io.FileInputStream r3 = r9.openFileInput(r0)     // Catch: java.lang.Throwable -> L69 java.io.IOException -> L6b java.io.FileNotFoundException -> L8d
            r4 = 36
            byte[] r5 = new byte[r4]     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r6 = 0
            int r4 = r3.read(r5, r6, r4)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            int r7 = r3.available()     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            if (r7 <= 0) goto L33
            java.lang.String r4 = "clientId file seems corrupted, deleting it."
            r8.e(r4)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r3.close()     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r9.deleteFile(r0)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            if (r3 == 0) goto L32
            r3.close()     // Catch: java.io.IOException -> L2e
            goto L32
        L2e:
            r9 = move-exception
            r8.e(r1, r9)
        L32:
            return r2
        L33:
            r7 = 14
            if (r4 >= r7) goto L4d
            java.lang.String r4 = "clientId file is empty, deleting it."
            r8.e(r4)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r3.close()     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r9.deleteFile(r0)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            if (r3 == 0) goto L4c
            r3.close()     // Catch: java.io.IOException -> L48
            goto L4c
        L48:
            r9 = move-exception
            r8.e(r1, r9)
        L4c:
            return r2
        L4d:
            r3.close()     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            java.lang.String r7 = new java.lang.String     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            r7.<init>(r5, r6, r4)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            java.lang.String r4 = "Read client id from disk"
            r8.a(r4, r7)     // Catch: java.io.IOException -> L65 java.io.FileNotFoundException -> L67 java.lang.Throwable -> L80
            if (r3 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L60
            goto L64
        L60:
            r9 = move-exception
            r8.e(r1, r9)
        L64:
            return r7
        L65:
            r4 = move-exception
            goto L6d
        L67:
            goto L8e
        L69:
            r9 = move-exception
            goto L82
        L6b:
            r4 = move-exception
            r3 = r2
        L6d:
            java.lang.String r5 = "Error reading client id file, deleting it"
            r8.e(r5, r4)     // Catch: java.lang.Throwable -> L80
            r9.deleteFile(r0)     // Catch: java.lang.Throwable -> L80
            if (r3 == 0) goto L7f
            r3.close()     // Catch: java.io.IOException -> L7b
            goto L7f
        L7b:
            r9 = move-exception
            r8.e(r1, r9)
        L7f:
            return r2
        L80:
            r9 = move-exception
            r2 = r3
        L82:
            if (r2 == 0) goto L8c
            r2.close()     // Catch: java.io.IOException -> L88
            goto L8c
        L88:
            r0 = move-exception
            r8.e(r1, r0)
        L8c:
            throw r9
        L8d:
            r3 = r2
        L8e:
            if (r3 == 0) goto L98
            r3.close()     // Catch: java.io.IOException -> L94
            goto L98
        L94:
            r9 = move-exception
            r8.e(r1, r9)
        L98:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aw.a(android.content.Context):java.lang.String");
    }

    private final boolean a(Context context, String str) {
        com.google.android.gms.common.internal.aa.a(str);
        com.google.android.gms.common.internal.aa.c("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStreamOpenFileOutput = null;
        try {
            try {
                try {
                    a("Storing clientId", str);
                    fileOutputStreamOpenFileOutput = context.openFileOutput("gaClientId", 0);
                    fileOutputStreamOpenFileOutput.write(str.getBytes());
                    if (fileOutputStreamOpenFileOutput == null) {
                        return true;
                    }
                    try {
                        fileOutputStreamOpenFileOutput.close();
                        return true;
                    } catch (IOException e2) {
                        e("Failed to close clientId writing stream", e2);
                        return true;
                    }
                } catch (FileNotFoundException e3) {
                    e("Error creating clientId file", e3);
                    if (fileOutputStreamOpenFileOutput != null) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e4) {
                            e("Failed to close clientId writing stream", e4);
                        }
                    }
                    return false;
                }
            } catch (IOException e5) {
                e("Error writing to clientId file", e5);
                if (fileOutputStreamOpenFileOutput != null) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                    } catch (IOException e6) {
                        e("Failed to close clientId writing stream", e6);
                    }
                }
                return false;
            }
        } catch (Throwable th) {
            if (fileOutputStreamOpenFileOutput != null) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                } catch (IOException e7) {
                    e("Failed to close clientId writing stream", e7);
                }
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        try {
            return !a(m().c(), lowerCase) ? "0" : lowerCase;
        } catch (Exception e2) {
            e("Error saving clientId file", e2);
            return "0";
        }
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x003e A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:4:0x0004, B:6:0x0008, B:7:0x0017, B:9:0x001b, B:16:0x003a, B:18:0x003e, B:19:0x0042, B:20:0x004c, B:21:0x004e, B:12:0x0027, B:13:0x002e, B:15:0x0032), top: B:28:0x0004, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String b() {
        /*
            r2 = this;
            r2.y()
            monitor-enter(r2)
            java.lang.String r0 = r2.f4056a     // Catch: java.lang.Throwable -> L50
            if (r0 != 0) goto L17
            com.google.android.gms.analytics.s r0 = r2.m()     // Catch: java.lang.Throwable -> L50
            com.google.android.gms.internal.measurement.ax r1 = new com.google.android.gms.internal.measurement.ax     // Catch: java.lang.Throwable -> L50
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L50
            java.util.concurrent.Future r0 = r0.a(r1)     // Catch: java.lang.Throwable -> L50
            r2.f4057b = r0     // Catch: java.lang.Throwable -> L50
        L17:
            java.util.concurrent.Future<java.lang.String> r0 = r2.f4057b     // Catch: java.lang.Throwable -> L50
            if (r0 == 0) goto L4c
            java.util.concurrent.Future<java.lang.String> r0 = r2.f4057b     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            java.lang.Object r0 = r0.get()     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            r2.f4056a = r0     // Catch: java.util.concurrent.ExecutionException -> L26 java.lang.InterruptedException -> L31 java.lang.Throwable -> L50
            goto L3a
        L26:
            r0 = move-exception
            java.lang.String r1 = "Failed to load or generate client id"
            r2.e(r1, r0)     // Catch: java.lang.Throwable -> L50
            java.lang.String r0 = "0"
        L2e:
            r2.f4056a = r0     // Catch: java.lang.Throwable -> L50
            goto L3a
        L31:
            r0 = move-exception
            java.lang.String r1 = "ClientId loading or generation was interrupted"
            r2.d(r1, r0)     // Catch: java.lang.Throwable -> L50
            java.lang.String r0 = "0"
            goto L2e
        L3a:
            java.lang.String r0 = r2.f4056a     // Catch: java.lang.Throwable -> L50
            if (r0 != 0) goto L42
            java.lang.String r0 = "0"
            r2.f4056a = r0     // Catch: java.lang.Throwable -> L50
        L42:
            java.lang.String r0 = "Loaded clientId"
            java.lang.String r1 = r2.f4056a     // Catch: java.lang.Throwable -> L50
            r2.a(r0, r1)     // Catch: java.lang.Throwable -> L50
            r0 = 0
            r2.f4057b = r0     // Catch: java.lang.Throwable -> L50
        L4c:
            java.lang.String r0 = r2.f4056a     // Catch: java.lang.Throwable -> L50
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L50
            return r0
        L50:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L50
            goto L54
        L53:
            throw r0
        L54:
            goto L53
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aw.b():java.lang.String");
    }

    final String c() {
        synchronized (this) {
            this.f4056a = null;
            this.f4057b = m().a(new ay(this));
        }
        return b();
    }

    final String d() throws Throwable {
        String strA = a(m().c());
        return strA == null ? e() : strA;
    }
}
