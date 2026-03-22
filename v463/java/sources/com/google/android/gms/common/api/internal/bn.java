package com.google.android.gms.common.api.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bn {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ExecutorService f3546a = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new com.google.android.gms.common.util.a.c("GAC_Transform"));

    public static ExecutorService a() {
        return f3546a;
    }
}
