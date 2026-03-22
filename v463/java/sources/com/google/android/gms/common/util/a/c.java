package com.google.android.gms.common.util.a;

import com.google.android.gms.common.internal.aa;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3866a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3867b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AtomicInteger f3868c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadFactory f3869d;

    public c(String str) {
        this(str, 0);
    }

    public c(String str, int i) {
        this.f3868c = new AtomicInteger();
        this.f3869d = Executors.defaultThreadFactory();
        this.f3866a = (String) aa.a(str, (Object) "Name must not be null");
        this.f3867b = i;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread threadNewThread = this.f3869d.newThread(new d(runnable, this.f3867b));
        String str = this.f3866a;
        int andIncrement = this.f3868c.getAndIncrement();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append("[");
        sb.append(andIncrement);
        sb.append("]");
        threadNewThread.setName(sb.toString());
        return threadNewThread;
    }
}
