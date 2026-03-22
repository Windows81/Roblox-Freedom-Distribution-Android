package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class alt implements Comparator<alg> {
    public alt(als alsVar) {
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(alg algVar, alg algVar2) {
        alg algVar3 = algVar;
        alg algVar4 = algVar2;
        if (algVar3.b() < algVar4.b()) {
            return -1;
        }
        if (algVar3.b() > algVar4.b()) {
            return 1;
        }
        if (algVar3.a() < algVar4.a()) {
            return -1;
        }
        if (algVar3.a() > algVar4.a()) {
            return 1;
        }
        float fD = (algVar3.d() - algVar3.b()) * (algVar3.c() - algVar3.a());
        float fD2 = (algVar4.d() - algVar4.b()) * (algVar4.c() - algVar4.a());
        if (fD <= fD2) {
            return fD < fD2 ? 1 : 0;
        }
        return -1;
    }
}
