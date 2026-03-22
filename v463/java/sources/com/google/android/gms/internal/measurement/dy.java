package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class dy implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ int f4232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f4233b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ Object f4234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ Object f4235d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ Object f4236e;
    private final /* synthetic */ dx f;

    dy(dx dxVar, int i, String str, Object obj, Object obj2, Object obj3) {
        this.f = dxVar;
        this.f4232a = i;
        this.f4233b = str;
        this.f4234c = obj;
        this.f4235d = obj2;
        this.f4236e = obj3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dx dxVar;
        char c2;
        ei eiVarC = this.f.q.c();
        if (!eiVarC.E()) {
            this.f.a(6, "Persisted config not initialized. Not logging error/warn");
            return;
        }
        if (this.f.f4227a == 0) {
            if (this.f.s().t()) {
                dxVar = this.f;
                c2 = 'C';
            } else {
                dxVar = this.f;
                c2 = 'c';
            }
            dxVar.f4227a = c2;
        }
        if (this.f.f4228b < 0) {
            dx.a(this.f, 12451L);
        }
        char cCharAt = "01VDIWEA?".charAt(this.f4232a);
        char c3 = this.f.f4227a;
        long j = this.f.f4228b;
        String strA = dx.a(true, this.f4233b, this.f4234c, this.f4235d, this.f4236e);
        StringBuilder sb = new StringBuilder(String.valueOf(strA).length() + 24);
        sb.append("2");
        sb.append(cCharAt);
        sb.append(c3);
        sb.append(j);
        sb.append(":");
        sb.append(strA);
        String string = sb.toString();
        if (string.length() > 1024) {
            string = this.f4233b.substring(0, 1024);
        }
        eiVarC.f4260b.a(string, 1L);
    }
}
