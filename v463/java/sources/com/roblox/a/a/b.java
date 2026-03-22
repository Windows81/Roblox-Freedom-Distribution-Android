package com.roblox.a.a;

import org.greenrobot.eventbus.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f5520a;

    private b() {
    }

    public static c a() {
        if (f5520a == null) {
            synchronized (b.class) {
                if (f5520a == null) {
                    f5520a = c.b().a();
                }
            }
        }
        return f5520a;
    }
}
