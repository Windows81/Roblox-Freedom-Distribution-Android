package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class bp implements bd<bq> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ae f4089a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final bq f4090b = new bq();

    public bp(ae aeVar) {
        this.f4089a = aeVar;
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final /* synthetic */ bb a() {
        return this.f4090b;
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, int i) {
        if ("ga_dispatchPeriod".equals(str)) {
            this.f4090b.f4094d = i;
        } else {
            this.f4089a.e().d("Int xml configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, String str2) {
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, boolean z) {
        if (!"ga_dryRun".equals(str)) {
            this.f4089a.e().d("Bool xml configuration name not recognized", str);
        } else {
            this.f4090b.f4095e = z ? 1 : 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void b(String str, String str2) {
        if ("ga_appName".equals(str)) {
            this.f4090b.f4091a = str2;
            return;
        }
        if ("ga_appVersion".equals(str)) {
            this.f4090b.f4092b = str2;
        } else if ("ga_logLevel".equals(str)) {
            this.f4090b.f4093c = str2;
        } else {
            this.f4089a.e().d("String xml configuration name not recognized", str);
        }
    }
}
