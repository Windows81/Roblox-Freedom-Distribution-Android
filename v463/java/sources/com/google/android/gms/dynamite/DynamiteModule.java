package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.dynamite.a;
import com.google.android.gms.dynamite.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class DynamiteModule {
    private static Boolean g;
    private static com.google.android.gms.dynamite.a h;
    private static com.google.android.gms.dynamite.b i;
    private static String j;
    private final Context m;
    private static final ThreadLocal<c> k = new ThreadLocal<>();
    private static final b.a l = new com.google.android.gms.dynamite.c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f3904a = new com.google.android.gms.dynamite.d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3905b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final b f3906c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final b f3907d = new g();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b f3908e = new h();
    public static final b f = new i();

    public static class DynamiteLoaderClassLoader {
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
        public static class C0098b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3909a = 0;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3910b = 0;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f3911c = 0;
        }

        C0098b a(Context context, String str, a aVar) throws a;
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Cursor f3912a;

        private c() {
        }

        /* synthetic */ c(com.google.android.gms.dynamite.c cVar) {
            this();
        }
    }

    private static class d implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f3913a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f3914b = 0;

        public d(int i, int i2) {
            this.f3913a = i;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.a
        public final int a(Context context, String str) {
            return this.f3913a;
        }

        @Override // com.google.android.gms.dynamite.DynamiteModule.b.a
        public final int a(Context context, String str, boolean z) {
            return 0;
        }
    }

    private DynamiteModule(Context context) {
        this.m = (Context) aa.a(context);
    }

    public static int a(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 61);
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".ModuleDescriptor");
            Class<?> clsLoadClass = classLoader.loadClass(sb.toString());
            Field declaredField = clsLoadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = clsLoadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String strValueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(strValueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            Log.e("DynamiteModule", sb2.toString());
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            Log.w("DynamiteModule", sb3.toString());
            return 0;
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(e2.getMessage());
            Log.e("DynamiteModule", strValueOf2.length() != 0 ? "Failed to load module descriptor class: ".concat(strValueOf2) : new String("Failed to load module descriptor class: "));
            return 0;
        }
    }

    public static int a(Context context, String str, boolean z) {
        Class<?> clsLoadClass;
        Field declaredField;
        Boolean bool;
        synchronized (DynamiteModule.class) {
            Boolean bool2 = g;
            if (bool2 == null) {
                try {
                    clsLoadClass = context.getApplicationContext().getClassLoader().loadClass(DynamiteLoaderClassLoader.class.getName());
                    declaredField = clsLoadClass.getDeclaredField("sClassLoader");
                } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e2) {
                    String strValueOf = String.valueOf(e2);
                    StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 30);
                    sb.append("Failed to load module via V2: ");
                    sb.append(strValueOf);
                    Log.w("DynamiteModule", sb.toString());
                    bool2 = Boolean.FALSE;
                }
                synchronized (clsLoadClass) {
                    ClassLoader classLoader = (ClassLoader) declaredField.get(null);
                    if (classLoader != null) {
                        if (classLoader != ClassLoader.getSystemClassLoader()) {
                            try {
                                a(classLoader);
                            } catch (a unused) {
                            }
                            bool = Boolean.TRUE;
                        }
                        bool2 = bool;
                        g = bool2;
                    } else if ("com.google.android.gms".equals(context.getApplicationContext().getPackageName())) {
                        declaredField.set(null, ClassLoader.getSystemClassLoader());
                    } else {
                        try {
                            int iD = d(context, str, z);
                            if (j != null && !j.isEmpty()) {
                                j jVar = new j(j, ClassLoader.getSystemClassLoader());
                                a(jVar);
                                declaredField.set(null, jVar);
                                g = Boolean.TRUE;
                                return iD;
                            }
                            return iD;
                        } catch (a unused2) {
                            declaredField.set(null, ClassLoader.getSystemClassLoader());
                        }
                    }
                    bool = Boolean.FALSE;
                    bool2 = bool;
                    g = bool2;
                }
            }
            if (!bool2.booleanValue()) {
                return c(context, str, z);
            }
            try {
                return d(context, str, z);
            } catch (a e3) {
                String strValueOf2 = String.valueOf(e3.getMessage());
                Log.w("DynamiteModule", strValueOf2.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf2) : new String("Failed to retrieve remote module version: "));
                return 0;
            }
        }
    }

    private static Context a(Context context, String str, int i2, Cursor cursor, com.google.android.gms.dynamite.b bVar) {
        try {
            return (Context) com.google.android.gms.c.b.a(bVar.a(com.google.android.gms.c.b.a(context), str, i2, com.google.android.gms.c.b.a(cursor)));
        } catch (Exception e2) {
            String strValueOf = String.valueOf(e2.toString());
            Log.e("DynamiteModule", strValueOf.length() != 0 ? "Failed to load DynamiteLoader: ".concat(strValueOf) : new String("Failed to load DynamiteLoader: "));
            return null;
        }
    }

    public static Uri a(String str, boolean z) {
        String str2 = z ? "api_force_staging" : "api";
        StringBuilder sb = new StringBuilder(str2.length() + 42 + String.valueOf(str).length());
        sb.append("content://com.google.android.gms.chimera/");
        sb.append(str2);
        sb.append("/");
        sb.append(str);
        return Uri.parse(sb.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007e A[DONT_GENERATE, PHI: r10
  0x007e: PHI (r10v9 com.google.android.gms.dynamite.DynamiteModule) = 
  (r10v5 com.google.android.gms.dynamite.DynamiteModule)
  (r10v6 com.google.android.gms.dynamite.DynamiteModule)
  (r10v10 com.google.android.gms.dynamite.DynamiteModule)
 binds: [B:38:0x00d1, B:25:0x0095, B:17:0x007c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.google.android.gms.dynamite.DynamiteModule a(android.content.Context r10, com.google.android.gms.dynamite.DynamiteModule.b r11, java.lang.String r12) throws com.google.android.gms.dynamite.DynamiteModule.a {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.a(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$b, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    private static DynamiteModule a(Context context, String str, int i2) throws a {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = g;
        }
        if (bool != null) {
            return bool.booleanValue() ? c(context, str, i2) : b(context, str, i2);
        }
        throw new a("Failed to determine which loading route to use.", (com.google.android.gms.dynamite.c) null);
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
                com.google.android.gms.dynamite.a aVarA = a.AbstractBinderC0099a.a((IBinder) context.createPackageContext("com.google.android.gms", 3).getClassLoader().loadClass("com.google.android.gms.chimera.container.DynamiteLoaderImpl").newInstance());
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

    private static void a(ClassLoader classLoader) throws a {
        try {
            i = b.a.a((IBinder) classLoader.loadClass("com.google.android.gms.dynamiteloader.DynamiteLoaderV2").getConstructor(new Class[0]).newInstance(new Object[0]));
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
            throw new a("Failed to instantiate dynamite loader", e2, null);
        }
    }

    public static Cursor b(Context context, String str, boolean z) {
        return context.getContentResolver().query(a(str, z), null, null, null, null);
    }

    private static DynamiteModule b(Context context, String str) {
        String strValueOf = String.valueOf(str);
        Log.i("DynamiteModule", strValueOf.length() != 0 ? "Selected local version of ".concat(strValueOf) : new String("Selected local version of "));
        return new DynamiteModule(context.getApplicationContext());
    }

    private static DynamiteModule b(Context context, String str, int i2) throws a {
        String str2 = "Failed to load remote module.";
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i2);
        Log.i("DynamiteModule", sb.toString());
        com.google.android.gms.dynamite.a aVarA = a(context);
        com.google.android.gms.dynamite.c cVar = null;
        if (aVarA == null) {
            throw new a("Failed to create IDynamiteLoader.", cVar);
        }
        try {
            com.google.android.gms.c.a aVarA2 = aVarA.a(com.google.android.gms.c.b.a(context), str, i2);
            if (com.google.android.gms.c.b.a(aVarA2) != null) {
                return new DynamiteModule((Context) com.google.android.gms.c.b.a(aVarA2));
            }
            throw new a(str2, cVar);
        } catch (RemoteException e2) {
            throw new a(str2, e2, cVar);
        }
    }

    private static int c(Context context, String str, boolean z) {
        com.google.android.gms.dynamite.a aVarA = a(context);
        if (aVarA == null) {
            return 0;
        }
        try {
            return aVarA.a(com.google.android.gms.c.b.a(context), str, z);
        } catch (RemoteException e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.w("DynamiteModule", strValueOf.length() != 0 ? "Failed to retrieve remote module version: ".concat(strValueOf) : new String("Failed to retrieve remote module version: "));
            return 0;
        }
    }

    private static DynamiteModule c(Context context, String str, int i2) throws a {
        com.google.android.gms.dynamite.b bVar;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i2);
        Log.i("DynamiteModule", sb.toString());
        synchronized (DynamiteModule.class) {
            bVar = i;
        }
        com.google.android.gms.dynamite.c cVar = null;
        if (bVar == null) {
            throw new a("DynamiteLoaderV2 was not cached.", cVar);
        }
        c cVar2 = k.get();
        if (cVar2 == null || cVar2.f3912a == null) {
            throw new a("No result cursor", cVar);
        }
        Context contextA = a(context.getApplicationContext(), str, i2, cVar2.f3912a, bVar);
        if (contextA != null) {
            return new DynamiteModule(contextA);
        }
        throw new a("Failed to get module context", cVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0060  */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.dynamite.c] */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int d(android.content.Context r2, java.lang.String r3, boolean r4) throws java.lang.Throwable {
        /*
            r0 = 0
            android.database.Cursor r2 = b(r2, r3, r4)     // Catch: java.lang.Throwable -> L4b java.lang.Exception -> L4d
            if (r2 == 0) goto L3a
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            if (r3 == 0) goto L3a
            r3 = 0
            int r3 = r2.getInt(r3)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            if (r3 <= 0) goto L33
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r4 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r4)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            r1 = 2
            java.lang.String r1 = r2.getString(r1)     // Catch: java.lang.Throwable -> L30
            com.google.android.gms.dynamite.DynamiteModule.j = r1     // Catch: java.lang.Throwable -> L30
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L30
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$c> r4 = com.google.android.gms.dynamite.DynamiteModule.k     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            java.lang.Object r4 = r4.get()     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            com.google.android.gms.dynamite.DynamiteModule$c r4 = (com.google.android.gms.dynamite.DynamiteModule.c) r4     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            if (r4 == 0) goto L33
            android.database.Cursor r1 = r4.f3912a     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            if (r1 != 0) goto L33
            r4.f3912a = r2     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            goto L34
        L30:
            r3 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L30
            throw r3     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
        L33:
            r0 = r2
        L34:
            if (r0 == 0) goto L39
            r0.close()
        L39:
            return r3
        L3a:
            java.lang.String r3 = "DynamiteModule"
            java.lang.String r4 = "Failed to retrieve remote module version."
            android.util.Log.w(r3, r4)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            com.google.android.gms.dynamite.DynamiteModule$a r3 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            java.lang.String r4 = "Failed to connect to dynamite module ContentResolver."
            r3.<init>(r4, r0)     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
            throw r3     // Catch: java.lang.Exception -> L49 java.lang.Throwable -> L5c
        L49:
            r3 = move-exception
            goto L4f
        L4b:
            r3 = move-exception
            goto L5e
        L4d:
            r3 = move-exception
            r2 = r0
        L4f:
            boolean r4 = r3 instanceof com.google.android.gms.dynamite.DynamiteModule.a     // Catch: java.lang.Throwable -> L5c
            if (r4 == 0) goto L54
            throw r3     // Catch: java.lang.Throwable -> L5c
        L54:
            com.google.android.gms.dynamite.DynamiteModule$a r4 = new com.google.android.gms.dynamite.DynamiteModule$a     // Catch: java.lang.Throwable -> L5c
            java.lang.String r1 = "V2 version check failed"
            r4.<init>(r1, r3, r0)     // Catch: java.lang.Throwable -> L5c
            throw r4     // Catch: java.lang.Throwable -> L5c
        L5c:
            r3 = move-exception
            r0 = r2
        L5e:
            if (r0 == 0) goto L63
            r0.close()
        L63:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.d(android.content.Context, java.lang.String, boolean):int");
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
