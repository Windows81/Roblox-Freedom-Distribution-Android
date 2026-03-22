package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class zh extends ze {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zf f5732a = new zf();

    zh() {
    }

    @Override // com.google.android.gms.internal.ads.ze
    public final void a(Throwable th, PrintWriter printWriter) {
        th.printStackTrace(printWriter);
        List<Throwable> listA = this.f5732a.a(th, false);
        if (listA == null) {
            return;
        }
        synchronized (listA) {
            for (Throwable th2 : listA) {
                printWriter.print("Suppressed: ");
                th2.printStackTrace(printWriter);
            }
        }
    }
}
