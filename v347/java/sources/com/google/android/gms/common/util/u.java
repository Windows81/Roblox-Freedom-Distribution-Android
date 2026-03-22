package com.google.android.gms.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f3569a = Process.myUid();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Method f3570b = a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Method f3571c = b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f3572d = c();
    private static final Method e = d();
    private static final Method f = e();
    private static final Method g = f();
    private static final Method h = g();

    public static int a(WorkSource workSource) {
        if (f3572d != null) {
            try {
                return ((Integer) f3572d.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
        return 0;
    }

    public static WorkSource a(int i, String str) {
        WorkSource workSource = new WorkSource();
        a(workSource, i, str);
        return workSource;
    }

    public static WorkSource a(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfoA = com.google.android.gms.common.c.c.b(context).a(str, 0);
            if (applicationInfoA != null) {
                return a(applicationInfoA.uid, str);
            }
            String strValueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(strValueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf2.length() != 0 ? "Could not find package: ".concat(strValueOf2) : new String("Could not find package: "));
            return null;
        }
    }

    public static WorkSource a(Context context, String str, String str2) {
        WorkSource workSource = null;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w("WorkSourceUtil", "Unexpected null arguments");
        } else {
            int iB = b(context, str);
            if (iB >= 0) {
                workSource = new WorkSource();
                if (g == null || h == null) {
                    a(workSource, iB, str);
                } else {
                    try {
                        Object objInvoke = g.invoke(workSource, new Object[0]);
                        if (iB != f3569a) {
                            h.invoke(objInvoke, Integer.valueOf(iB), str);
                        }
                        h.invoke(objInvoke, Integer.valueOf(f3569a), str2);
                    } catch (Exception e2) {
                        Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e2);
                    }
                }
            }
        }
        return workSource;
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1096)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1050)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:117)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:178)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:131)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:68)
     */
    public static String a(WorkSource workSource, int i) {
        if (f != null) {
            try {
                return (String) f.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
        return null;
    }

    private static Method a() {
        try {
            return WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception e2) {
            return null;
        }
    }

    public static void a(WorkSource workSource, int i, String str) {
        if (f3571c != null) {
            if (str == null) {
                str = "";
            }
            try {
                f3571c.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
                return;
            }
        }
        if (f3570b != null) {
            try {
                f3570b.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e3) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e3);
            }
        }
    }

    public static boolean a(Context context) {
        return (context == null || context.getPackageManager() == null || com.google.android.gms.common.c.c.b(context).a("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    private static int b(Context context, String str) {
        try {
            ApplicationInfo applicationInfoA = com.google.android.gms.common.c.c.b(context).a(str, 0);
            if (applicationInfoA != null) {
                return applicationInfoA.uid;
            }
            String strValueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(strValueOf) : new String("Could not get applicationInfo from package: "));
            return -1;
        } catch (PackageManager.NameNotFoundException e2) {
            String strValueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", strValueOf2.length() != 0 ? "Could not find package: ".concat(strValueOf2) : new String("Could not find package: "));
            return -1;
        }
    }

    private static Method b() {
        if (!n.f()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("add", Integer.TYPE, String.class);
        } catch (Exception e2) {
            return null;
        }
    }

    public static List<String> b(WorkSource workSource) {
        int iA = workSource == null ? 0 : a(workSource);
        if (iA == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < iA; i++) {
            String strA = a(workSource, i);
            if (!r.b(strA)) {
                arrayList.add(strA);
            }
        }
        return arrayList;
    }

    private static Method c() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e2) {
            return null;
        }
    }

    private static Method d() {
        try {
            return WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e2) {
            return null;
        }
    }

    private static Method e() {
        if (!n.f()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("getName", Integer.TYPE);
        } catch (Exception e2) {
            return null;
        }
    }

    private static final Method f() {
        if (!n.m()) {
            return null;
        }
        try {
            return WorkSource.class.getMethod("createWorkChain", new Class[0]);
        } catch (Exception e2) {
            Log.w("WorkSourceUtil", "Missing WorkChain API createWorkChain", e2);
            return null;
        }
    }

    @SuppressLint({"PrivateApi"})
    private static final Method g() {
        if (!n.m()) {
            return null;
        }
        try {
            return Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
        } catch (Exception e2) {
            Log.w("WorkSourceUtil", "Missing WorkChain class", e2);
            return null;
        }
    }
}
