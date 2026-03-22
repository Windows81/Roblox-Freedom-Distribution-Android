package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class acb implements acj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private acj[] f3784a;

    acb(acj... acjVarArr) {
        this.f3784a = acjVarArr;
    }

    @Override // com.google.android.gms.internal.ads.acj
    public final boolean a(Class<?> cls) {
        for (acj acjVar : this.f3784a) {
            if (acjVar.a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.acj
    public final aci b(Class<?> cls) {
        for (acj acjVar : this.f3784a) {
            if (acjVar.a(cls)) {
                return acjVar.b(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }
}
