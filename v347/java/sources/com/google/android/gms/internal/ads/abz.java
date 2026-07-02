package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
final class abz implements ade {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final acj f3782b = new aca();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final acj f3783a;

    public abz() {
        this(new acb(abc.a(), a()));
    }

    private abz(acj acjVar) {
        this.f3783a = (acj) abf.a(acjVar, "messageInfoFactory");
    }

    private static acj a() {
        try {
            return (acj) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return f3782b;
        }
    }

    private static boolean a(aci aciVar) {
        return aciVar.a() == abd.e.h;
    }

    @Override // com.google.android.gms.internal.ads.ade
    public final <T> add<T> a(Class<T> cls) {
        adf.a((Class<?>) cls);
        aci aciVarB = this.f3783a.b(cls);
        return aciVarB.b() ? abd.class.isAssignableFrom(cls) ? acr.a(adf.c(), aau.a(), aciVarB.c()) : acr.a(adf.a(), aau.b(), aciVarB.c()) : abd.class.isAssignableFrom(cls) ? a(aciVarB) ? aco.a(cls, aciVarB, acv.b(), abu.b(), adf.c(), aau.a(), ach.b()) : aco.a(cls, aciVarB, acv.b(), abu.b(), adf.c(), (aas<?>) null, ach.b()) : a(aciVarB) ? aco.a(cls, aciVarB, acv.a(), abu.a(), adf.a(), aau.b(), ach.a()) : aco.a(cls, aciVarB, acv.a(), abu.a(), adf.b(), (aas<?>) null, ach.a());
    }
}
