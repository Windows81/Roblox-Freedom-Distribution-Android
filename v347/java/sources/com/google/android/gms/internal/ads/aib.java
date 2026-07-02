package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aib extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile String f4038d = null;
    private static final Object e = new Object();

    public aib(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 29);
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.o = "E";
        if (f4038d == null) {
            synchronized (e) {
                if (f4038d == null) {
                    f4038d = (String) this.f4062c.invoke(null, this.f4060a.a());
                }
            }
        }
        synchronized (this.f4061b) {
            this.f4061b.o = afu.a(f4038d.getBytes(), true);
        }
    }
}
