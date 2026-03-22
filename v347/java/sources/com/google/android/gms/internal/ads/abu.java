package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class abu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final abu f3776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final abu f3777b;

    static {
        abv abvVar = null;
        f3776a = new abw();
        f3777b = new abx();
    }

    private abu() {
    }

    static abu a() {
        return f3776a;
    }

    static abu b() {
        return f3777b;
    }

    abstract <L> List<L> a(Object obj, long j);

    abstract <L> void a(Object obj, Object obj2, long j);

    abstract void b(Object obj, long j);
}
