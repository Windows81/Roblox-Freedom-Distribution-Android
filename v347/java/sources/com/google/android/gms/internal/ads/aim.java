package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class aim extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<Long> f4047d;

    public aim(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 31);
        this.f4047d = null;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        this.f4061b.p = -1L;
        this.f4061b.q = -1L;
        if (this.f4047d == null) {
            this.f4047d = (List) this.f4062c.invoke(null, this.f4060a.a());
        }
        if (this.f4047d == null || this.f4047d.size() != 2) {
            return;
        }
        synchronized (this.f4061b) {
            this.f4061b.p = Long.valueOf(this.f4047d.get(0).longValue());
            this.f4061b.q = Long.valueOf(this.f4047d.get(1).longValue());
        }
    }
}
