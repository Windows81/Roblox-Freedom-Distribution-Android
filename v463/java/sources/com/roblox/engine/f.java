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

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f7627a = new a() { // from class: com.roblox.engine.f.1
        @Override // com.roblox.engine.f.a
        public f a() {
            com.roblox.platform.e.b("rbx.xapkmanager", "default XAPKManager created");
            return new f();
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Lock f7628b = new ReentrantLock();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static String f7629c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Thread f7630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f7631e = new c();
    private Context f;

    public interface a {
        f a();
    }

    public static class c implements d {
        @Override // com.roblox.engine.f.d
        public void a() {
        }

        @Override // com.roblox.engine.f.d
        public void a(boolean z) {
        }
    }

    public interface d {
        void a();

        void a(boolean z);
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final f f7636a = f.f7627a.a();
    }

    protected void a(Context context, String str) {
    }

    public static void a(a aVar) {
        f7627a = aVar;
    }

    public static f a() {
        return e.f7636a;
    }

    public void a(d dVar) {
        this.f7631e = dVar;
    }

    public void a(Context context) {
        this.f = context;
    }

    public void b(final Context context) {
        com.roblox.platform.e.b("rbx.xapkmanager", "unpackAssetsAsync:");
        if (f7629c == null && f7630d == null) {
            Thread thread = new Thread(new Runnable() { // from class: com.roblox.engine.f.2
                @Override // java.lang.Runnable
                public void run() {
                    com.roblox.platform.e.b("rbx.xapkmanager", "unpackAssetsAsync: RUN .....");
                    f.this.c(context);
                    com.roblox.platform.e.b("rbx.xapkmanager", "unpackAssetsAsync: ...... DONE");
                    Thread unused = f.f7630d = null;
                }
            });
            f7630d = thread;
            thread.start();
        }
    }

    public boolean b() {
        if (!TextUtils.isEmpty(f7629c)) {
            return true;
        }
        if (f7630d != null) {
            com.roblox.platform.e.b("rbx.xapkmanager", "joinOrUnpack() join existing worker");
            try {
                f7630d.join();
                return true;
            } catch (InterruptedException e2) {
                com.roblox.platform.e.b("rbx.xapkmanager", "InterruptedException in waiting for thread to complete: " + e2.getMessage());
                return false;
            }
        }
        com.roblox.platform.e.b("rbx.xapkmanager", "joinOrUnpack() unpack");
        return true ^ TextUtils.isEmpty(c(this.f));
    }

    public String c(Context context) {
        f7628b.lock();
        try {
            if (f7629c == null) {
                com.roblox.platform.e.b("rbx.xapkmanager", "unpackAssets: Asset path not yet set.");
                String strE = e(context);
                f7629c = strE;
                a(context, strE);
            }
            f7628b.unlock();
            com.roblox.platform.e.c("rbx.xapkmanager", "unpackAssets: cached-asset-path = " + f7629c);
            return f7629c;
        } catch (Throwable th) {
            f7628b.unlock();
            throw th;
        }
    }

    public static String c() {
        return f7629c;
    }

    private String e(Context context) throws Throwable {
        String strG = g(context);
        String str = strG + "/content";
        b bVarH = h(context);
        if (bVarH == null) {
            com.roblox.platform.e.e("rbx.xapkmanager", "unpackAssets_internal: Unable to read OBB fingerprint.");
            this.f7631e.a();
            return null;
        }
        com.roblox.platform.e.c("rbx.xapkmanager", "unpackAssets_internal: Compare fingerprint: obb:" + bVarH.f7634a + " vs. assets:" + bVarH.f7635b);
        if (bVarH.a()) {
            com.roblox.platform.e.b("rbx.xapkmanager", "Assets are up to date");
            return str;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        try {
            b(context, strG);
            this.f7631e.a(true);
        } catch (Exception e2) {
            com.roblox.platform.e.e("rbx.xapkmanager", "unpackAssets_internal: Unzip exception = " + e2);
            this.f7631e.a(false);
        }
        com.roblox.platform.e.c("rbx.xapkmanager", "unpackAssets_internal: unzipContainer took (ms) " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
        a(bVarH.f7634a, strG);
        com.roblox.platform.e.b("rbx.xapkmanager", "unpackAssets_internal: SUCCESS. cached-asset-path = " + str);
        return str;
    }

    private String f(Context context) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        InputStream inputStreamOpen;
        String line = null;
        try {
            inputStreamOpen = context.getAssets().open("fingerprint.txt");
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen));
                try {
                    try {
                        line = bufferedReader.readLine();
                    } catch (IOException e2) {
                        e = e2;
                        com.roblox.platform.e.e("rbx.xapkmanager", "Exception: " + e.getMessage());
                    }
                } catch (Throwable th2) {
                    th = th2;
                    a(bufferedReader);
                    a(inputStreamOpen);
                    throw th;
                }
            } catch (IOException e3) {
                e = e3;
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
                a(bufferedReader);
                a(inputStreamOpen);
                throw th;
            }
        } catch (IOException e4) {
            e = e4;
            inputStreamOpen = null;
            bufferedReader = null;
        } catch (Throwable th4) {
            bufferedReader = null;
            th = th4;
            inputStreamOpen = null;
        }
        a(bufferedReader);
        a(inputStreamOpen);
        return line;
    }

    private String a(String str) throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        File file = new File(str, "fingerprint.txt");
        com.roblox.platform.e.c("rbx.xapkmanager", "readAssetsFingerprint: pathname = " + file.getPath());
        String line = null;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
            } catch (Throwable th2) {
                th = th2;
                a(bufferedReader);
                throw th;
            }
        } catch (FileNotFoundException unused) {
            bufferedReader = null;
        } catch (IOException e2) {
            e = e2;
            bufferedReader = null;
        } catch (Throwable th3) {
            bufferedReader = null;
            th = th3;
            a(bufferedReader);
            throw th;
        }
        try {
            line = bufferedReader.readLine();
        } catch (FileNotFoundException unused2) {
            com.roblox.platform.e.c("rbx.xapkmanager", "Assets fingerprint file not yet created. Expected for 1st time.");
        } catch (IOException e3) {
            e = e3;
            com.roblox.platform.e.e("rbx.xapkmanager", "Exception: " + e.getMessage());
        }
        a(bufferedReader);
        return line;
    }

    private void b(Context context, String str) throws Exception {
        com.roblox.platform.e.b("rbx.xapkmanager", "unzipContainer: baseAssetPath = " + str);
        byte[] bArr = new byte[8192];
        ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(context.getAssets().open("main.1.com.roblox.client.obb")));
        while (true) {
            try {
                ZipEntry nextEntry = zipInputStream.getNextEntry();
                if (nextEntry == null) {
                    return;
                }
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
                    bufferedOutputStream.flush();
                    bufferedOutputStream.close();
                }
            } finally {
                zipInputStream.close();
            }
        }
    }

    private void a(String str, String str2) throws Throwable {
        FileOutputStream fileOutputStream;
        File file = new File(str2, "fingerprint.txt");
        com.roblox.platform.e.c("rbx.xapkmanager", "Write fingerprint file: " + file.getPath());
        Closeable closeable = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(file);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            fileOutputStream.write(str.getBytes());
            a(fileOutputStream);
        } catch (Exception e3) {
            e = e3;
            closeable = fileOutputStream;
            com.roblox.platform.e.e("rbx.xapkmanager", "Exception " + e.getMessage());
            a(closeable);
        } catch (Throwable th2) {
            th = th2;
            closeable = fileOutputStream;
            a(closeable);
            throw th;
        }
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                com.roblox.platform.e.e("rbx.xapkmanager", "Ignore Exception: " + e2.getMessage());
            }
        }
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f7634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f7635b;

        public b(String str, String str2) {
            this.f7634a = str;
            this.f7635b = str2;
        }

        public boolean a() {
            return TextUtils.equals(this.f7634a, this.f7635b);
        }
    }

    private String g(Context context) {
        return context.getDir("assets", 0).getPath();
    }

    private b h(Context context) throws Throwable {
        String strF = f(context);
        if (TextUtils.isEmpty(strF)) {
            return null;
        }
        return new b(strF, a(g(context)));
    }

    public boolean d(Context context) throws Throwable {
        b bVarH = h(context);
        if (bVarH == null || !bVarH.a()) {
            return false;
        }
        com.roblox.platform.e.c("rbx.xapkmanager", "assets already up to date");
        return true;
    }

    public String a(Context context, String str, String str2) throws IOException {
        InputStream inputStreamOpen = context.getAssets().open(str);
        byte[] bArr = new byte[inputStreamOpen.available()];
        inputStreamOpen.read(bArr);
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(file, str);
        new FileOutputStream(file2).write(bArr);
        return file2.getAbsolutePath();
    }
}
