package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aif extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4041d;

    public aif(ahm ahmVar, String str, String str2, zn znVar, long j, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 25);
        this.f4041d = j;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.f4062c.invoke(null, new Object[0])).longValue();
        synchronized (this.f4061b) {
            this.f4061b.W = Long.valueOf(jLongValue);
            if (this.f4041d != 0) {
                this.f4061b.j = Long.valueOf(jLongValue - this.f4041d);
                this.f4061b.m = Long.valueOf(this.f4041d);
            }
        }
    }
}
