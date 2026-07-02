package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ail extends aix {
    public ail(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        synchronized (this.f4061b) {
            agz agzVar = new agz((String) this.f4062c.invoke(null, this.f4060a.a()));
            synchronized (this.f4061b) {
                this.f4061b.f5738c = Long.valueOf(agzVar.f3984a);
                this.f4061b.O = Long.valueOf(agzVar.f3985b);
            }
        }
    }
}
