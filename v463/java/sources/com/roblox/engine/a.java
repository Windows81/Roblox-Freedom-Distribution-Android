package com.roblox.engine;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static InterfaceC0182a f7578a;

    /* JADX INFO: renamed from: com.roblox.engine.a$a, reason: collision with other inner class name */
    public interface InterfaceC0182a {
        boolean a();

        boolean b();

        int c();

        boolean d();

        boolean e();
    }

    public static void a(InterfaceC0182a interfaceC0182a) {
        f7578a = interfaceC0182a;
    }

    public static boolean a() {
        return f7578a.a();
    }

    public static boolean b() {
        return f7578a.b();
    }

    public static int c() {
        return f7578a.c();
    }

    public static boolean d() {
        return f7578a.d();
    }

    public static boolean e() {
        return f7578a.e();
    }
}
