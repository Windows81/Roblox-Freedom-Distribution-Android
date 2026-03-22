package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.AsyncTask;
import android.os.Build;
import android.os.SystemClock;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f5993a = {"libfmod.so", "libroblox.so", "libtrampoline.so"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AtomicBoolean f5994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SharedPreferences f5995c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5996d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f5997e;
    private g f;
    private b g;

    public interface b {
        void a(String str, g gVar);
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final f f6001a = new f();
    }

    private static class a extends AsyncTask<String[], Integer, String> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f5998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f5999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f f6000c;

        a(String str, String str2, f fVar) {
            this.f5998a = str;
            this.f5999b = str2;
            this.f6000c = fVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String[]... strArr) throws Throwable {
            InputStream inputStream;
            FileOutputStream fileOutputStream;
            ArrayList arrayList = new ArrayList(Arrays.asList(strArr[0]));
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            File file = new File(this.f5999b);
            FileOutputStream fileOutputStream2 = null;
            if (file.exists()) {
                try {
                    ZipFile zipFile = new ZipFile(file);
                    Enumeration<? extends ZipEntry> enumerationEntries = zipFile.entries();
                    byte[] bArr = new byte[32768];
                    while (enumerationEntries.hasMoreElements() && !arrayList.isEmpty()) {
                        ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            String str = (String) it.next();
                            if (zipEntryNextElement.getName().contains(str)) {
                                File file2 = new File(this.f5998a + "/" + str);
                                if (file2.exists()) {
                                    file2.delete();
                                }
                                try {
                                    fileOutputStream = new FileOutputStream(file2);
                                    try {
                                        inputStream = zipFile.getInputStream(zipEntryNextElement);
                                        while (true) {
                                            try {
                                                try {
                                                    int i = inputStream.read(bArr);
                                                    if (i > 0) {
                                                        fileOutputStream.write(bArr, 0, i);
                                                    } else {
                                                        try {
                                                            break;
                                                        } catch (IOException e2) {
                                                            com.roblox.client.ae.k.e("CrashLibFileHelper", e2.getMessage());
                                                        }
                                                    }
                                                } catch (IOException e3) {
                                                    e = e3;
                                                    com.roblox.client.ae.k.e("CrashLibFileHelper", e.getMessage());
                                                    this.f6000c.f = g.ERROR_COPYING_FILE_TO_CACHE;
                                                    if (fileOutputStream != null) {
                                                        try {
                                                            fileOutputStream.close();
                                                        } catch (IOException e4) {
                                                            com.roblox.client.ae.k.e("CrashLibFileHelper", e4.getMessage());
                                                        }
                                                    }
                                                    if (inputStream != null) {
                                                        try {
                                                            inputStream.close();
                                                        } catch (IOException e5) {
                                                            com.roblox.client.ae.k.e("CrashLibFileHelper", e5.getMessage());
                                                        }
                                                    }
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                fileOutputStream2 = fileOutputStream;
                                                if (fileOutputStream2 != null) {
                                                    try {
                                                        fileOutputStream2.close();
                                                    } catch (IOException e6) {
                                                        com.roblox.client.ae.k.e("CrashLibFileHelper", e6.getMessage());
                                                    }
                                                }
                                                if (inputStream != null) {
                                                    try {
                                                        inputStream.close();
                                                        throw th;
                                                    } catch (IOException e7) {
                                                        com.roblox.client.ae.k.e("CrashLibFileHelper", e7.getMessage());
                                                        throw th;
                                                    }
                                                }
                                                throw th;
                                            }
                                        }
                                        fileOutputStream.close();
                                        if (inputStream != null) {
                                            try {
                                                inputStream.close();
                                            } catch (IOException e8) {
                                                com.roblox.client.ae.k.e("CrashLibFileHelper", e8.getMessage());
                                            }
                                        }
                                        it.remove();
                                    } catch (IOException e9) {
                                        e = e9;
                                        inputStream = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        inputStream = null;
                                    }
                                } catch (IOException e10) {
                                    e = e10;
                                    fileOutputStream = null;
                                    inputStream = null;
                                } catch (Throwable th3) {
                                    th = th3;
                                    inputStream = null;
                                }
                            }
                        }
                    }
                    if (arrayList.isEmpty()) {
                        com.roblox.client.ae.k.c("CrashLibFileHelper", "Copy duration : " + (SystemClock.elapsedRealtime() - jElapsedRealtime));
                        this.f6000c.a();
                        return this.f5998a;
                    }
                    this.f6000c.f = g.ERROR_SO_FILE_MISSING;
                    return null;
                } catch (IOException unused) {
                    this.f6000c.f = g.ERROR_APK_ZIP_FILE_CANT_OPEN;
                    return null;
                }
            }
            this.f6000c.f = g.ERROR_APK_FILE_NOT_FOUND;
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            this.f6000c.a(str);
            synchronized (f.class) {
                if (this.f6000c.g != null) {
                    this.f6000c.g.a(str, this.f6000c.f);
                }
                this.f6000c.g = null;
            }
        }
    }

    public static void a(Context context, String[] strArr, String str) throws RuntimeException {
        String strA;
        f fVar = c.f6001a;
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (Build.VERSION.SDK_INT >= 21 && applicationInfo.splitSourceDirs != null && (strA = a(applicationInfo.splitSourceDirs)) != null) {
            if (fVar.f5994b.getAndSet(true)) {
                throw new RuntimeException("Helper inited.");
            }
            if (!fVar.a(context)) {
                new a(str, strA, fVar).execute(strArr);
                return;
            } else {
                com.roblox.client.ae.k.c("CrashLibFileHelper", "SO files copied.");
                fVar.a(str);
                return;
            }
        }
        com.roblox.client.ae.k.c("CrashLibFileHelper", "Use the native lib path.");
        fVar.a(applicationInfo.nativeLibraryDir);
    }

    public static void a(b bVar) {
        synchronized (f.class) {
            f fVar = c.f6001a;
            if (fVar.f5997e != null || fVar.f != null) {
                bVar.a(fVar.f5997e, fVar.f);
            } else {
                fVar.g = bVar;
            }
        }
    }

    private static String a(String[] strArr) {
        String[] strArr2 = Build.SUPPORTED_ABIS;
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            if (str != null) {
                for (String str2 : strArr2) {
                    if (str.contains(str2) || str.contains(str2.replace("-", "_"))) {
                        return str;
                    }
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        synchronized (f.class) {
            this.f5997e = str;
        }
    }

    private boolean a(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            SharedPreferences sharedPreferences = context.getSharedPreferences("crash_lib_file_helper", 0);
            this.f5995c = sharedPreferences;
            this.f5996d = packageInfo.versionCode;
            return sharedPreferences.getInt("latest_copied_version", 0) == packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            com.roblox.client.ae.k.e("CrashLibFileHelper", e2.getMessage());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        SharedPreferences sharedPreferences = this.f5995c;
        if (sharedPreferences == null || this.f5996d <= 0) {
            return;
        }
        sharedPreferences.edit().putInt("latest_copied_version", this.f5996d).commit();
    }

    private f() {
        this.f5994b = new AtomicBoolean(false);
    }
}
