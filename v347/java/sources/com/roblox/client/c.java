package com.roblox.client;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Build;
import android.webkit.CookieManager;
import com.c.a.a.a;
import com.roblox.platform.DeviceTools;
import java.io.File;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class c {
    private static c h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f6481a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f6482b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6483c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f6484d = -1;
    private String e = "0";
    private String f = "0";
    private ScheduledThreadPoolExecutor g;

    public interface a {
        void a(boolean z);
    }

    private c() {
    }

    public static c a() {
        if (h != null) {
            return h;
        }
        synchronized (c.class) {
            if (h == null) {
                h = new c();
            }
        }
        return h;
    }

    public void a(long j) {
        this.f6484d = j;
        b(j);
        this.e = "0";
        if (b.aD()) {
            this.f = DeviceTools.nativeGetDeviceHandleV2(String.valueOf(j));
            if (this.g == null) {
                com.roblox.client.util.g.c("DeviceTools", "setBrowserTrackerId: Create a new executor to update DeviceHandleV2");
                long jAE = b.aE();
                this.g = new ScheduledThreadPoolExecutor(1);
                this.g.scheduleAtFixedRate(new Runnable() { // from class: com.roblox.client.c.1
                    @Override // java.lang.Runnable
                    public void run() {
                        com.roblox.client.util.g.c("DeviceTools", "[DeviceHandle] Executor::run: ");
                        long jB = c.this.b();
                        if (jB != -1) {
                            String strNativeGetDeviceHandleV2 = DeviceTools.nativeGetDeviceHandleV2(String.valueOf(jB));
                            c.this.f = strNativeGetDeviceHandleV2;
                            CookieManager.getInstance().setCookie(RobloxSettings.getDomain(), "_ablm=" + strNativeGetDeviceHandleV2 + "; domain=" + RobloxSettings.getDomain());
                        }
                    }
                }, jAE, jAE, TimeUnit.SECONDS);
            }
        }
    }

    public long b() {
        if (this.f6484d != -1) {
            return this.f6484d;
        }
        this.f6484d = j();
        return this.f6484d;
    }

    public synchronized String c() {
        String str;
        if (!"0".equals(this.e)) {
            str = this.e;
        } else {
            long jB = b();
            if (jB == -1) {
                str = "0";
            } else {
                this.e = DeviceTools.nativeGetDeviceHandle(String.valueOf(jB));
                str = this.e;
            }
        }
        return str;
    }

    public String d() {
        return "_rbldh=" + c() + "; domain=" + RobloxSettings.getDomain();
    }

    public synchronized String e() {
        return this.f;
    }

    public String f() {
        return "_ablm=" + e() + "; domain=" + RobloxSettings.getDomain();
    }

    public boolean g() {
        return this.f6481a;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.roblox.client.c$2] */
    public void a(final a aVar) {
        new AsyncTask<Void, Void, Boolean>() { // from class: com.roblox.client.c.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Boolean doInBackground(Void... voidArr) {
                return Boolean.valueOf(c.this.h() || c.this.i());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void onPostExecute(Boolean bool) {
                c.this.f6481a = bool.booleanValue();
                if (aVar != null) {
                    aVar.a(bool.booleanValue());
                }
            }
        }.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        String str = Build.TAGS;
        return str != null && str.contains("test-keys");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i() {
        for (String str : new String[]{"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private static void b(long j) {
        SharedPreferences keyValues = RobloxSettings.getKeyValues();
        if (keyValues != null) {
            keyValues.edit().putLong("prefs_key_browser_tracker_id", j).apply();
        } else {
            com.roblox.client.b.c.a("SharedPreferences is null when saving BTID", false);
        }
    }

    private static long j() {
        SharedPreferences keyValues = RobloxSettings.getKeyValues();
        if (keyValues != null) {
            long j = keyValues.getLong("prefs_key_browser_tracker_id", -1L);
            if (j == -1) {
                com.roblox.client.b.c.a("BTID is invalid even from preferences", false);
                return j;
            }
            return j;
        }
        com.roblox.client.b.c.a("SharedPreferences is null when getting BTID", false);
        return -1L;
    }

    public void a(Context context, final a.InterfaceC0053a interfaceC0053a) {
        if (this.f6482b) {
            interfaceC0053a.a(this.f6483c);
        } else {
            com.c.a.a.a.a(context).a(false).a(new a.InterfaceC0053a() { // from class: com.roblox.client.c.3
                @Override // com.c.a.a.a.InterfaceC0053a
                public void a(boolean z) {
                    c.this.f6482b = true;
                    c.this.f6483c = z;
                    interfaceC0053a.a(c.this.f6483c);
                }
            });
        }
    }
}
