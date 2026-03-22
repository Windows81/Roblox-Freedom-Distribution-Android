package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamite.a;
import com.google.android.gms.dynamite.b;
import com.roblox.client.RobloxSettings;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class DynamiteModule {

    @GuardedBy("DynamiteModule.class")
    private static Boolean g;

    @GuardedBy("DynamiteModule.class")
    private static com.google.android.gms.dynamite.a h;

    @GuardedBy("DynamiteModule.class")
    private static com.google.android.gms.dynamite.b i;

    @GuardedBy("DynamiteModule.class")
    private static String j;
    private final Context m;
    private static final ThreadLocal<c> k = new ThreadLocal<>();
    private static final b.a l = new com.google.android.gms.dynamite.c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f3606a = new com.google.android.gms.dynamite.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3607b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f3608c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f3609d = new g();
    public static final b e = new h();
    public static final b f = new i();

    @DynamiteApi
    public static class DynamiteLoaderClassLoader {

        @GuardedBy("DynamiteLoaderClassLoader.class")
        public static ClassLoader sClassLoader;
    }

    public static class a extends Exception {
        private a(String str) {
            super(str);
        }

        /* synthetic */ a(String str, com.google.android.gms.dynamite.c cVar) {
            this(str);
        }

        private a(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ a(String str, Throwable th, com.google.android.gms.dynamite.c cVar) {
            this(str, th);
        }
    }

    public interface b {

        public interface a {
            int a(Context context, String str);

            int a(Context context, String str, boolean z) throws a;
        }

        /* JADX INFO: renamed from: com.google.android.gms.dynamite.DynamiteModule$b$b, reason: collision with other inner class name */
        public static class C0080b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3610a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3611b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f3612c = 0;
        }

        C0080b a(Context context, String str, a aVar) throws a;
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Cursor f3613a;

        private c() {
        }

        /* synthetic */ c(com.google.android.gms.dynamite.c cVar) {
            this();
        }
    }

    private static class d implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3614a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3615b = 0;

        public d(int i, int i2) {
            this.f3614a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.a
        public final int a(Context context, String str) {
            return this.f3614a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.a
        public final int a(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.m = (Context) w.a(context);
    }

    public static int a(Context context, String str) {
        int i2;
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass(new StringBuilder(String.valueOf(str).length() + 61).append("com.google.android.gms.dynamite.descriptors.").append(str).append(".ModuleDescriptor").toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                i2 = declaredField2.getInt(null);
            } else {
                String strValueOf = String.valueOf(declaredField.get(null));
                Log.e("DynamiteModule", new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(str).length()).append("Module descriptor id '").append(strValueOf).append("' didn't match expected id '").append(str).append("'").toString());
                i2 = 0;
            }
            return i2;
        } catch (ClassNotFoundException e2) {
            Log.w("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 45).append("Local module descriptor class for ").append(str).append(" not found.").toString());
            return 0;
        } catch (Exception e3) {
            String strValueOf2 = String.valueOf(e3.getMessage());
            Log.e("DynamiteModule", strValueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(strValueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int a(Context context, String str, boolean z) {
        Class<?> clsLoadClass;
        Field declaredField;
        synchronized (DynamiteModule.class) {
            Boolean bool = g;
            if (bool == null) {
                try {
                    clsLoadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                    declaredField = clsLoadClass.getDeclaredField("sClassLoader");
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                    String strValueOf = String.valueOf(e2);
                    Log.w("DynamiteModule", new StringBuilder(String.valueOf(strValueOf).length() + 30).append("Failed to load module via V2: ").append(strValueOf).toString());
                    bool = Boolean.FALSE;
                }
                synchronized (clsLoadClass) {
                    ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                    if (classLoader != null) {
                        if (classLoader == ClassLoader.getSystemClassLoader()) {
                            bool = Boolean.FALSE;
                        } else {
                            try {
                                a(classLoader);
                            } catch (a e3) {
                            }
                            bool = Boolean.TRUE;
                        }
                    } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                        bool = Boolean.FALSE;
                    } else {
                        try {
                            int iD = d(context, str, z);
                            if (j == null || j.isEmpty()) {
                                return iD;
                            }
                            j jVar = new j(j, ClassLoader.getSystemClassLoader());
                            a(jVar);
                            declaredField.set(null, jVar);
                            g = Boolean.TRUE;
                            return iD;
                        } catch (a e4) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                            bool = Boolean.FALSE;
                        }
                    }
                    g = bool;
                }
            }
            if (!bool.booleanValue()) {
                return c(context, str, z);
            }
            try {
                return d(context, str, z);
            } catch (a e5) {
                String strValueOf2 = String.valueOf(e5.getMessage());
                Log.w("DynamiteModule", strValueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf2) : new String("Failed to retrieve remote module version: "));
                return 0;
            }
        }
    }

    private static Context a(Context context, String str, int i2, Cursor cursor, com.google.android.gms.dynamite.b bVar) {
        try {
            return (Context) com.google.android.gms.b.b.a(bVar.a(com.google.android.gms.b.b.a(context), str, i2, com.google.android.gms.b.b.a(cursor)));
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.toString());
            Log.e("DynamiteModule", strValueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(strValueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    public static Uri a(String str, boolean z) {
        String str2 = z ? "api_force_staging" : RobloxSettings.API_SUB_DOMAIN;
        return Uri.parse(new StringBuilder(String.valueOf(str2).length() + 42 + String.valueOf(str).length()).append("content://com.google.android.gms.chimera/").append(str2).append("/").append(str).toString());
    }

    public static DynamiteModule a(Context context, b bVar, String str) throws a {
        c cVar = k.get();
        c cVar2 = new c(null);
        k.set(cVar2);
        try {
            b.C0080b c0080bA = bVar.a(context, str, l);
            Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str).length()).append("Considering local module ").append(str).append(":").append(c0080bA.f3610a).append(" and remote module ").append(str).append(":").append(c0080bA.f3611b).toString());
            if (c0080bA.f3612c == 0 || ((c0080bA.f3612c == -1 && c0080bA.f3610a == 0) || (c0080bA.f3612c == 1 && c0080bA.f3611b == 0))) {
                throw new a(new StringBuilder(91).append("No acceptable module found. Local version is ").append(c0080bA.f3610a).append(" and remote version is ").append(c0080bA.f3611b).append(".").toString(), (com.google.android.gms.dynamite.c) null);
            }
            if (c0080bA.f3612c == -1) {
                DynamiteModule dynamiteModuleC = c(context, str);
                if (cVar2.f3613a != null) {
                    cVar2.f3613a.close();
                }
                k.set(cVar);
                return dynamiteModuleC;
            }
            if (c0080bA.f3612c != 1) {
                throw new a(new StringBuilder(47).append("VersionPolicy returned invalid code:").append(c0080bA.f3612c).toString(), (com.google.android.gms.dynamite.c) null);
            }
            try {
                DynamiteModule dynamiteModuleA = a(context, str, c0080bA.f3611b);
                if (cVar2.f3613a != null) {
                    cVar2.f3613a.close();
                }
                k.set(cVar);
                return dynamiteModuleA;
            } catch (a e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.w("DynamiteModule", strValueOf.length() != 0 ? "Failed to load remote module: ".concat(strValueOf) : new String("Failed to load remote module: "));
                if (c0080bA.f3610a == 0 || bVar.a(context, str, new d(c0080bA.f3610a, 0)).f3612c != -1) {
                    throw new a("Remote load failed. No local fallback found.", e2, null);
                }
                DynamiteModule dynamiteModuleC2 = c(context, str);
                if (cVar2.f3613a != null) {
                    cVar2.f3613a.close();
                }
                k.set(cVar);
                return dynamiteModuleC2;
            }
        } catch (Throwable th) {
            if (cVar2.f3613a != null) {
                cVar2.f3613a.close();
            }
            k.set(cVar);
            throw th;
        }
    }

    private static DynamiteModule a(Context context, String str, int i2) throws a {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = g;
        }
        if (bool == null) {
            throw new a("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.c) null);
        }
        return bool.booleanValue() ? c(context, str, i2) : b(context, str, i2);
    }

    private static com.google.android.gms.dynamite.a a(Context context) {
        synchronized (DynamiteModule.class) {
            if (h != null) {
                return h;
            }
            if (com.google.android.gms.common.f.b().a(context) != 0) {
                return null;
            }
            try {
                com.google.android.gms.dynamite.a aVarA = a.AbstractBinderC0081a.a((IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance());
                if (aVarA != null) {
                    h = aVarA;
                    return aVarA;
                }
            } catch (Exception e2) {
                String strValueOf = String.valueOf(e2.getMessage());
                Log.e("DynamiteModule", strValueOf.length() != 0 ? "Failed to load IDynamiteLoader from GmsCore: ".concat(strValueOf) : new String("Failed to load IDynamiteLoader from GmsCore: "));
            }
            return null;
        }
    }

    @GuardedBy("DynamiteModule.class")
    private static void a(ClassLoader classLoader) throws a {
        try {
            i = b.a.a((IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new a("Failed to instantiate dynamite loader", e2, null);
        }
    }

    public static int b(Context context, String str) {
        return a(context, str, false);
    }

    public static Cursor b(Context context, String str, boolean z) {
        return context.getContentResolver().query(a(str, z), null, null, null, null);
    }

    private static DynamiteModule b(Context context, String str, int i2) throws a {
        com.google.android.gms.dynamite.c cVar = null;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i2).toString());
        com.google.android.gms.dynamite.a aVarA = a(context);
        if (aVarA == null) {
            throw new a("Failed to create IDynamiteLoader.", cVar);
        }
        try {
            com.google.android.gms.b.a aVarA2 = aVarA.a(com.google.android.gms.b.b.a(context), str, i2);
            if (com.google.android.gms.b.b.a(aVarA2) == null) {
                throw new a("Failed to load remote module.", cVar);
            }
            return new DynamiteModule((Context) com.google.android.gms.b.b.a(aVarA2));
        } catch (RemoteException e2) {
            throw new a("Failed to load remote module.", e2, cVar);
        }
    }

    private static int c(Context context, String str, boolean z) {
        com.google.android.gms.dynamite.a aVarA = a(context);
        if (aVarA == null) {
            return 0;
        }
        try {
            return aVarA.a(com.google.android.gms.b.b.a(context), str, z);
        } catch (RemoteException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.w("DynamiteModule", strValueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static DynamiteModule c(Context context, String str) {
        String strValueOf = String.valueOf(str);
        Log.i("DynamiteModule", strValueOf.length() != 0 ? "Selected local version of ".concat(strValueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static DynamiteModule c(Context context, String str, int i2) throws a {
        com.google.android.gms.dynamite.b bVar;
        com.google.android.gms.dynamite.c cVar = null;
        Log.i("DynamiteModule", new StringBuilder(String.valueOf(str).length() + 51).append("Selected remote version of ").append(str).append(", version >= ").append(i2).toString());
        synchronized (DynamiteModule.class) {
            bVar = i;
        }
        if (bVar == null) {
            throw new a("DynamiteLoaderV2 was not cached.", cVar);
        }
        c cVar2 = k.get();
        if (cVar2 == null || cVar2.f3613a == null) {
            throw new a("No result cursor", cVar);
        }
        Context contextA = a(context.getApplicationContext(), str, i2, cVar2.f3613a, bVar);
        if (contextA == null) {
            throw new a("Failed to get module context", cVar);
        }
        return new DynamiteModule(contextA);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int d(android.content.Context r5, java.lang.String r6, boolean r7) throws java.lang.Throwable {
        /*
            r2 = 0
            android.database.Cursor r1 = b(r5, r6, r7)     // Catch: java.lang.Throwable -> L5f java.lang.Exception -> L62
            if (r1 == 0) goto Ld
            boolean r0 = r1.moveToFirst()     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            if (r0 != 0) goto L2a
        Ld:
            java.lang.String r0 = "DynamiteModule"
            java.lang.String r2 = "Failed to retrieve remote module version."
            android.util.Log.w(r0, r2)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            com.google.android.gms.dynamite.DynamiteModule$a r0 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            java.lang.String r2 = "Failed to connect to dynamite module ContentResolver."
            r3 = 0
            r0.<init>(r2, r3)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            throw r0     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
        L1d:
            r0 = move-exception
        L1e:
            boolean r2 = r0 instanceof com.google.android.gms.dynamite.DynamiteModule.a     // Catch: java.lang.Throwable -> L23
            if (r2 == 0) goto L56
            throw r0     // Catch: java.lang.Throwable -> L23
        L23:
            r0 = move-exception
        L24:
            if (r1 == 0) goto L29
            r1.close()
        L29:
            throw r0
        L2a:
            r0 = 0
            int r3 = r1.getInt(r0)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            if (r3 <= 0) goto L4d
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r4 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r4)     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            r0 = 2
            java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.dynamite.DynamiteModule.j = r0     // Catch: java.lang.Throwable -> L53
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L53
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$c> r0 = com.google.android.gms.dynamite.DynamiteModule.k     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            com.google.android.gms.dynamite.DynamiteModule$c r0 = (com.google.android.gms.dynamite.DynamiteModule.c) r0     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            if (r0 == 0) goto L4d
            android.database.Cursor r4 = r0.f3613a     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            if (r4 != 0) goto L4d
            r0.f3613a = r1     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
            r1 = r2
        L4d:
            if (r1 == 0) goto L52
            r1.close()
        L52:
            return r3
        L53:
            r0 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L53
            throw r0     // Catch: java.lang.Exception -> L1d java.lang.Throwable -> L23
        L56:
            com.google.android.gms.dynamite.DynamiteModule$a r2 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> L23
            java.lang.String r3 = "V2 version check failed"
            r4 = 0
            r2.<init>(r3, r0, r4)     // Catch: java.lang.Throwable -> L23
            throw r2     // Catch: java.lang.Throwable -> L23
        L5f:
            r0 = move-exception
            r1 = r2
            goto L24
        L62:
            r0 = move-exception
            r1 = r2
            goto L1e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.d(android.content.Context, java.lang.String, boolean):int");
    }

    public final Context a() {
        return this.m;
    }

    public final IBinder a(String str) throws a {
        try {
            return (IBinder) this.m.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String strValueOf = String.valueOf(str);
            throw new a(strValueOf.length() != 0 ? "Failed to instantiate module class: ".concat(strValueOf) : new String("Failed to instantiate module class: "), e2, null);
        }
    }
}
