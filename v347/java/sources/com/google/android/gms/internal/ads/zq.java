package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Class<?> f5742a = a("libcore.io.Memory");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final boolean f5743b;

    static {
        f5743b = a("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    static boolean a() {
        return (f5742a == null || f5743b) ? false : true;
    }

    static Class<?> b() {
        return f5742a;
    }
}
