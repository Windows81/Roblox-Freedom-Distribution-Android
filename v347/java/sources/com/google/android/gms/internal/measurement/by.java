package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes.dex */
final class by extends o implements aq<bz> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final bz f5946a;

    public by(r rVar) {
        super(rVar);
        this.f5946a = new bz();
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final /* synthetic */ ao a() {
        return this.f5946a;
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.f5946a.f5949c = i;
        } else {
            d("int configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, String str2) {
        this.f5946a.g.put(str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void a(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.f5946a.f5950d = z ? 1 : 0;
            return;
        }
        if ("ga_anonymizeIp".equals(str)) {
            this.f5946a.e = z ? 1 : 0;
        } else if (!"ga_reportUncaughtExceptions".equals(str)) {
            d("bool configuration name not recognized", str);
        } else {
            this.f5946a.f = z ? 1 : 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.aq
    public final void b(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.f5946a.f5947a = str2;
            return;
        }
        if (!"ga_sampleFrequency".equals(str)) {
            d("string configuration name not recognized", str);
            return;
        }
        try {
            this.f5946a.f5948b = Double.parseDouble(str2);
        } catch (NumberFormatException e) {
            c("Error parsing ga_sampleFrequency value", str2, e);
        }
    }
}
