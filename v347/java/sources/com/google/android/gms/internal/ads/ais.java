package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ais extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile Long f4053d = null;
    private static final Object e = new Object();

    public ais(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 33);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (f4053d == null) {
            synchronized (e) {
                if (f4053d == null) {
                    f4053d = (Long) this.f4062c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f4061b) {
            this.f4061b.r = f4053d;
        }
    }
}
