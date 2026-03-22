package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class acg implements acf {
    acg() {
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final int a(int i, Object obj, Object obj2) {
        ace aceVar = (ace) obj;
        if (!aceVar.isEmpty()) {
            Iterator it = aceVar.entrySet().iterator();
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                entry.getKey();
                entry.getValue();
                throw new NoSuchMethodError();
            }
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final Object a(Object obj, Object obj2) {
        ace aceVarB = (ace) obj;
        ace aceVar = (ace) obj2;
        if (!aceVar.isEmpty()) {
            if (!aceVarB.d()) {
                aceVarB = aceVarB.b();
            }
            aceVarB.a(aceVar);
        }
        return aceVarB;
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final Map<?, ?> a(Object obj) {
        return (ace) obj;
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final Map<?, ?> b(Object obj) {
        return (ace) obj;
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final boolean c(Object obj) {
        return !((ace) obj).d();
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final Object d(Object obj) {
        ((ace) obj).c();
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final Object e(Object obj) {
        return ace.a().b();
    }

    @Override // com.google.android.gms.internal.ads.acf
    public final acd<?, ?> f(Object obj) {
        throw new NoSuchMethodError();
    }
}
