package com.google.android.gms.common.util.a;

import com.google.android.gms.common.internal.aa;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3863a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3864b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ThreadFactory f3865c;

    public b(String str) {
        this(str, 0);
    }

    public b(String str, int i) {
        this.f3865c = Executors.defaultThreadFactory();
        this.f3863a = (String) aa.a(str, (Object) "Name must not be null");
        this.f3864b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f3865c.newThread(new d(runnable, this.f3864b));
        threadNewThread.setName(this.f3863a);
        return threadNewThread;
    }
}
