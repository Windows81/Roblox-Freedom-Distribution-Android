package org.greenrobot.eventbus;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f7952a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f7953b;

    a(c cVar) {
        this.f7953b = cVar;
    }

    public void a(n nVar, Object obj) {
        this.f7952a.a(h.a(nVar, obj));
        this.f7953b.c().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarA = this.f7952a.a();
        if (hVarA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f7953b.a(hVarA);
    }
}
