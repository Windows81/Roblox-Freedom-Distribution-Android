package com.birbit.android.jobqueue.log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static CustomLogger f2985a;

    static {
        a();
    }

    public static void a() {
        a(new CustomLogger() { // from class: com.birbit.android.jobqueue.log.a.1
            @Override // com.birbit.android.jobqueue.log.CustomLogger
            public void d(String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            public void e(String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            public void e(Throwable th, String str, Object... objArr) {
            }

            @Override // com.birbit.android.jobqueue.log.CustomLogger
            public boolean isDebugEnabled() {
                return false;
            }
        });
    }

    public static void a(CustomLogger customLogger) {
        f2985a = customLogger;
    }

    public static boolean b() {
        return f2985a.isDebugEnabled();
    }

    public static void a(String str, Object... objArr) {
        f2985a.d(str, objArr);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        f2985a.e(th, str, objArr);
    }

    public static void b(String str, Object... objArr) {
        f2985a.e(str, objArr);
    }
}
