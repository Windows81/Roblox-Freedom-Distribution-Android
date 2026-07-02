package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class azq implements com.google.android.gms.ads.internal.gmsg.ae<bah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ agv f4684a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ayy f4685b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ lo f4686c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ azk f4687d;

    azq(azk azkVar, agv agvVar, ayy ayyVar, lo loVar) {
        this.f4687d = azkVar;
        this.f4684a = agvVar;
        this.f4685b = ayyVar;
        this.f4686c = loVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(bah bahVar, Map map) {
        synchronized (this.f4687d.f4667a) {
            jd.d("JS Engine is requesting an update");
            if (this.f4687d.h == 0) {
                jd.d("Starting reload.");
                this.f4687d.h = 2;
                this.f4687d.a(this.f4684a);
            }
            this.f4685b.b("/requestReload", (com.google.android.gms.ads.internal.gmsg.ae<? super bah>) this.f4686c.a());
        }
    }
}
