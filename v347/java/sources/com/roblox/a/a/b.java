package com.roblox.a.a;

import org.greenrobot.eventbus.c;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static c f6348a;

    private b() {
    }

    public static c a() {
        if (f6348a == null) {
            synchronized (b.class) {
                if (f6348a == null) {
                    f6348a = c.b().a();
                }
            }
        }
        return f6348a;
    }
}
