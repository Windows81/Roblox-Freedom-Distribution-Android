package com.roblox.platform.http;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f7725a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f7726b;

    public static void a(a aVar) {
        synchronized (f7725a) {
            f7726b = aVar;
        }
    }

    public static a a() {
        synchronized (f7725a) {
            if (f7726b != null) {
                return f7726b;
            }
            b bVar = new b();
            f7726b = bVar;
            return bVar;
        }
    }
}
