package com.google.android.gms.common.api.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f3518a = Executors.newFixedThreadPool(2, new com.google.android.gms.common.util.a.c("GAC_Executor"));

    public static ExecutorService a() {
        return f3518a;
    }
}
