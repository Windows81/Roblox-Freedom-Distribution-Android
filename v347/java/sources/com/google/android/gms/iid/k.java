package com.google.android.gms.iid;

import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("SdkFlagFactory.class")
    private static k f3656a;

    k() {
    }

    static synchronized k a() {
        if (f3656a == null) {
            f3656a = new e();
        }
        return f3656a;
    }

    abstract l<Boolean> a(String str, boolean z);
}
