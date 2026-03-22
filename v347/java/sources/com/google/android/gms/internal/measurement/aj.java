package com.google.android.gms.internal.measurement;

import android.content.Context;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class aj extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f5865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Future<String> f5866b;

    protected aj(r rVar) {
        super(rVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0075 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x009e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x008c -> B:63:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x008e -> B:63:0x002f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x0093 -> B:63:0x002f). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.String a(android.content.Context r7) throws java.lang.Throwable {
        /*
            r6 = this;
            r0 = 0
            java.lang.String r1 = "ClientId should be loaded from worker thread"
            com.google.android.gms.common.internal.w.c(r1)
            java.lang.String r1 = "gaClientId"
            java.io.FileInputStream r2 = r7.openFileInput(r1)     // Catch: java.io.FileNotFoundException -> L71 java.io.IOException -> L80 java.lang.Throwable -> L99
            r1 = 36
            byte[] r3 = new byte[r1]     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            r1 = 0
            r4 = 36
            int r4 = r2.read(r3, r1, r4)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            int r1 = r2.available()     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            if (r1 <= 0) goto L37
            java.lang.String r1 = "clientId file seems corrupted, deleting it."
            r6.e(r1)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            r2.close()     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            java.lang.String r1 = "gaClientId"
            r7.deleteFile(r1)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L30
        L2f:
            return r0
        L30:
            r1 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r1)
            goto L2f
        L37:
            r1 = 14
            if (r4 >= r1) goto L55
            java.lang.String r1 = "clientId file is empty, deleting it."
            r6.e(r1)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            r2.close()     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            java.lang.String r1 = "gaClientId"
            r7.deleteFile(r1)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L4e
            goto L2f
        L4e:
            r1 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r1)
            goto L2f
        L55:
            r2.close()     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            r5 = 0
            r1.<init>(r3, r5, r4)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            java.lang.String r3 = "Read client id from disk"
            r6.a(r3, r1)     // Catch: java.lang.Throwable -> La9 java.io.IOException -> Lab java.io.FileNotFoundException -> Lad
            if (r2 == 0) goto L68
            r2.close()     // Catch: java.io.IOException -> L6a
        L68:
            r0 = r1
            goto L2f
        L6a:
            r0 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r0)
            goto L68
        L71:
            r1 = move-exception
            r1 = r0
        L73:
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.io.IOException -> L79
            goto L2f
        L79:
            r1 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r1)
            goto L2f
        L80:
            r1 = move-exception
            r2 = r0
        L82:
            java.lang.String r3 = "Error reading client id file, deleting it"
            r6.e(r3, r1)     // Catch: java.lang.Throwable -> La9
            java.lang.String r1 = "gaClientId"
            r7.deleteFile(r1)     // Catch: java.lang.Throwable -> La9
            if (r2 == 0) goto L2f
            r2.close()     // Catch: java.io.IOException -> L92
            goto L2f
        L92:
            r1 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r1)
            goto L2f
        L99:
            r1 = move-exception
            r2 = r0
            r0 = r1
        L9c:
            if (r2 == 0) goto La1
            r2.close()     // Catch: java.io.IOException -> La2
        La1:
            throw r0
        La2:
            r1 = move-exception
            java.lang.String r2 = "Failed to close client id reading stream"
            r6.e(r2, r1)
            goto La1
        La9:
            r0 = move-exception
            goto L9c
        Lab:
            r1 = move-exception
            goto L82
        Lad:
            r1 = move-exception
            r1 = r2
            goto L73
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.aj.a(android.content.Context):java.lang.String");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean a(Context context, String str) {
        boolean z = false;
        com.google.android.gms.common.internal.w.a(str);
        com.google.android.gms.common.internal.w.c("ClientId should be saved from worker thread");
        FileOutputStream fileOutputStreamOpenFileOutput = 0;
        fileOutputStreamOpenFileOutput = 0;
        fileOutputStreamOpenFileOutput = 0;
        try {
            try {
                try {
                    a("Storing clientId", str);
                    fileOutputStreamOpenFileOutput = context.openFileOutput("gaClientId", 0);
                    fileOutputStreamOpenFileOutput.write(str.getBytes());
                    if (fileOutputStreamOpenFileOutput != 0) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e) {
                            e("Failed to close clientId writing stream", e);
                        }
                    }
                    z = true;
                    fileOutputStreamOpenFileOutput = fileOutputStreamOpenFileOutput;
                } catch (Throwable th) {
                    if (fileOutputStreamOpenFileOutput != 0) {
                        try {
                            fileOutputStreamOpenFileOutput.close();
                        } catch (IOException e2) {
                            e("Failed to close clientId writing stream", e2);
                        }
                    }
                    throw th;
                }
            } catch (IOException e3) {
                e("Error writing to clientId file", e3);
                fileOutputStreamOpenFileOutput = fileOutputStreamOpenFileOutput;
                if (fileOutputStreamOpenFileOutput != 0) {
                    try {
                        fileOutputStreamOpenFileOutput.close();
                        fileOutputStreamOpenFileOutput = fileOutputStreamOpenFileOutput;
                    } catch (IOException e4) {
                        e("Failed to close clientId writing stream", e4);
                        fileOutputStreamOpenFileOutput = "Failed to close clientId writing stream";
                    }
                }
            }
        } catch (FileNotFoundException e5) {
            e("Error creating clientId file", e5);
            fileOutputStreamOpenFileOutput = fileOutputStreamOpenFileOutput;
            if (fileOutputStreamOpenFileOutput != 0) {
                try {
                    fileOutputStreamOpenFileOutput.close();
                    fileOutputStreamOpenFileOutput = fileOutputStreamOpenFileOutput;
                } catch (IOException e6) {
                    e("Failed to close clientId writing stream", e6);
                    fileOutputStreamOpenFileOutput = "Failed to close clientId writing stream";
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String e() {
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        try {
            return !a(m().c(), lowerCase) ? "0" : lowerCase;
        } catch (Exception e) {
            e("Error saving clientId file", e);
            return "0";
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
    }

    public final String b() {
        String str;
        y();
        synchronized (this) {
            if (this.f5865a == null) {
                this.f5866b = m().a(new ak(this));
            }
            if (this.f5866b != null) {
                try {
                    this.f5865a = this.f5866b.get();
                } catch (InterruptedException e) {
                    d("ClientId loading or generation was interrupted", e);
                    this.f5865a = "0";
                } catch (ExecutionException e2) {
                    e("Failed to load or generate client id", e2);
                    this.f5865a = "0";
                }
                if (this.f5865a == null) {
                    this.f5865a = "0";
                }
                a("Loaded clientId", this.f5865a);
                this.f5866b = null;
                str = this.f5865a;
            } else {
                str = this.f5865a;
            }
        }
        return str;
    }

    final String c() {
        synchronized (this) {
            this.f5865a = null;
            this.f5866b = m().a(new al(this));
        }
        return b();
    }

    final String d() throws Throwable {
        String strA = a(m().c());
        return strA == null ? e() : strA;
    }
}
