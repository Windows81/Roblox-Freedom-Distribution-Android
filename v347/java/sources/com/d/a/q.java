package com.d.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum q {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f2511d;

    public static boolean a(int i) {
        return (NO_CACHE.f2511d & i) == 0;
    }

    public static boolean b(int i) {
        return (NO_STORE.f2511d & i) == 0;
    }

    public static boolean c(int i) {
        return (OFFLINE.f2511d & i) != 0;
    }

    q(int i) {
        this.f2511d = i;
    }
}
