package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
final class ady extends adw<adx, adx> {
    ady() {
    }

    /* JADX INFO: renamed from: a, reason: avoid collision after fix types in other method */
    private static void a2(Object obj, adx adxVar) {
        ((abd) obj).zzdtt = adxVar;
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ adx a() {
        return adx.b();
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ adx a(adx adxVar) {
        adx adxVar2 = adxVar;
        adxVar2.c();
        return adxVar2;
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(adx adxVar, int i, int i2) {
        adxVar.a((i << 3) | 5, Integer.valueOf(i2));
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(adx adxVar, int i, long j) {
        adxVar.a(i << 3, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(adx adxVar, int i, zv zvVar) {
        adxVar.a((i << 3) | 2, zvVar);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(adx adxVar, int i, adx adxVar2) {
        adxVar.a((i << 3) | 3, adxVar2);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(adx adxVar, aeq aeqVar) throws IOException {
        adxVar.b(aeqVar);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void a(Object obj, adx adxVar) {
        a2(obj, adxVar);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final boolean a(adc adcVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ adx b(Object obj) {
        return ((abd) obj).zzdtt;
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void b(adx adxVar, int i, long j) {
        adxVar.a((i << 3) | 1, Long.valueOf(j));
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void b(adx adxVar, aeq aeqVar) throws IOException {
        adxVar.a(aeqVar);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ void b(Object obj, adx adxVar) {
        a2(obj, adxVar);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ adx c(Object obj) {
        adx adxVar = ((abd) obj).zzdtt;
        if (adxVar != adx.a()) {
            return adxVar;
        }
        adx adxVarB = adx.b();
        a2(obj, adxVarB);
        return adxVarB;
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ adx c(adx adxVar, adx adxVar2) {
        adx adxVar3 = adxVar;
        adx adxVar4 = adxVar2;
        return adxVar4.equals(adx.a()) ? adxVar3 : adx.a(adxVar3, adxVar4);
    }

    @Override // com.google.android.gms.internal.ads.adw
    final void d(Object obj) {
        ((abd) obj).zzdtt.c();
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ int e(adx adxVar) {
        return adxVar.d();
    }

    @Override // com.google.android.gms.internal.ads.adw
    final /* synthetic */ int f(adx adxVar) {
        return adxVar.e();
    }
}
