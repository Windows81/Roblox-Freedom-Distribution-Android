package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ain extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f4048d;

    public ain(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 61);
        this.f4048d = ahmVar.j();
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        long jLongValue = ((Long) this.f4062c.invoke(null, this.f4060a.a(), Boolean.valueOf(this.f4048d))).longValue();
        synchronized (this.f4061b) {
            this.f4061b.P = Long.valueOf(jLongValue);
        }
    }
}
