package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
final class azu implements nr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bab f4694a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ azk f4695b;

    azu(azk azkVar, bab babVar) {
        this.f4695b = azkVar;
        this.f4694a = babVar;
    }

    @Override // com.google.android.gms.internal.ads.nr
    public final void a() {
        synchronized (this.f4695b.f4667a) {
            this.f4695b.h = 1;
            jd.a("Failed loading new engine. Marking new engine destroyable.");
            this.f4694a.e();
        }
    }
}
