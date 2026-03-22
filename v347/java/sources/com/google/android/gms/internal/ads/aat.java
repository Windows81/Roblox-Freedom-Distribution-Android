package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class aat extends aas<Object> {
    aat() {
    }

    @Override // com.google.android.gms.internal.ads.aas
    final int a(Map.Entry<?, ?> entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.aas
    final aav<Object> a(Object obj) {
        return ((abd.c) obj).zzdtz;
    }

    @Override // com.google.android.gms.internal.ads.aas
    final Object a(aaq aaqVar, ack ackVar, int i) {
        return aaqVar.a(ackVar, i);
    }

    @Override // com.google.android.gms.internal.ads.aas
    final <UT, UB> UB a(adc adcVar, Object obj, aaq aaqVar, aav<Object> aavVar, UB ub, adw<UT, UB> adwVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.aas
    final void a(adc adcVar, Object obj, aaq aaqVar, aav<Object> aavVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.aas
    final void a(aeq aeqVar, Map.Entry<?, ?> entry) throws IOException {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.aas
    final void a(zv zvVar, Object obj, aaq aaqVar, aav<Object> aavVar) throws IOException {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.ads.aas
    final void a(Object obj, aav<Object> aavVar) {
        ((abd.c) obj).zzdtz = aavVar;
    }

    @Override // com.google.android.gms.internal.ads.aas
    final boolean a(ack ackVar) {
        return ackVar instanceof abd.c;
    }

    @Override // com.google.android.gms.internal.ads.aas
    final aav<Object> b(Object obj) {
        aav<Object> aavVarA = a(obj);
        if (!aavVarA.d()) {
            return aavVarA;
        }
        aav<Object> aavVar = (aav) aavVarA.clone();
        a(obj, aavVar);
        return aavVar;
    }

    @Override // com.google.android.gms.internal.ads.aas
    final void c(Object obj) {
        a(obj).c();
    }
}
