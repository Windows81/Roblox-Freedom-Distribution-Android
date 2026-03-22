package com.google.android.gms.a.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.f;
import com.google.android.gms.common.i;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.a.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@ParametersAreNonnullByDefault
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.common.a f3226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f3227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3228c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f3229d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f3230e;
    private final Context f;
    private final boolean g;
    private final long h;

    /* JADX INFO: renamed from: com.google.android.gms.a.a.a$a, reason: collision with other inner class name */
    public static final class C0076a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f3231a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f3232b;

        public C0076a(String str, boolean z) {
            this.f3231a = str;
            this.f3232b = z;
        }

        public final String a() {
            return this.f3231a;
        }

        public final boolean b() {
            return this.f3232b;
        }

        public final String toString() {
            String str = this.f3231a;
            boolean z = this.f3232b;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    static class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CountDownLatch f3233a = new CountDownLatch(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f3234b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<a> f3235c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f3236d;

        public b(a aVar, long j) {
            this.f3235c = new WeakReference<>(aVar);
            this.f3236d = j;
            start();
        }

        private final void a() {
            a aVar = this.f3235c.get();
            if (aVar != null) {
                aVar.b();
                this.f3234b = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f3233a.await(this.f3236d, TimeUnit.MILLISECONDS)) {
                    return;
                }
                a();
            } catch (InterruptedException unused) {
                a();
            }
        }
    }

    private a(Context context, long j, boolean z, boolean z2) {
        Context applicationContext;
        aa.a(context);
        if (z && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f = context;
        this.f3228c = false;
        this.h = j;
        this.g = z2;
    }

    public static C0076a a(Context context) throws IllegalStateException, IOException, i, j {
        c cVar = new c(context);
        boolean zA = cVar.a("gads:ad_id_app_context:enabled", false);
        float fA = cVar.a("gads:ad_id_app_context:ping_ratio", 0.0f);
        String strA = cVar.a("gads:ad_id_use_shared_preference:experiment_id", "");
        a aVar = new a(context, -1L, zA, cVar.a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            aVar.b(false);
            C0076a c0076aA = aVar.a();
            aVar.a(c0076aA, zA, fA, SystemClock.elapsedRealtime() - jElapsedRealtime, strA, null);
            return c0076aA;
        } finally {
        }
    }

    private static com.google.android.gms.common.a a(Context context, boolean z) throws IOException, i, j {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int iB = f.b().b(context, 12451000);
            if (iB != 0 && iB != 2) {
                throw new IOException("Google Play services not available");
            }
            String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : "com.google.android.gms.ads.identifier.service.START";
            com.google.android.gms.common.a aVar = new com.google.android.gms.common.a();
            Intent intent = new Intent(str);
            intent.setPackage("com.google.android.gms");
            try {
                if (com.google.android.gms.common.stats.a.a().a(context, intent, aVar, 1)) {
                    return aVar;
                }
                throw new IOException("Connection failure");
            } catch (Throwable th) {
                throw new IOException(th);
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new i(9);
        }
    }

    private static e a(Context context, com.google.android.gms.common.a aVar) throws IOException {
        try {
            return com.google.android.gms.internal.a.f.a(aVar.a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    public static void a(boolean z) {
    }

    private final boolean a(C0076a c0076a, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("app_context", z ? "1" : "0");
        if (c0076a != null) {
            map.put("limit_ad_tracking", c0076a.b() ? "1" : "0");
        }
        if (c0076a != null && c0076a.a() != null) {
            map.put("ad_id_size", Integer.toString(c0076a.a().length()));
        }
        if (th != null) {
            map.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            map.put("experiment_id", str);
        }
        map.put("tag", "AdvertisingIdClient");
        map.put("time_spent", Long.toString(j));
        new com.google.android.gms.a.a.b(this, map).start();
        return true;
    }

    private final void b(boolean z) throws IllegalStateException, IOException, i, j {
        aa.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f3228c) {
                b();
            }
            com.google.android.gms.common.a aVarA = a(this.f, this.g);
            this.f3226a = aVarA;
            this.f3227b = a(this.f, aVarA);
            this.f3228c = true;
            if (z) {
                c();
            }
        }
    }

    private final void c() {
        synchronized (this.f3229d) {
            if (this.f3230e != null) {
                this.f3230e.f3233a.countDown();
                try {
                    this.f3230e.join();
                } catch (InterruptedException unused) {
                }
            }
            if (this.h > 0) {
                this.f3230e = new b(this, this.h);
            }
        }
    }

    public C0076a a() throws IOException {
        C0076a c0076a;
        aa.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f3228c) {
                aa.a(this.f3226a);
                aa.a(this.f3227b);
                c0076a = new C0076a(this.f3227b.a(), this.f3227b.a(true));
            } else {
                synchronized (this.f3229d) {
                    if (this.f3230e == null || !this.f3230e.f3234b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    b(false);
                    if (!this.f3228c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    aa.a(this.f3226a);
                    aa.a(this.f3227b);
                    try {
                        c0076a = new C0076a(this.f3227b.a(), this.f3227b.a(true));
                    } catch (RemoteException e2) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e2);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e3) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e3);
                }
            }
        }
        c();
        return c0076a;
    }

    public final void b() {
        aa.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f == null || this.f3226a == null) {
                return;
            }
            try {
                if (this.f3228c) {
                    com.google.android.gms.common.stats.a.a().a(this.f, this.f3226a);
                }
            } catch (Throwable th) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
            }
            this.f3228c = false;
            this.f3227b = null;
            this.f3226a = null;
        }
    }

    protected void finalize() throws Throwable {
        b();
        super.finalize();
    }
}
