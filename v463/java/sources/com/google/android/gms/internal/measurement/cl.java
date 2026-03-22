package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class cl extends ab implements bd<cm> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cm f4146a;

    public cl(ae aeVar) {
        super(aeVar);
        this.f4146a = new cm();
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final /* synthetic */ bb a() {
        return this.f4146a;
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.f4146a.f4149c = i;
        } else {
            d("int configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, String str2) {
        this.f4146a.g.put(str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void a(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.f4146a.f4150d = z ? 1 : 0;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.f4146a.f4151e = z ? 1 : 0;
        } else if (!"ga_reportUncaughtExceptions".equals(str)) {
            d("bool configuration name not recognized", str);
        } else {
            this.f4146a.f = z ? 1 : 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.bd
    public final void b(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.f4146a.f4147a = str2;
            return;
        }
        if (!"ga_sampleFrequency".equals(str)) {
            d("string configuration name not recognized", str);
            return;
        }
        try {
            this.f4146a.f4148b = Double.parseDouble(str2);
        } catch (NumberFormatException e2) {
            c("Error parsing ga_sampleFrequency value", str2, e2);
        }
    }
}
