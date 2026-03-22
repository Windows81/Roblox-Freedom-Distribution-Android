package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ap extends ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final jq f4041a;

    ap(ae aeVar) {
        super(aeVar);
        this.f4041a = new jq();
    }

    @Override // com.google.android.gms.internal.measurement.ac
    protected final void a() {
        m().a().a(this.f4041a);
        co coVarQ = q();
        String strC = coVarQ.c();
        if (strC != null) {
            this.f4041a.a(strC);
        }
        String strB = coVarQ.b();
        if (strB != null) {
            this.f4041a.b(strB);
        }
    }

    public final jq b() {
        y();
        return this.f4041a;
    }
}
