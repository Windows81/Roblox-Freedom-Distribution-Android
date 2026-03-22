package com.google.android.gms.common.c;

import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static InterfaceC0087a f3691a;

    /* JADX INFO: renamed from: com.google.android.gms.common.c.a$a, reason: collision with other inner class name */
    public interface InterfaceC0087a {
        ScheduledExecutorService a();
    }

    public static synchronized InterfaceC0087a a() {
        if (f3691a == null) {
            f3691a = b();
        }
        return f3691a;
    }

    public static InterfaceC0087a b() {
        return new b();
    }
}
