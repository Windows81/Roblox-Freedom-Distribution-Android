package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class bc implements aq<bd> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f5897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bd f5898b = new bd();

    public bc(r rVar) {
        this.f5897a = rVar;
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final /* synthetic */ ao a() {
        return this.f5898b;
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, int i) {
        if ("ga_dispatchPeriod".equals(str)) {
            this.f5898b.f5902d = i;
        } else {
            this.f5897a.e().d("Int xml configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, boolean z) {
        if (!"ga_dryRun".equals(str)) {
            this.f5897a.e().d("Bool xml configuration name not recognized", str);
        } else {
            this.f5898b.e = z ? 1 : 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void b(String str, String str2) {
        if ("ga_appName".equals(str)) {
            this.f5898b.f5899a = str2;
            return;
        }
        if ("ga_appVersion".equals(str)) {
            this.f5898b.f5900b = str2;
        } else if ("ga_logLevel".equals(str)) {
            this.f5898b.f5901c = str2;
        } else {
            this.f5897a.e().d("String xml configuration name not recognized", str);
        }
    }
}
