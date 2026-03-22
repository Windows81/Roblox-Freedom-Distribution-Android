package a.a.g;

import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static transient String f464a = e.class.getSimpleName();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Exception f465b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<d> f466c = new ArrayList<>();

    public e(Exception exc) {
        this.f465b = exc;
        b();
    }

    public ArrayList<d> a() {
        return this.f466c;
    }

    private void b() {
        Exception exc = this.f465b;
        StackTraceElement[] stackTrace = exc != null ? exc.getStackTrace() : Thread.currentThread().getStackTrace();
        if (stackTrace == null || stackTrace.length == 0) {
            a.a.f.a.b(f464a, "StackTraceElements are null or empty");
        } else {
            a(stackTrace);
        }
    }

    private void a(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr == null || stackTraceElementArr.length == 0) {
            a.a.f.a.b(f464a, "StackTraceFrames are null or empty");
            return;
        }
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            if (stackTraceElement != null && stackTraceElement.getFileName() != null && stackTraceElement.getFileName().startsWith("Backtrace")) {
                a.a.f.a.a(f464a, "Skipping frame because it comes from inside the Backtrace library");
            } else {
                this.f466c.add(new d(stackTraceElement));
            }
        }
    }
}
