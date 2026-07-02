package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class pl extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final pc f5432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final po f5433b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f5434c;

    pl(pc pcVar, po poVar, String str) {
        this.f5432a = pcVar;
        this.f5433b = poVar;
        this.f5434c = str;
        com.google.android.gms.ads.internal.aw.z().a(this);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        try {
            this.f5433b.a(this.f5434c);
        } finally {
            jm.f5184a.post(new pm(this));
        }
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
        this.f5433b.b();
    }
}
