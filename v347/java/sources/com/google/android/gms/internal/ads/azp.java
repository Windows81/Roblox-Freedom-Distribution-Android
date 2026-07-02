package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class azp implements com.google.android.gms.ads.internal.gmsg.ae<bah> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bab f4681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ ayy f4682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ azk f4683c;

    azp(azk azkVar, bab babVar, ayy ayyVar) {
        this.f4683c = azkVar;
        this.f4681a = babVar;
        this.f4682b = ayyVar;
    }

    @Override // com.google.android.gms.ads.internal.gmsg.ae
    public final /* synthetic */ void zza(bah bahVar, Map map) {
        synchronized (this.f4683c.f4667a) {
            if (this.f4681a.b() == -1 || this.f4681a.b() == 1) {
                return;
            }
            this.f4683c.h = 0;
            this.f4683c.e.a(this.f4682b);
            this.f4681a.a(this.f4682b);
            this.f4683c.g = this.f4681a;
            jd.a("Successfully loaded JS Engine.");
        }
    }
}
