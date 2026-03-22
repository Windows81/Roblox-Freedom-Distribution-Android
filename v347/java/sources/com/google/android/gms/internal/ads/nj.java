package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class nj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f5346a = new nk();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Executor f5347b = new nl();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final ni f5348c = a(f5346a);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ni f5349d = a(f5347b);

    public static ni a(Executor executor) {
        return new nm(executor, null);
    }
}
