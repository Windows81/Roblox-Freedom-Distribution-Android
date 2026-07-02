package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aip extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final StackTraceElement[] f4051d;

    public aip(ahm ahmVar, String str, String str2, zn znVar, int i, int i2, StackTraceElement[] stackTraceElementArr) {
        super(ahmVar, str, str2, znVar, i, 45);
        this.f4051d = stackTraceElementArr;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f4051d != null) {
            ahk ahkVar = new ahk((String) this.f4062c.invoke(null, this.f4051d));
            synchronized (this.f4061b) {
                this.f4061b.B = ahkVar.f3998a;
                if (ahkVar.f3999b.booleanValue()) {
                    this.f4061b.J = Integer.valueOf(ahkVar.f4000c.booleanValue() ? 0 : 1);
                }
            }
        }
    }
}
