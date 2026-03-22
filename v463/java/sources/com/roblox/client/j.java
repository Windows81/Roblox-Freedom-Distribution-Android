package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import com.b.a.a.a;
import com.roblox.engine.jni.NativeSettingsInterface;
import java.io.File;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class j {
    private static j h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6392a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6393b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6394c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6395d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6396e = "0";
    private String f = "0";
    private ScheduledThreadPoolExecutor g;

    public interface b {
        void a(boolean z);
    }

    public enum a {
        UNKNOWN,
        ARM32,
        ARM64,
        X86_64;

        public static a a(int i) {
            if (i == 1) {
                return ARM32;
            }
            if (i == 2) {
                return ARM64;
            }
            if (i == 3) {
                return X86_64;
            }
            return UNKNOWN;
        }
    }

    private j() {
    }

    public static j a() {
        j jVar = h;
        if (jVar != null) {
            return jVar;
        }
        synchronized (j.class) {
            if (h == null) {
                h = new j();
            }
        }
        return h;
    }

    public void a(long j) {
        this.f6395d = j;
        b(j);
        this.f6396e = "0";
        if (com.roblox.client.b.ab()) {
            this.f = NativeSettingsInterface.nativeGetDeviceHandleV2(String.valueOf(j));
            if (this.g == null) {
                com.roblox.client.ae.k.c("DeviceTools", "setBrowserTrackerId: Create a new executor to update DeviceHandleV2");
                long jAc = com.roblox.client.b.ac();
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                this.g = scheduledThreadPoolExecutor;
                scheduledThreadPoolExecutor.scheduleAtFixedRate(new Runnable() { // from class: com.roblox.client.j.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.client.ae.k.c("DeviceTools", "[DeviceHandle] Executor::run: ");
                        long jB = j.this.b();
                        if (jB == -1) {
                            return;
                        }
                        String strNativeGetDeviceHandleV2 = NativeSettingsInterface.nativeGetDeviceHandleV2(String.valueOf(jB));
                        j.this.f = strNativeGetDeviceHandleV2;
                        com.roblox.platform.http.h.b().a(u.f(), "_ablm=" + strNativeGetDeviceHandleV2 + "; domain=" + u.f());
                    }
                }, jAc, jAc, TimeUnit.SECONDS);
            }
        }
    }

    public long b() {
        long j = this.f6395d;
        if (j != -1) {
            return j;
        }
        long jL = l();
        this.f6395d = jL;
        return jL;
    }

    public synchronized String c() {
        if (!"0".equals(this.f6396e)) {
            return this.f6396e;
        }
        long jB = b();
        if (jB == -1) {
            return "0";
        }
        String strNativeGetDeviceHandle = NativeSettingsInterface.nativeGetDeviceHandle(String.valueOf(jB));
        this.f6396e = strNativeGetDeviceHandle;
        return strNativeGetDeviceHandle;
    }

    public String d() {
        return "_rbldh=" + c() + "; domain=" + u.f();
    }

    public synchronized String e() {
        return this.f;
    }

    public String f() {
        return "_ablm=" + e() + "; domain=" + u.f();
    }

    public boolean g() {
        return this.f6392a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.roblox.client.j$2] */
    public void a(final b bVar) {
        new AsyncTask<Void, Void, Boolean>() { // from class: com.roblox.client.j.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean doInBackground(Void... voidArr) {
                return Boolean.valueOf(j.this.j() || j.this.k());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Boolean bool) {
                j.this.f6392a = bool.booleanValue();
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(bool.booleanValue());
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        String[] strArr = {"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"};
        for (int i = 0; i < 10; i++) {
            if (new File(strArr[i]).exists()) {
                return true;
            }
        }
        return false;
    }

    private static void b(long j) {
        SharedPreferences sharedPreferencesG = u.g();
        if (sharedPreferencesG != null) {
            sharedPreferencesG.edit().putLong("prefs_key_browser_tracker_id", j).apply();
        } else {
            com.roblox.client.analytics.d.a("SharedPreferences is null when saving BTID", false);
        }
    }

    private static long l() {
        SharedPreferences sharedPreferencesG = u.g();
        if (sharedPreferencesG != null) {
            long j = sharedPreferencesG.getLong("prefs_key_browser_tracker_id", -1L);
            if (j == -1) {
                com.roblox.client.analytics.d.a("BTID is invalid even from preferences", false);
            }
            return j;
        }
        com.roblox.client.analytics.d.a("SharedPreferences is null when getting BTID", false);
        return -1L;
    }

    public boolean h() {
        return this.f6394c;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.roblox.client.j$3] */
    public void a(final Context context) {
        if (com.roblox.client.b.bx()) {
            new AsyncTask<Void, Void, Boolean>() { // from class: com.roblox.client.j.3
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onPostExecute(Boolean bool) {
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.os.AsyncTask
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Boolean doInBackground(Void... voidArr) {
                    j.this.a(context, (a.InterfaceC0068a) null);
                    return Boolean.valueOf(j.this.f6394c);
                }
            }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public void a(Context context, final a.InterfaceC0068a interfaceC0068a) {
        if (!this.f6393b) {
            com.b.a.a.a.a(context).a(false).a(new a.InterfaceC0068a() { // from class: com.roblox.client.j.4
                @Override // com.b.a.a.a.InterfaceC0068a
                public void a(boolean z) {
                    j.this.f6393b = true;
                    j.this.f6394c = z;
                    a.InterfaceC0068a interfaceC0068a2 = interfaceC0068a;
                    if (interfaceC0068a2 != null) {
                        interfaceC0068a2.a(j.this.f6394c);
                    }
                }
            });
        } else if (interfaceC0068a != null) {
            interfaceC0068a.a(this.f6394c);
        }
    }

    public a i() {
        return a.a(NativeSettingsInterface.getRunningArchitecture());
    }
}
