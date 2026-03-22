package android.support.v4.b;

import android.content.Context;
import android.content.res.Resources;
import android.os.Process;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {
    public static File a(Context context) {
        String str = ".font" + Process.myPid() + "-" + Process.myTid() + "-";
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 100) {
                File file = new File(context.getCacheDir(), str + i2);
                if (!file.createNewFile()) {
                    i = i2 + 1;
                } else {
                    return file;
                }
            } else {
                return null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[Catch: IOException -> 0x0024, SYNTHETIC, TRY_ENTER, TryCatch #3 {IOException -> 0x0024, blocks: (B:3:0x0001, B:8:0x001b, B:14:0x0027, B:11:0x0020, B:22:0x0035, B:26:0x003e, B:25:0x003a, B:23:0x0038), top: B:32:0x0001, inners: #2, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static java.nio.ByteBuffer a(java.io.File r10) throws java.lang.Throwable {
        /*
            r6 = 0
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.io.IOException -> L24
            r7.<init>(r10)     // Catch: java.io.IOException -> L24
            r8 = 0
            java.nio.channels.FileChannel r0 = r7.getChannel()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L2b java.lang.Throwable -> L42
            if (r7 == 0) goto L1e
            if (r6 == 0) goto L27
            r7.close()     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L24
        L1e:
            return r0
        L1f:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L24
            goto L1e
        L24:
            r0 = move-exception
            r0 = r6
            goto L1e
        L27:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L1e
        L2b:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L2d
        L2d:
            r1 = move-exception
            r9 = r1
            r1 = r0
            r0 = r9
        L31:
            if (r7 == 0) goto L38
            if (r1 == 0) goto L3e
            r7.close()     // Catch: java.io.IOException -> L24 java.lang.Throwable -> L39
        L38:
            throw r0     // Catch: java.io.IOException -> L24
        L39:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L24
            goto L38
        L3e:
            r7.close()     // Catch: java.io.IOException -> L24
            goto L38
        L42:
            r0 = move-exception
            r1 = r6
            goto L31
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.h.a(java.io.File):java.nio.ByteBuffer");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[Catch: IOException -> 0x0048, SYNTHETIC, TRY_ENTER, TRY_LEAVE, TryCatch #2 {IOException -> 0x0048, blocks: (B:3:0x0005, B:13:0x0031, B:34:0x0057, B:33:0x0053, B:24:0x0044, B:50:0x0077, B:49:0x0073, B:25:0x0047), top: B:55:0x0005, inners: #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[Catch: Throwable -> 0x003a, all -> 0x004f, SYNTHETIC, TRY_ENTER, TryCatch #1 {Throwable -> 0x003a, blocks: (B:5:0x000c, B:28:0x004b, B:16:0x0036, B:46:0x006e, B:45:0x006a, B:43:0x0068), top: B:54:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.nio.ByteBuffer a(android.content.Context r12, android.os.CancellationSignal r13, android.net.Uri r14) throws java.lang.Throwable {
        /*
            r6 = 0
            android.content.ContentResolver r0 = r12.getContentResolver()
            java.lang.String r1 = "r"
            android.os.ParcelFileDescriptor r7 = r0.openFileDescriptor(r14, r1, r13)     // Catch: java.io.IOException -> L48
            r8 = 0
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            java.io.FileDescriptor r0 = r7.getFileDescriptor()     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            r9.<init>(r0)     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            r10 = 0
            java.nio.channels.FileChannel r0 = r9.getChannel()     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L7b
            long r4 = r0.size()     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L7b
            java.nio.channels.FileChannel$MapMode r1 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L7b
            r2 = 0
            java.nio.MappedByteBuffer r0 = r0.map(r1, r2, r4)     // Catch: java.lang.Throwable -> L5b java.lang.Throwable -> L7b
            if (r9 == 0) goto L2d
            if (r6 == 0) goto L4b
            r9.close()     // Catch: java.lang.Throwable -> L35 java.lang.Throwable -> L4f
        L2d:
            if (r7 == 0) goto L34
            if (r6 == 0) goto L57
            r7.close()     // Catch: java.io.IOException -> L48 java.lang.Throwable -> L52
        L34:
            return r0
        L35:
            r1 = move-exception
            r10.addSuppressed(r1)     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            goto L2d
        L3a:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L3c
        L3c:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L40:
            if (r7 == 0) goto L47
            if (r1 == 0) goto L77
            r7.close()     // Catch: java.io.IOException -> L48 java.lang.Throwable -> L72
        L47:
            throw r0     // Catch: java.io.IOException -> L48
        L48:
            r0 = move-exception
            r0 = r6
            goto L34
        L4b:
            r9.close()     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            goto L2d
        L4f:
            r0 = move-exception
            r1 = r6
            goto L40
        L52:
            r1 = move-exception
            r8.addSuppressed(r1)     // Catch: java.io.IOException -> L48
            goto L34
        L57:
            r7.close()     // Catch: java.io.IOException -> L48
            goto L34
        L5b:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> L5d
        L5d:
            r1 = move-exception
            r11 = r1
            r1 = r0
            r0 = r11
        L61:
            if (r9 == 0) goto L68
            if (r1 == 0) goto L6e
            r9.close()     // Catch: java.lang.Throwable -> L4f java.lang.Throwable -> L69
        L68:
            throw r0     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
        L69:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            goto L68
        L6e:
            r9.close()     // Catch: java.lang.Throwable -> L3a java.lang.Throwable -> L4f
            goto L68
        L72:
            r2 = move-exception
            r1.addSuppressed(r2)     // Catch: java.io.IOException -> L48
            goto L47
        L77:
            r7.close()     // Catch: java.io.IOException -> L48
            goto L47
        L7b:
            r0 = move-exception
            r1 = r6
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.h.a(android.content.Context, android.os.CancellationSignal, android.net.Uri):java.nio.ByteBuffer");
    }

    public static ByteBuffer a(Context context, Resources resources, int i) {
        ByteBuffer byteBufferA = null;
        File fileA = a(context);
        if (fileA != null) {
            try {
                if (a(fileA, resources, i)) {
                    byteBufferA = a(fileA);
                }
            } finally {
                fileA.delete();
            }
        }
        return byteBufferA;
    }

    public static boolean a(File file, InputStream inputStream) throws Throwable {
        FileOutputStream fileOutputStream;
        try {
            fileOutputStream = new FileOutputStream(file, false);
            try {
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int i = inputStream.read(bArr);
                        if (i != -1) {
                            fileOutputStream.write(bArr, 0, i);
                        } else {
                            a(fileOutputStream);
                            return true;
                        }
                    }
                } catch (IOException e) {
                    e = e;
                    Log.e("TypefaceCompatUtil", "Error copying resource contents to temp file: " + e.getMessage());
                    a(fileOutputStream);
                    return false;
                }
            } catch (Throwable th) {
                th = th;
                a(fileOutputStream);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            a(fileOutputStream);
            throw th;
        }
    }

    public static boolean a(File file, Resources resources, int i) {
        InputStream inputStreamOpenRawResource = null;
        try {
            inputStreamOpenRawResource = resources.openRawResource(i);
            return a(file, inputStreamOpenRawResource);
        } finally {
            a(inputStreamOpenRawResource);
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
            }
        }
    }
}
