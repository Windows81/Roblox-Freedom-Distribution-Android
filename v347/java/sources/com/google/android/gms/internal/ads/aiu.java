package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aiu extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final View f4054d;

    public aiu(ahm ahmVar, String str, String str2, zn znVar, int i, int i2, View view) {
        super(ahmVar, str, str2, znVar, i, 57);
        this.f4054d = view;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f4054d != null) {
            ahv ahvVar = new ahv((String) this.f4062c.invoke(null, this.f4054d, this.f4060a.a().getResources().getDisplayMetrics()));
            abp abpVar = new abp();
            abpVar.f3764a = ahvVar.f4024a;
            abpVar.f3765b = ahvVar.f4025b;
            abpVar.f3766c = ahvVar.f4026c;
            this.f4061b.M = abpVar;
        }
    }
}
