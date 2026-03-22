package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class abx extends abu {
    private abx() {
        super();
    }

    private static <E> abi<E> c(Object obj, long j) {
        return (abi) aec.f(obj, j);
    }

    @Override // com.google.android.gms.internal.ads.abu
    final <L> List<L> a(Object obj, long j) {
        abi abiVarC = c(obj, j);
        if (abiVarC.a()) {
            return abiVarC;
        }
        int size = abiVarC.size();
        abi abiVarA = abiVarC.a(size == 0 ? 10 : size << 1);
        aec.a(obj, j, abiVarA);
        return abiVarA;
    }

    @Override // com.google.android.gms.internal.ads.abu
    final <E> void a(Object obj, Object obj2, long j) {
        abi abiVarC = c(obj, j);
        abi abiVarC2 = c(obj2, j);
        int size = abiVarC.size();
        int size2 = abiVarC2.size();
        if (size > 0 && size2 > 0) {
            if (!abiVarC.a()) {
                abiVarC = abiVarC.a(size2 + size);
            }
            abiVarC.addAll(abiVarC2);
        }
        if (size <= 0) {
            abiVarC = abiVarC2;
        }
        aec.a(obj, j, abiVarC);
    }

    @Override // com.google.android.gms.internal.ads.abu
    final void b(Object obj, long j) {
        c(obj, j).b();
    }
}
