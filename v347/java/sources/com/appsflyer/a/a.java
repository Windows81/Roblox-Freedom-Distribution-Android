package com.appsflyer.a;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2177a = new a();

    public static a a() {
        return f2177a;
    }

    private a() {
    }

    private File c(Context context) {
        return new File(context.getFilesDir(), "AFRequestCache");
    }

    public void a(Context context) {
        try {
            if (!c(context).exists()) {
                c(context).mkdir();
            }
        } catch (Exception e) {
            Log.i("AppsFlyer_4.8.3", "Could not create cache directory");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.OutputStreamWriter] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v12, types: [java.io.OutputStreamWriter] */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.OutputStreamWriter] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.appsflyer.a.b r8, android.content.Context r9) throws java.lang.Throwable {
        /*
            r7 = this;
            r0 = 0
            java.io.File r1 = r7.c(r9)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            boolean r2 = r1.exists()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            if (r2 != 0) goto Lf
            r1.mkdir()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
        Le:
            return
        Lf:
            java.io.File[] r1 = r1.listFiles()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            if (r1 == 0) goto L32
            int r1 = r1.length     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            r2 = 40
            if (r1 <= r2) goto L32
            java.lang.String r1 = "AppsFlyer_4.8.3"
            java.lang.String r2 = "reached cache limit, not caching request"
            android.util.Log.i(r1, r2)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            goto Le
        L22:
            r1 = move-exception
        L23:
            java.lang.String r1 = "AppsFlyer_4.8.3"
            java.lang.String r2 = "Could not cache request"
            android.util.Log.i(r1, r2)     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto Le
            r0.close()     // Catch: java.io.IOException -> L30
            goto Le
        L30:
            r0 = move-exception
            goto Le
        L32:
            java.lang.String r1 = "AppsFlyer_4.8.3"
            java.lang.String r2 = "caching request..."
            android.util.Log.i(r1, r2)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.io.File r2 = new java.io.File     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.io.File r1 = r7.c(r9)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.lang.String r3 = java.lang.Long.toString(r4)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            r2.<init>(r1, r3)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            r2.createNewFile()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.io.OutputStreamWriter r1 = new java.io.OutputStreamWriter     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.lang.String r2 = r2.getPath()     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            r4 = 1
            r3.<init>(r2, r4)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            r1.<init>(r3)     // Catch: java.lang.Exception -> L22 java.lang.Throwable -> L9a
            java.lang.String r0 = "version="
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            java.lang.String r0 = r8.a()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            java.lang.String r0 = "url="
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            java.lang.String r0 = r8.c()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            java.lang.String r0 = "data="
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            java.lang.String r0 = r8.b()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r0 = 10
            r1.write(r0)     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r1.flush()     // Catch: java.lang.Throwable -> La6 java.lang.Exception -> Lad
            r1.close()     // Catch: java.io.IOException -> L97
            goto Le
        L97:
            r0 = move-exception
            goto Le
        L9a:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L9e:
            if (r1 == 0) goto La3
            r1.close()     // Catch: java.io.IOException -> La4
        La3:
            throw r0
        La4:
            r1 = move-exception
            goto La3
        La6:
            r0 = move-exception
            goto L9e
        La8:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L9e
        Lad:
            r0 = move-exception
            r0 = r1
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appsflyer.a.a.a(com.appsflyer.a.b, android.content.Context):void");
    }

    public List<b> b(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            File fileC = c(context);
            if (!fileC.exists()) {
                fileC.mkdir();
            } else {
                File[] fileArrListFiles = fileC.listFiles();
                for (File file : fileArrListFiles) {
                    Log.i("AppsFlyer_4.8.3", "Found cached request" + file.getName());
                    arrayList.add(a(file));
                }
            }
        } catch (Exception e) {
            Log.i("AppsFlyer_4.8.3", "Could not cache request");
        }
        return arrayList;
    }

    private b a(File file) throws Throwable {
        FileReader fileReader;
        FileReader fileReader2;
        try {
            fileReader = new FileReader(file);
        } catch (Exception e) {
            fileReader2 = null;
        } catch (Throwable th) {
            th = th;
            fileReader = null;
        }
        try {
            char[] cArr = new char[(int) file.length()];
            fileReader.read(cArr);
            b bVar = new b(cArr);
            bVar.a(file.getName());
            try {
                fileReader.close();
                return bVar;
            } catch (IOException e2) {
                return bVar;
            }
        } catch (Exception e3) {
            fileReader2 = fileReader;
            if (fileReader2 != null) {
                try {
                    fileReader2.close();
                } catch (IOException e4) {
                }
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            if (fileReader != null) {
                try {
                    fileReader.close();
                } catch (IOException e5) {
                }
            }
            throw th;
        }
    }

    public void a(String str, Context context) {
        File file = new File(c(context), str);
        Log.i("AppsFlyer_4.8.3", "Deleting " + str + " from cache");
        if (file.exists()) {
            try {
                file.delete();
            } catch (Exception e) {
                Log.i("AppsFlyer_4.8.3", "Could not delete " + str + " from cache", e);
            }
        }
    }
}
