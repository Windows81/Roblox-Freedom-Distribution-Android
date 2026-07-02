package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
public final class ac extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cd f5852a;

    ac(r rVar) {
        super(rVar);
        this.f5852a = new cd();
    }

    @Override // com.google.android.gms.internal.measurement.p
    protected final void a() {
        m().a().a(this.f5852a);
        cb cbVarQ = q();
        String strC = cbVarQ.c();
        if (strC != null) {
            this.f5852a.a(strC);
        }
        String strB = cbVarQ.b();
        if (strB != null) {
            this.f5852a.b(strB);
        }
    }

    public final cd b() {
        y();
        return this.f5852a;
    }
}
