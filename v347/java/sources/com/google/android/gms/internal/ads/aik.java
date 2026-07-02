package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aik extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f4046d = null;
    private static final Object e = new Object();

    public aik(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 1);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.f5736a = "E";
        if (f4046d == null) {
            synchronized (e) {
                if (f4046d == null) {
                    f4046d = (String) this.f4062c.invoke(null, new Object[0]);
                }
            }
        }
        synchronized (this.f4061b) {
            this.f4061b.f5736a = f4046d;
        }
    }
}
