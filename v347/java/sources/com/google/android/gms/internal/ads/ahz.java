package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class ahz extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Activity f4033d;
    private final View e;

    public ahz(ahm ahmVar, String str, String str2, zn znVar, int i, int i2, View view, Activity activity) {
        super(ahmVar, str, str2, znVar, i, 62);
        this.e = view;
        this.f4033d = activity;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.e == null) {
            return;
        }
        boolean zBooleanValue = ((Boolean) aoo.f().a(aro.bF)).booleanValue();
        Object[] objArr = (Object[]) this.f4062c.invoke(null, this.e, this.f4033d, Boolean.valueOf(zBooleanValue));
        synchronized (this.f4061b) {
            this.f4061b.Q = Long.valueOf(((Long) objArr[0]).longValue());
            this.f4061b.R = Long.valueOf(((Long) objArr[1]).longValue());
            if (zBooleanValue) {
                this.f4061b.S = (String) objArr[2];
            }
        }
    }
}
