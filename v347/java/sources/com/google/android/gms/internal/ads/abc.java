package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.abd;

/* JADX INFO: loaded from: classes.dex */
final class abc implements acj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final abc f3742a = new abc();

    private abc() {
    }

    public static abc a() {
        return f3742a;
    }

    @Override // com.google.android.gms.internal.ads.acj
    public final boolean a(Class<?> cls) {
        return abd.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.ads.acj
    public final aci b(Class<?> cls) {
        if (!abd.class.isAssignableFrom(cls)) {
            String strValueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unsupported message type: ".concat(strValueOf) : new String("Unsupported message type: "));
        }
        try {
            return (aci) abd.a(cls.asSubclass(abd.class)).a(abd.e.f3749c, (Object) null, (Object) null);
        } catch (Exception e) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to get message info for ".concat(strValueOf2) : new String("Unable to get message info for "), e);
        }
    }
}
