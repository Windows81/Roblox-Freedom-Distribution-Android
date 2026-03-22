package com.google.android.gms.internal.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class g extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f5838a = new e();

    g() {
    }

    @Override // com.google.android.gms.internal.b.d
    public final void a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.f5838a.a(th, true).add(th2);
    }
}
