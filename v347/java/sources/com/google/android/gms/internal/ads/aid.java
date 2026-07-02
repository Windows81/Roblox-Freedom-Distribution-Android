package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aid extends aix {
    public aid(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.f5739d = -1L;
        this.f4061b.e = -1L;
        int[] iArr = (int[]) this.f4062c.invoke(null, this.f4060a.a());
        synchronized (this.f4061b) {
            this.f4061b.f5739d = Long.valueOf(iArr[0]);
            this.f4061b.e = Long.valueOf(iArr[1]);
            if (iArr[2] != Integer.MIN_VALUE) {
                this.f4061b.N = Long.valueOf(iArr[2]);
            }
        }
    }
}
