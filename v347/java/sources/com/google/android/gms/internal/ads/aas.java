package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.aax;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class aas<T extends aax<T>> {
    aas() {
    }

    abstract int a(Map.Entry<?, ?> entry);

    abstract aav<T> a(Object obj);

    abstract Object a(aaq aaqVar, ack ackVar, int i);

    abstract <UT, UB> UB a(adc adcVar, Object obj, aaq aaqVar, aav<T> aavVar, UB ub, adw<UT, UB> adwVar) throws IOException;

    abstract void a(adc adcVar, Object obj, aaq aaqVar, aav<T> aavVar) throws IOException;

    abstract void a(aeq aeqVar, Map.Entry<?, ?> entry) throws IOException;

    abstract void a(zv zvVar, Object obj, aaq aaqVar, aav<T> aavVar) throws IOException;

    abstract void a(Object obj, aav<T> aavVar);

    abstract boolean a(ack ackVar);

    abstract aav<T> b(Object obj);

    abstract void c(Object obj);
}
