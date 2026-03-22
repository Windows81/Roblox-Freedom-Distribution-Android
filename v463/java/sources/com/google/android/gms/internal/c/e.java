package com.google.android.gms.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class e extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f3996a = new c();

    e() {
    }

    @Override // com.google.android.gms.internal.c.b
    public final void a(Throwable th, Throwable th2) {
        if (th2 == th) {
            throw new IllegalArgumentException("Self suppression is not allowed.", th2);
        }
        if (th2 == null) {
            throw new NullPointerException("The suppressed exception cannot be null.");
        }
        this.f3996a.a(th, true).add(th2);
    }
}
