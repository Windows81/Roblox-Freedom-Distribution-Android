package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ach {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final acf f3791a = c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final acf f3792b = new acg();

    static acf a() {
        return f3791a;
    }

    static acf b() {
        return f3792b;
    }

    private static acf c() {
        try {
            return (acf) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
