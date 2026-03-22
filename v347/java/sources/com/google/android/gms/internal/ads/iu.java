package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class iu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private BigInteger f5148a = BigInteger.ONE;

    public final synchronized String a() {
        String string;
        string = this.f5148a.toString();
        this.f5148a = this.f5148a.add(BigInteger.ONE);
        return string;
    }
}
