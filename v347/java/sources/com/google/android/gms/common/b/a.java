package com.google.android.gms.common.b;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static InterfaceC0073a f3416a;

    /* JADX INFO: renamed from: com.google.android.gms.common.b.a$a, reason: collision with other inner class name */
    public interface InterfaceC0073a {
        ScheduledExecutorService a();
    }

    public static synchronized InterfaceC0073a a() {
        if (f3416a == null) {
            f3416a = b();
        }
        return f3416a;
    }

    public static InterfaceC0073a b() {
        return new b();
    }
}
