package com.google.android.gms.ads.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.f;
import com.google.android.gms.common.h;
import com.google.android.gms.common.i;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.internal.a.e;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@ParametersAreNonnullByDefault
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.common.a f2932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    private e f2933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f2934c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f2935d;

    @GuardedBy("mAutoDisconnectTaskLock")
    private b e;

    @GuardedBy("this")
    private final Context f;
    private final boolean g;
    private final long h;

    /* JADX INFO: renamed from: com.google.android.gms.ads.a.a$a, reason: collision with other inner class name */
    public static final class C0063a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f2936a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final boolean f2937b;

        public C0063a(String str, boolean z) {
            this.f2936a = str;
            this.f2937b = z;
        }

        public final String a() {
            return this.f2936a;
        }

        public final boolean b() {
            return this.f2937b;
        }

        public final String toString() {
            String str = this.f2936a;
            return new StringBuilder(String.valueOf(str).length() + 7).append("{").append(str).append("}").append(this.f2937b).toString();
        }
    }

    static class b extends Thread {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        CountDownLatch f2938a = new CountDownLatch(1);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f2939b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<a> f2940c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f2941d;

        public b(a aVar, long j) {
            this.f2940c = new WeakReference<>(aVar);
            this.f2941d = j;
            start();
        }

        private final void a() {
            a aVar = this.f2940c.get();
            if (aVar != null) {
                aVar.c();
                this.f2939b = true;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                if (this.f2938a.await(this.f2941d, TimeUnit.MILLISECONDS)) {
                    return;
                }
                a();
            } catch (InterruptedException e) {
                a();
            }
        }
    }

    public a(Context context) {
        this(context, 30000L, false, false);
    }

    private a(Context context, long j, boolean z, boolean z2) {
        this.f2935d = new Object();
        w.a(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            this.f = applicationContext != null ? applicationContext : context;
        } else {
            this.f = context;
        }
        this.f2934c = false;
        this.h = j;
        this.g = z2;
    }

    public static C0063a a(Context context) throws IllegalStateException, IOException, i, h {
        c cVar = new c(context);
        boolean zA = cVar.a("gads:ad_id_app_context:enabled", false);
        float fA = cVar.a("gads:ad_id_app_context:ping_ratio", 0.0f);
        String strA = cVar.a("gads:ad_id_use_shared_preference:experiment_id", "");
        a aVar = new a(context, -1L, zA, cVar.a("gads:ad_id_use_persistent_service:enabled", false));
        try {
            try {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                aVar.a(false);
                C0063a c0063aB = aVar.b();
                aVar.a(c0063aB, zA, fA, SystemClock.elapsedRealtime() - jElapsedRealtime, strA, null);
                return c0063aB;
            } finally {
            }
        } finally {
            aVar.c();
        }
    }

    private static com.google.android.gms.common.a a(Context context, boolean z) throws IOException, i, h {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            switch (f.b().b(context, 12451000)) {
                case 0:
                case 2:
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
                case 1:
                default:
                    throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException e) {
            throw new h(9);
        }
    }

    private static e a(Context context, com.google.android.gms.common.a aVar) throws IOException {
        try {
            return com.google.android.gms.internal.a.f.a(aVar.a(10000L, TimeUnit.MILLISECONDS));
        } catch (InterruptedException e) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private final void a(boolean z) throws IllegalStateException, IOException, i, h {
        w.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f2934c) {
                c();
            }
            this.f2932a = a(this.f, this.g);
            this.f2933b = a(this.f, this.f2932a);
            this.f2934c = true;
            if (z) {
                d();
            }
        }
    }

    private final boolean a(C0063a c0063a, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > f) {
            return false;
        }
        HashMap map = new HashMap();
        map.put("app_context", z ? "1" : "0");
        if (c0063a != null) {
            map.put("limit_ad_tracking", c0063a.b() ? "1" : "0");
        }
        if (c0063a != null && c0063a.a() != null) {
            map.put("ad_id_size", Integer.toString(c0063a.a().length()));
        }
        if (th != null) {
            map.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            map.put("experiment_id", str);
        }
        map.put("tag", "AdvertisingIdClient");
        map.put("time_spent", Long.toString(j));
        new com.google.android.gms.ads.a.b(this, map).start();
        return true;
    }

    public static boolean b(Context context) throws IOException, i, h {
        c cVar = new c(context);
        a aVar = new a(context, -1L, cVar.a("gads:ad_id_app_context:enabled", false), cVar.a("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            aVar.a(false);
            return aVar.e();
        } finally {
            aVar.c();
        }
    }

    private final void d() {
        synchronized (this.f2935d) {
            if (this.e != null) {
                this.e.f2938a.countDown();
                try {
                    this.e.join();
                } catch (InterruptedException e) {
                }
            }
            if (this.h > 0) {
                this.e = new b(this, this.h);
            }
        }
    }

    private final boolean e() throws IOException {
        boolean zB;
        w.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f2934c) {
                w.a(this.f2932a);
                w.a(this.f2933b);
                zB = this.f2933b.b();
            } else {
                synchronized (this.f2935d) {
                    if (this.e == null || !this.e.f2939b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    a(false);
                    if (!this.f2934c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    w.a(this.f2932a);
                    w.a(this.f2933b);
                    try {
                        zB = this.f2933b.b();
                    } catch (RemoteException e) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
        }
        d();
        return zB;
    }

    public void a() throws IllegalStateException, IOException, i, h {
        a(true);
    }

    public C0063a b() throws IOException {
        C0063a c0063a;
        w.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f2934c) {
                w.a(this.f2932a);
                w.a(this.f2933b);
                c0063a = new C0063a(this.f2933b.a(), this.f2933b.a(true));
            } else {
                synchronized (this.f2935d) {
                    if (this.e == null || !this.e.f2939b) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    a(false);
                    if (!this.f2934c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    w.a(this.f2932a);
                    w.a(this.f2933b);
                    try {
                        c0063a = new C0063a(this.f2933b.a(), this.f2933b.a(true));
                    } catch (RemoteException e) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e2) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e2);
                }
            }
        }
        d();
        return c0063a;
    }

    public final void c() {
        w.c("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f == null || this.f2932a == null) {
                return;
            }
            try {
                if (this.f2934c) {
                    com.google.android.gms.common.stats.a.a().a(this.f, this.f2932a);
                }
            } catch (Throwable th) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th);
            }
            this.f2934c = false;
            this.f2933b = null;
            this.f2932a = null;
        }
    }

    protected void finalize() throws Throwable {
        c();
        super.finalize();
    }
}
