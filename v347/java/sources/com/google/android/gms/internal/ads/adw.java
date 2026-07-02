package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
abstract class adw<T, B> {
    adw() {
    }

    abstract B a();

    abstract T a(B b2);

    abstract void a(B b2, int i, int i2);

    abstract void a(B b2, int i, long j);

    abstract void a(B b2, int i, zv zvVar);

    abstract void a(B b2, int i, T t);

    abstract void a(T t, aeq aeqVar) throws IOException;

    abstract void a(Object obj, T t);

    abstract boolean a(adc adcVar);

    final boolean a(B b2, adc adcVar) throws IOException {
        int iB = adcVar.b();
        int i = iB >>> 3;
        switch (iB & 7) {
            case 0:
                a(b2, i, adcVar.g());
                return true;
            case 1:
                b(b2, i, adcVar.i());
                return true;
            case 2:
                a((Object) b2, i, adcVar.n());
                return true;
            case 3:
                B bA = a();
                int i2 = (i << 3) | 4;
                while (adcVar.a() != Integer.MAX_VALUE && a((Object) bA, adcVar)) {
                }
                if (i2 != adcVar.b()) {
                    throw abj.e();
                }
                a(b2, i, a(bA));
                return true;
            case 4:
                return false;
            case 5:
                a((Object) b2, i, adcVar.j());
                return true;
            default:
                throw abj.f();
        }
    }

    abstract T b(Object obj);

    abstract void b(B b2, int i, long j);

    abstract void b(T t, aeq aeqVar) throws IOException;

    abstract void b(Object obj, B b2);

    abstract B c(Object obj);

    abstract T c(T t, T t2);

    abstract void d(Object obj);

    abstract int e(T t);

    abstract int f(T t);
}
