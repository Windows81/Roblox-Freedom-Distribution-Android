package org.greenrobot.eventbus;

/* JADX INFO: loaded from: classes.dex */
class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final i f8237a = new i();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f8238b;

    a(c cVar) {
        this.f8238b = cVar;
    }

    public void a(n nVar, Object obj) {
        this.f8237a.a(h.a(nVar, obj));
        this.f8238b.c().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarA = this.f8237a.a();
        if (hVarA == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.f8238b.a(hVarA);
    }
}
