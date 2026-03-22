package com.c.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum p {
    NO_CACHE(1),
    NO_STORE(2);


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f3165c;

    static boolean a(int i) {
        return (i & NO_CACHE.f3165c) == 0;
    }

    static boolean b(int i) {
        return (i & NO_STORE.f3165c) == 0;
    }

    p(int i) {
        this.f3165c = i;
    }
}
