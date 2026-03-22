package com.d.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum p {
    NO_CACHE(1),
    NO_STORE(2);


    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f2507c;

    static boolean a(int i) {
        return (NO_CACHE.f2507c & i) == 0;
    }

    static boolean b(int i) {
        return (NO_STORE.f2507c & i) == 0;
    }

    p(int i) {
        this.f2507c = i;
    }
}
