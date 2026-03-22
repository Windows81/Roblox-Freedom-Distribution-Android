package com.google.android.gms.internal.ads;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ahm {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f4003b = ahm.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f4004a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ExecutorService f4005c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DexClassLoader f4006d;
    private agx e;
    private byte[] f;
    private boolean j;
    private agp m;
    private Map<Pair<String, String>, aiv> p;
    private volatile com.google.android.gms.ads.a.a g = null;
    private volatile boolean h = false;
    private Future i = null;
    private volatile zn k = null;
    private Future l = null;
    private boolean n = false;
    private boolean o = false;
    private boolean q = false;
    private boolean r = true;
    private boolean s = false;

    final class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(ahm ahmVar, aho ahoVar) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if ("android.intent.action.USER_PRESENT".equals(intent.getAction())) {
                ahm.this.r = true;
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                ahm.this.r = false;
            }
        }
    }

    private ahm(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null;
        this.f4004a = this.j ? applicationContext : context;
        this.p = new HashMap();
    }

    public static ahm a(Context context, String str, String str2, boolean z) throws Throwable {
        ahm ahmVar = new ahm(context);
        try {
            ahmVar.f4005c = Executors.newCachedThreadPool(new aho());
            ahmVar.h = z;
            if (z) {
                ahmVar.i = ahmVar.f4005c.submit(new ahp(ahmVar));
            }
            ahmVar.f4005c.execute(new ahr(ahmVar));
            try {
                com.google.android.gms.common.f fVarB = com.google.android.gms.common.f.b();
                ahmVar.n = fVarB.b(ahmVar.f4004a) > 0;
                ahmVar.o = fVarB.a(ahmVar.f4004a) == 0;
            } catch (Throwable th) {
            }
            ahmVar.a(0, true);
            if (ahu.a() && ((Boolean) aoo.f().a(aro.bM)).booleanValue()) {
                throw new IllegalStateException("Task Context initialization must not be called from the UI thread.");
            }
            ahmVar.e = new agx(null);
            try {
                ahmVar.f = ahmVar.e.a(str);
                try {
                    try {
                        File cacheDir = ahmVar.f4004a.getCacheDir();
                        if (cacheDir == null && (cacheDir = ahmVar.f4004a.getDir("dex", 0)) == null) {
                            throw new ahj();
                        }
                        File file = cacheDir;
                        File file2 = new File(String.format("%s/%s.jar", file, "1521499837408"));
                        if (!file2.exists()) {
                            byte[] bArrA = ahmVar.e.a(ahmVar.f, str2);
                            file2.createNewFile();
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            fileOutputStream.write(bArrA, 0, bArrA.length);
                            fileOutputStream.close();
                        }
                        ahmVar.b(file, "1521499837408");
                        try {
                            ahmVar.f4006d = new DexClassLoader(file2.getAbsolutePath(), file.getAbsolutePath(), null, ahmVar.f4004a.getClassLoader());
                            a(file2);
                            ahmVar.a(file, "1521499837408");
                            a(String.format("%s/%s.dex", file, "1521499837408"));
                            if (!ahmVar.s) {
                                IntentFilter intentFilter = new IntentFilter();
                                intentFilter.addAction("android.intent.action.USER_PRESENT");
                                intentFilter.addAction("android.intent.action.SCREEN_OFF");
                                ahmVar.f4004a.registerReceiver(new a(ahmVar, null), intentFilter);
                                ahmVar.s = true;
                            }
                            ahmVar.m = new agp(ahmVar);
                            ahmVar.q = true;
                        } catch (Throwable th2) {
                            a(file2);
                            ahmVar.a(file, "1521499837408");
                            a(String.format("%s/%s.dex", file, "1521499837408"));
                            throw th2;
                        }
                    } catch (agy e) {
                        throw new ahj(e);
                    } catch (IOException e2) {
                        throw new ahj(e2);
                    }
                } catch (FileNotFoundException e3) {
                    throw new ahj(e3);
                } catch (NullPointerException e4) {
                    throw new ahj(e4);
                }
            } catch (agy e5) {
                throw new ahj(e5);
            }
        } catch (ahj e6) {
        }
        return ahmVar;
    }

    private static void a(File file) {
        if (file.exists()) {
            file.delete();
        } else {
            Log.d(f4003b, String.format("File %s not found. No need for deletion", file.getAbsolutePath()));
        }
    }

    private final void a(File file, String str) throws Throwable {
        FileInputStream fileInputStream;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        fileOutputStream2 = null;
        fileInputStream = null;
        fileInputStream = null;
        FileInputStream fileInputStream2 = null;
        File file2 = new File(String.format("%s/%s.tmp", file, str));
        if (file2.exists()) {
            return;
        }
        File file3 = new File(String.format("%s/%s.dex", file, str));
        if (file3.exists()) {
            long length = file3.length();
            if (length > 0) {
                byte[] bArr = new byte[(int) length];
                try {
                    fileInputStream = new FileInputStream(file3);
                    try {
                        if (fileInputStream.read(bArr) <= 0) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e) {
                            }
                            a(file3);
                            return;
                        }
                        adr adrVar = new adr();
                        adrVar.f3847d = Build.VERSION.SDK.getBytes();
                        adrVar.f3846c = str.getBytes();
                        byte[] bytes = this.e.a(this.f, bArr).getBytes();
                        adrVar.f3844a = bytes;
                        adrVar.f3845b = afw.a(bytes);
                        file2.createNewFile();
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            byte[] bArrA = afb.a(adrVar);
                            fileOutputStream.write(bArrA, 0, bArrA.length);
                            fileOutputStream.close();
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                            }
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                            }
                            a(file3);
                            return;
                        } catch (agy e4) {
                            fileInputStream2 = fileInputStream;
                        } catch (IOException e5) {
                            fileInputStream2 = fileInputStream;
                        } catch (NoSuchAlgorithmException e6) {
                            fileInputStream2 = fileInputStream;
                        } catch (Throwable th) {
                            fileOutputStream2 = fileOutputStream;
                            th = th;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e7) {
                                }
                            }
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e8) {
                                }
                            }
                            a(file3);
                            throw th;
                        }
                    } catch (agy e9) {
                        fileOutputStream = null;
                        fileInputStream2 = fileInputStream;
                    } catch (IOException e10) {
                        fileOutputStream = null;
                        fileInputStream2 = fileInputStream;
                    } catch (NoSuchAlgorithmException e11) {
                        fileOutputStream = null;
                        fileInputStream2 = fileInputStream;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (agy e12) {
                    fileOutputStream = null;
                } catch (IOException e13) {
                    fileOutputStream = null;
                } catch (NoSuchAlgorithmException e14) {
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = null;
                }
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e15) {
                    }
                }
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e16) {
                    }
                }
                a(file3);
            }
        }
    }

    private static void a(String str) {
        a(new File(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(int i, zn znVar) {
        if (i < 4) {
            if (znVar == null) {
                return true;
            }
            if (((Boolean) aoo.f().a(aro.bP)).booleanValue() && (znVar.n == null || znVar.n.equals("0000000000000000000000000000000000000000000000000000000000000000"))) {
                return true;
            }
            if (((Boolean) aoo.f().a(aro.bQ)).booleanValue() && (znVar.X == null || znVar.X.f3879a == null || znVar.X.f3879a.longValue() == -2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v16, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.io.FileInputStream] */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean b(java.io.File r13, java.lang.String r14) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ahm.b(java.io.File, java.lang.String):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        try {
            if (this.g == null && this.j) {
                com.google.android.gms.ads.a.a aVar = new com.google.android.gms.ads.a.a(this.f4004a);
                aVar.a();
                this.g = aVar;
            }
        } catch (com.google.android.gms.common.h | com.google.android.gms.common.i | IOException e) {
            this.g = null;
        }
    }

    private final zn p() {
        try {
            return sy.a(this.f4004a, this.f4004a.getPackageName(), Integer.toString(this.f4004a.getPackageManager().getPackageInfo(this.f4004a.getPackageName(), 0).versionCode));
        } catch (Throwable th) {
            return null;
        }
    }

    public final Context a() {
        return this.f4004a;
    }

    public final Method a(String str, String str2) {
        aiv aivVar = this.p.get(new Pair(str, str2));
        if (aivVar == null) {
            return null;
        }
        return aivVar.a();
    }

    final void a(int i, boolean z) {
        if (this.o) {
            Future<?> futureSubmit = this.f4005c.submit(new ahq(this, i, z));
            if (i == 0) {
                this.l = futureSubmit;
            }
        }
    }

    public final boolean a(String str, String str2, Class<?>... clsArr) {
        if (this.p.containsKey(new Pair(str, str2))) {
            return false;
        }
        this.p.put(new Pair<>(str, str2), new aiv(this, str, str2, clsArr));
        return true;
    }

    final zn b(int i, boolean z) {
        if (i > 0 && z) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException e) {
            }
        }
        return p();
    }

    public final boolean b() {
        return this.q;
    }

    public final ExecutorService c() {
        return this.f4005c;
    }

    public final DexClassLoader d() {
        return this.f4006d;
    }

    public final agx e() {
        return this.e;
    }

    public final byte[] f() {
        return this.f;
    }

    public final boolean g() {
        return this.n;
    }

    public final agp h() {
        return this.m;
    }

    public final boolean i() {
        return this.o;
    }

    public final boolean j() {
        return this.r;
    }

    public final zn k() {
        return this.k;
    }

    public final Future l() {
        return this.l;
    }

    public final com.google.android.gms.ads.a.a m() {
        if (!this.h) {
            return null;
        }
        if (this.g != null) {
            return this.g;
        }
        if (this.i != null) {
            try {
                this.i.get(2000L, TimeUnit.MILLISECONDS);
                this.i = null;
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            } catch (TimeoutException e3) {
                this.i.cancel(true);
            }
        }
        return this.g;
    }

    public final int n() {
        if (this.m != null) {
            return agp.a();
        }
        return Integer.MIN_VALUE;
    }
}
