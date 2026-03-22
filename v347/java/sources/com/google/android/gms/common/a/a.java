package com.google.android.gms.common.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class a<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f3311c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static InterfaceC0067a f3312d = null;
    private static int e = 0;
    private static String f = "com.google.android.providers.gsf.permission.READ_GSERVICES";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f3313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final T f3314b;
    private T g = null;

    /* JADX INFO: renamed from: com.google.android.gms.common.a.a$a, reason: collision with other inner class name */
    private interface InterfaceC0067a {
    }

    protected a(String str, T t) {
        this.f3313a = str;
        this.f3314b = t;
    }

    public static a<Float> a(String str, Float f2) {
        return new e(str, f2);
    }

    public static a<Integer> a(String str, Integer num) {
        return new d(str, num);
    }

    public static a<Long> a(String str, Long l) {
        return new c(str, l);
    }

    public static a<String> a(String str, String str2) {
        return new f(str, str2);
    }

    public static a<Boolean> a(String str, boolean z) {
        return new b(str, Boolean.valueOf(z));
    }
}
