package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aij extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4045d;

    public aij(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 12);
        this.f4045d = -1L;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.f = -1L;
        this.f4061b.f = (Long) this.f4062c.invoke(null, this.f4060a.a());
    }
}
