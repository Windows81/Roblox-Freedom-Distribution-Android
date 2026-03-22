package com.c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum q {
    NO_CACHE(1),
    NO_STORE(2),
    OFFLINE(4);


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f3170d;

    public static boolean a(int i) {
        return (i & NO_CACHE.f3170d) == 0;
    }

    public static boolean b(int i) {
        return (i & NO_STORE.f3170d) == 0;
    }

    public static boolean c(int i) {
        return (i & OFFLINE.f3170d) != 0;
    }

    q(int i) {
        this.f3170d = i;
    }
}
