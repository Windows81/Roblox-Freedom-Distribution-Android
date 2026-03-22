package a.a.g;

import java.util.UUID;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static transient String f459e = d.class.getSimpleName();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @com.google.gson.a.c(a = "funcName")
    public String f460a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @com.google.gson.a.c(a = "line")
    public Integer f461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @com.google.gson.a.c(a = "sourceCode")
    public String f462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public transient String f463d;

    public d() {
        this.f461b = null;
    }

    public d(StackTraceElement stackTraceElement) {
        this.f461b = null;
        if (stackTraceElement == null || stackTraceElement.getMethodName() == null) {
            a.a.f.a.b(f459e, "Frame or method name is null");
            return;
        }
        this.f460a = stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName();
        this.f463d = stackTraceElement.getFileName();
        this.f462c = UUID.randomUUID().toString();
        this.f461b = stackTraceElement.getLineNumber() > 0 ? Integer.valueOf(stackTraceElement.getLineNumber()) : null;
    }
}
