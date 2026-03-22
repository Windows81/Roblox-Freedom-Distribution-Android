package org.greenrobot.eventbus;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {
    private static final ExecutorService k = Executors.newCachedThreadPool();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f7973e;
    boolean g;
    boolean h;
    List<org.greenrobot.eventbus.a.b> j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f7969a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f7970b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f7971c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    boolean f7972d = true;
    boolean f = true;
    ExecutorService i = k;

    d() {
    }

    public c a() {
        return new c(this);
    }
}
