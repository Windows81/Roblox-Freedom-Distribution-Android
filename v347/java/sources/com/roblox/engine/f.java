package com.roblox.engine;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Lock f7977d = new ReentrantLock();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7978a = "rbx.xapkmanager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f7979b = "main.1.com.roblox.client.obb";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f7980c = "fingerprint.txt";
    private String e = null;
    private b f;

    public interface b {
        void a();

        void a(boolean z);
    }

    public f(b bVar) {
        if (bVar == null) {
            this.f = new a();
        } else {
            this.f = bVar;
        }
    }

    public void a(final Context context) {
        new Thread(new Runnable() { // from class: com.roblox.engine.f.1
            @Override // java.lang.Runnable
            public void run() {
                f.this.b(context);
            }
        }).start();
    }

    public String b(Context context) {
        f7977d.lock();
        try {
            if (this.e == null) {
                com.roblox.platform.d.b("rbx.xapkmanager", "unpackAssets: Asset path not yet set.");
                this.e = c(context);
            }
            f7977d.unlock();
            com.roblox.platform.d.c("rbx.xapkmanager", "unpackAssets: cached-asset-path = " + this.e);
            return this.e;
        } catch (Throwable th) {
            f7977d.unlock();
            throw th;
        }
    }

    private String c(Context context) throws Throwable {
        File dir = context.getDir("assets", 0);
        String str = dir.getPath() + "/content";
        String strD = d(context);
        if (TextUtils.isEmpty(strD)) {
            com.roblox.platform.d.e("rbx.xapkmanager", "unpackAssets_internal: Unable to read OBB fingerprint.");
            this.f.a();
            return null;
        }
        String strA = a(dir.getPath());
        com.roblox.platform.d.c("rbx.xapkmanager", "unpackAssets_internal: Compare fingerprint: obb:" + strD + " vs. assets:" + strA);
        if (TextUtils.equals(strD, strA)) {
            com.roblox.platform.d.b("rbx.xapkmanager", "Assets are up to date");
            return str;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            a(context, dir.getPath());
            this.f.a(true);
        } catch (Exception e) {
            com.roblox.platform.d.e("rbx.xapkmanager", "unpackAssets_internal: Unzip exception = " + e);
            this.f.a(false);
        }
        com.roblox.platform.d.c("rbx.xapkmanager", "unpackAssets_internal: unzipContainer took (ms) " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        a(strD, dir.getPath());
        com.roblox.platform.d.b("rbx.xapkmanager", "unpackAssets_internal: SUCCESS. cached-asset-path = " + str);
        return str;
    }

    private String d(Context context) throws Throwable {
        BufferedReader bufferedReader;
        InputStream inputStreamOpen;
        Throwable th;
        String line = null;
        try {
            inputStreamOpen = context.getAssets().open("fingerprint.txt");
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                try {
                    try {
                        line = bufferedReader.readLine();
                        a(bufferedReader);
                        a(inputStreamOpen);
                    } catch (IOException e) {
                        e = e;
                        com.roblox.platform.d.e("rbx.xapkmanager", "Exception: " + e.getMessage());
                        a(bufferedReader);
                        a(inputStreamOpen);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a(bufferedReader);
                    a(inputStreamOpen);
                    throw th;
                }
            } catch (IOException e2) {
                e = e2;
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
                a(bufferedReader);
                a(inputStreamOpen);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            bufferedReader = null;
            inputStreamOpen = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            inputStreamOpen = null;
            th = th4;
        }
        return line;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.roblox.engine.f] */
    private String a(String str) throws Throwable {
        ?? r2;
        Throwable th;
        BufferedReader bufferedReader;
        String line = null;
        File file = new File(str, "fingerprint.txt");
        Object obj = "rbx.xapkmanager";
        com.roblox.platform.d.c("rbx.xapkmanager", "readAssetsFingerprint: pathname = " + file.getPath());
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    line = bufferedReader.readLine();
                    a(bufferedReader);
                    obj = bufferedReader;
                } catch (FileNotFoundException e) {
                    com.roblox.platform.d.c("rbx.xapkmanager", "Assets fingerprint file not yet created. Expected for 1st time.");
                    a(bufferedReader);
                    obj = bufferedReader;
                } catch (IOException e2) {
                    r2 = bufferedReader;
                    e = e2;
                    try {
                        com.roblox.platform.d.e("rbx.xapkmanager", "Exception: " + e.getMessage());
                        a(r2);
                        return line;
                    } catch (Throwable th2) {
                        th = th2;
                        a(r2);
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                r2 = obj;
                a(r2);
                throw th;
            }
        } catch (FileNotFoundException e3) {
            bufferedReader = null;
        } catch (IOException e4) {
            e = e4;
            r2 = 0;
        } catch (Throwable th4) {
            r2 = 0;
            th = th4;
            a(r2);
            throw th;
        }
        return line;
    }

    private void a(Context context, String str) throws Exception {
        com.roblox.platform.d.b("rbx.xapkmanager", "unzipContainer: baseAssetPath = " + str);
        byte[] bArr = new byte[8192];
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(context.getAssets().open("main.1.com.roblox.client.obb")));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry != null) {
                    File file = new File(str + "/" + nextEntry.getName());
                    if (nextEntry.isDirectory()) {
                        if (!file.isDirectory()) {
                            file.mkdirs();
                        }
                    } else {
                        File parentFile = file.getParentFile();
                        if (parentFile != null && !parentFile.isDirectory()) {
                            parentFile.mkdirs();
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file, false), 8192);
                        while (true) {
                            try {
                                int i = zipInputStream.read(bArr, 0, 8192);
                                if (i == -1) {
                                    break;
                                } else {
                                    bufferedOutputStream.write(bArr, 0, i);
                                }
                            } finally {
                            }
                        }
                        zipInputStream.closeEntry();
                    }
                } else {
                    return;
                }
            } finally {
                zipInputStream.close();
            }
        }
    }

    private void a(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        File file = new File(str2, "fingerprint.txt");
        com.roblox.platform.d.c("rbx.xapkmanager", "Write fingerprint file: " + file.getPath());
        try {
            fileOutputStream = new FileOutputStream(file);
            try {
                try {
                    fileOutputStream.write(str.getBytes());
                    a(fileOutputStream);
                } catch (Exception e) {
                    e = e;
                    com.roblox.platform.d.e("rbx.xapkmanager", "Exception " + e.getMessage());
                    a(fileOutputStream);
                }
            } catch (Throwable th) {
                th = th;
                a(fileOutputStream);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            fileOutputStream = null;
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
            a(fileOutputStream);
            throw th;
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                com.roblox.platform.d.e("rbx.xapkmanager", "Ignore Exception: " + e.getMessage());
            }
        }
    }

    public class a implements b {
        public a() {
        }

        @Override // com.roblox.engine.f.b
        public void a() {
        }

        @Override // com.roblox.engine.f.b
        public void a(boolean z) {
        }
    }
}
