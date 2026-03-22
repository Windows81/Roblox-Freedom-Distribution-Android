package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.internal.b;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.util.m;
import com.google.android.gms.common.util.n;
import com.google.firebase.components.k;
import com.google.firebase.components.l;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {
    private final Context i;
    private final String j;
    private final com.google.firebase.c k;
    private final l l;
    private final SharedPreferences m;
    private final com.google.firebase.a.c n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List<String> f5124b = Arrays.asList("com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final List<String> f5125c = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<String> f5126d = Arrays.asList("com.google.android.gms.measurement.AppMeasurement");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final List<String> f5127e = Arrays.asList(new String[0]);
    private static final Set<String> f = Collections.emptySet();
    private static final Object g = new Object();
    private static final Executor h = new c(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Map<String, b> f5123a = new androidx.c.a();
    private final AtomicBoolean o = new AtomicBoolean(false);
    private final AtomicBoolean p = new AtomicBoolean();
    private final List<Object> r = new CopyOnWriteArrayList();
    private final List<a> s = new CopyOnWriteArrayList();
    private final List<Object> t = new CopyOnWriteArrayList();
    private InterfaceC0113b u = new com.google.firebase.c.a();
    private final AtomicBoolean q = new AtomicBoolean(h());

    public interface a {
        void a(boolean z);
    }

    /* JADX INFO: renamed from: com.google.firebase.b$b, reason: collision with other inner class name */
    public interface InterfaceC0113b {
    }

    public Context a() {
        i();
        return this.i;
    }

    public String b() {
        i();
        return this.j;
    }

    public com.google.firebase.c c() {
        i();
        return this.k;
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.j.equals(((b) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.j.hashCode();
    }

    public String toString() {
        return y.a(this).a("name", this.j).a("options", this.k).toString();
    }

    public static b d() {
        b bVar;
        synchronized (g) {
            bVar = f5123a.get("[DEFAULT]");
            if (bVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + n.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return bVar;
    }

    public static b a(Context context) {
        synchronized (g) {
            if (f5123a.containsKey("[DEFAULT]")) {
                return d();
            }
            com.google.firebase.c cVarA = com.google.firebase.c.a(context);
            if (cVarA == null) {
                return null;
            }
            return a(context, cVarA);
        }
    }

    public static b a(Context context, com.google.firebase.c cVar) {
        return a(context, cVar, "[DEFAULT]");
    }

    public static void a(boolean z) {
        synchronized (g) {
            for (b bVar : new ArrayList(f5123a.values())) {
                if (bVar.o.get()) {
                    bVar.b(z);
                }
            }
        }
    }

    public <T> T a(Class<T> cls) {
        i();
        return (T) this.l.a(cls);
    }

    public boolean e() {
        i();
        return this.q.get();
    }

    protected b(Context context, String str, com.google.firebase.c cVar) {
        this.i = (Context) aa.a(context);
        this.j = aa.a(str);
        this.k = (com.google.firebase.c) aa.a(cVar);
        this.m = context.getSharedPreferences("com.google.firebase.common.prefs", 0);
        l lVar = new l(h, k.a(context).a(), com.google.firebase.components.a.a(context, Context.class, new Class[0]), com.google.firebase.components.a.a(this, b.class, new Class[0]), com.google.firebase.components.a.a(cVar, com.google.firebase.c.class, new Class[0]));
        this.l = lVar;
        this.n = (com.google.firebase.a.c) lVar.a(com.google.firebase.a.c.class);
    }

    private boolean h() {
        ApplicationInfo applicationInfo;
        if (this.m.contains("firebase_data_collection_default_enabled")) {
            return this.m.getBoolean("firebase_data_collection_default_enabled", true);
        }
        try {
            PackageManager packageManager = this.i.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.i.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return true;
    }

    private void i() {
        aa.a(!this.p.get(), "FirebaseApp was deleted");
    }

    public boolean f() {
        return "[DEFAULT]".equals(b());
    }

    private void b(boolean z) {
        Log.d("FirebaseApp", "Notifying background state change listeners.");
        Iterator<a> it = this.s.iterator();
        while (it.hasNext()) {
            it.next().a(z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        boolean zB = androidx.core.a.b.b(this.i);
        if (zB) {
            d.a(this.i);
        } else {
            this.l.a(f());
        }
        a(b.class, this, f5124b, zB);
        if (f()) {
            a(b.class, this, f5125c, zB);
            a(Context.class, this.i, f5126d, zB);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void a(Class<T> cls, T t, Iterable<String> iterable, boolean z) {
        for (String str : iterable) {
            if (z) {
                try {
                } catch (ClassNotFoundException unused) {
                    if (f.contains(str)) {
                        throw new IllegalStateException(str + " is missing, but is required. Check if it has been removed by Proguard.");
                    }
                    Log.d("FirebaseApp", str + " is not linked. Skipping initialization.");
                } catch (IllegalAccessException e2) {
                    Log.wtf("FirebaseApp", "Failed to initialize " + str, e2);
                } catch (NoSuchMethodException unused2) {
                    throw new IllegalStateException(str + "#getInstance has been removed by Proguard. Add keep rule to prevent it.");
                } catch (InvocationTargetException e3) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e3);
                }
                if (f5127e.contains(str)) {
                }
            }
            Method method = Class.forName(str).getMethod("getInstance", cls);
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, t);
            }
        }
    }

    static class d extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static AtomicReference<d> f5129a = new AtomicReference<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Context f5130b;

        private d(Context context) {
            this.f5130b = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (b.g) {
                Iterator<b> it = b.f5123a.values().iterator();
                while (it.hasNext()) {
                    it.next().j();
                }
            }
            this.f5130b.unregisterReceiver(this);
        }

        static /* synthetic */ void a(Context context) {
            if (f5129a.get() == null) {
                d dVar = new d(context);
                if (f5129a.compareAndSet(null, dVar)) {
                    context.registerReceiver(dVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }
    }

    static class c implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final Handler f5128a = new Handler(Looper.getMainLooper());

        private c() {
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            f5128a.post(runnable);
        }
    }

    public static b a(Context context, com.google.firebase.c cVar, String str) {
        b bVar;
        if (m.a() && (context.getApplicationContext() instanceof Application)) {
            com.google.android.gms.common.api.internal.b.a((Application) context.getApplicationContext());
            com.google.android.gms.common.api.internal.b.a().a(new b.a() { // from class: com.google.firebase.b.1
                @Override // com.google.android.gms.common.api.internal.b.a
                public final void a(boolean z) {
                    b.a(z);
                }
            });
        }
        String strTrim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (g) {
            aa.a(!f5123a.containsKey(strTrim), "FirebaseApp name " + strTrim + " already exists!");
            aa.a(context, "Application context cannot be null.");
            bVar = new b(context, strTrim, cVar);
            f5123a.put(strTrim, bVar);
        }
        bVar.j();
        return bVar;
    }
}
