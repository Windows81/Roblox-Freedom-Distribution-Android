package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aiq extends aix {
    public aiq(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 51);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.f4061b) {
            ahl ahlVar = new ahl((String) this.f4062c.invoke(null, new Object[0]));
            this.f4061b.G = ahlVar.f4001a;
            this.f4061b.H = ahlVar.f4002b;
        }
    }
}
