package android.support.v4.b;

import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class d extends g {
    d() {
    }

    private File a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[Catch: IOException -> 0x0056, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0056, blocks: (B:6:0x000e, B:56:0x0084, B:60:0x008f, B:59:0x008b, B:20:0x003e, B:41:0x0064, B:40:0x0060, B:31:0x0052, B:63:0x0098, B:62:0x0094, B:32:0x0055), top: B:71:0x000e, inners: #0, #1, #3 }] */
    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.graphics.Typeface a(android.content.Context r8, android.os.CancellationSignal r9, android.support.v4.e.b.C0018b[] r10, int r11) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            int r1 = r10.length
            r2 = 1
            if (r1 >= r2) goto L6
        L5:
            return r0
        L6:
            android.support.v4.e.b$b r1 = r7.a(r10, r11)
            android.content.ContentResolver r2 = r8.getContentResolver()
            android.net.Uri r1 = r1.a()     // Catch: java.io.IOException -> L56
            java.lang.String r3 = "r"
            android.os.ParcelFileDescriptor r3 = r2.openFileDescriptor(r1, r3, r9)     // Catch: java.io.IOException -> L56
            r2 = 0
            java.io.File r1 = r7.a(r3)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            if (r1 == 0) goto L25
            boolean r4 = r1.canRead()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            if (r4 != 0) goto L7c
        L25:
            java.io.FileInputStream r4 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            java.io.FileDescriptor r1 = r3.getFileDescriptor()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            r4.<init>(r1)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            r5 = 0
            android.graphics.Typeface r1 = super.a(r8, r4)     // Catch: java.lang.Throwable -> L68 java.lang.Throwable -> L9c
            if (r4 == 0) goto L3a
            if (r0 == 0) goto L58
            r4.close()     // Catch: java.lang.Throwable -> L43 java.lang.Throwable -> L5c
        L3a:
            if (r3 == 0) goto L41
            if (r0 == 0) goto L64
            r3.close()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L5f
        L41:
            r0 = r1
            goto L5
        L43:
            r4 = move-exception
            r5.addSuppressed(r4)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            goto L3a
        L48:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L4a
        L4a:
            r2 = move-exception
            r6 = r2
            r2 = r1
            r1 = r6
        L4e:
            if (r3 == 0) goto L55
            if (r2 == 0) goto L98
            r3.close()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L93
        L55:
            throw r1     // Catch: java.io.IOException -> L56
        L56:
            r1 = move-exception
            goto L5
        L58:
            r4.close()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            goto L3a
        L5c:
            r1 = move-exception
            r2 = r0
            goto L4e
        L5f:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L56
            goto L41
        L64:
            r3.close()     // Catch: java.io.IOException -> L56
            goto L41
        L68:
            r2 = move-exception
            throw r2     // Catch: java.lang.Throwable -> L6a
        L6a:
            r1 = move-exception
        L6b:
            if (r4 == 0) goto L72
            if (r2 == 0) goto L78
            r4.close()     // Catch: java.lang.Throwable -> L5c java.lang.Throwable -> L73
        L72:
            throw r1     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
        L73:
            r4 = move-exception
            r2.addSuppressed(r4)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            goto L72
        L78:
            r4.close()     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            goto L72
        L7c:
            android.graphics.Typeface r1 = android.graphics.Typeface.createFromFile(r1)     // Catch: java.lang.Throwable -> L48 java.lang.Throwable -> L5c
            if (r3 == 0) goto L87
            if (r0 == 0) goto L8f
            r3.close()     // Catch: java.io.IOException -> L56 java.lang.Throwable -> L8a
        L87:
            r0 = r1
            goto L5
        L8a:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L56
            goto L87
        L8f:
            r3.close()     // Catch: java.io.IOException -> L56
            goto L87
        L93:
            r3 = move-exception
            r2.addSuppressed(r3)     // Catch: java.io.IOException -> L56
            goto L55
        L98:
            r3.close()     // Catch: java.io.IOException -> L56
            goto L55
        L9c:
            r1 = move-exception
            r2 = r0
            goto L6b
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.d.a(android.content.Context, android.os.CancellationSignal, android.support.v4.e.b$b[], int):android.graphics.Typeface");
    }
}
