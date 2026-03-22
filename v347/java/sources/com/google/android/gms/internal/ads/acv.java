package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class acv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final act f3806a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final act f3807b = new acu();

    static act a() {
        return f3806a;
    }

    static act b() {
        return f3807b;
    }

    private static act c() {
        try {
            return (act) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
