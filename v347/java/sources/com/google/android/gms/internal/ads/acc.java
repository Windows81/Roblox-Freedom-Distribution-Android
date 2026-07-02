package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class acc<K, V> {
    static <K, V> int a(acd<K, V> acdVar, K k, V v) {
        return aav.a(acdVar.f3785a, 1, k) + aav.a(acdVar.f3787c, 2, v);
    }

    static <K, V> void a(aaj aajVar, acd<K, V> acdVar, K k, V v) throws IOException {
        aav.a(aajVar, acdVar.f3785a, 1, k);
        aav.a(aajVar, acdVar.f3787c, 2, v);
    }
}
