package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class air extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ahw f4052d;
    private long e;

    public air(ahm ahmVar, String str, String str2, zn znVar, int i, int i2, ahw ahwVar) {
        super(ahmVar, str, str2, znVar, i, 53);
        this.f4052d = ahwVar;
        if (ahwVar != null) {
            this.e = ahwVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f4052d != null) {
            this.f4061b.I = (Long) this.f4062c.invoke(null, Long.valueOf(this.e));
        }
    }
}
