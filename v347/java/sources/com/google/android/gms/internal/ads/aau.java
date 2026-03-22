package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aau {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final aas<?> f3721a = new aat();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final aas<?> f3722b = c();

    static aas<?> a() {
        return f3721a;
    }

    static aas<?> b() {
        if (f3722b == null) {
            throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
        }
        return f3722b;
    }

    private static aas<?> c() {
        try {
            return (aas) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }
}
