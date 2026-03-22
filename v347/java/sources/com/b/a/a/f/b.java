package com.b.a.a.f;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2313a;

    static {
        a();
    }

    public static void a() {
        a(new a() { // from class: com.b.a.a.f.b.1
            @Override // com.b.a.a.f.a
            public boolean a() {
                return false;
            }

            @Override // com.b.a.a.f.a
            public void a(String str, Object... objArr) {
            }

            @Override // com.b.a.a.f.a
            public void a(Throwable th, String str, Object... objArr) {
            }

            @Override // com.b.a.a.f.a
            public void b(String str, Object... objArr) {
            }
        });
    }

    public static void a(a aVar) {
        f2313a = aVar;
    }

    public static boolean b() {
        return f2313a.a();
    }

    public static void a(String str, Object... objArr) {
        f2313a.a(str, objArr);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        f2313a.a(th, str, objArr);
    }

    public static void b(String str, Object... objArr) {
        f2313a.b(str, objArr);
    }
}
