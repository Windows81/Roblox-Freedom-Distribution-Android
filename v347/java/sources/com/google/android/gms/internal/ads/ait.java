package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ait extends aix {
    public ait(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.E = 2;
        boolean zBooleanValue = ((Boolean) this.f4062c.invoke(null, this.f4060a.a())).booleanValue();
        synchronized (this.f4061b) {
            if (zBooleanValue) {
                this.f4061b.E = 1;
            } else {
                this.f4061b.E = 0;
            }
        }
    }
}
