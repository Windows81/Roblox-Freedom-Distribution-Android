package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.a.a;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes.dex */
public final class aig extends aix {
    public aig(ahm ahmVar, String str, String str2, zn znVar, int i, int i2) {
        super(ahmVar, str, str2, znVar, i, 24);
    }

    private final void c() {
        com.google.android.gms.ads.a.a aVarM = this.f4060a.m();
        if (aVarM == null) {
            return;
        }
        try {
            a.C0063a c0063aB = aVarM.b();
            String strA = ahu.a(c0063aB.a());
            if (strA != null) {
                synchronized (this.f4061b) {
                    this.f4061b.T = strA;
                    this.f4061b.V = Boolean.valueOf(c0063aB.b());
                    this.f4061b.U = 5;
                }
            }
        } catch (IOException e) {
        }
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        if (this.f4060a.g()) {
            c();
            return;
        }
        synchronized (this.f4061b) {
            this.f4061b.T = (String) this.f4062c.invoke(null, this.f4060a.a());
        }
    }

    @Override // com.google.android.gms.internal.ads.aix
    /* JADX INFO: renamed from: b */
    public final Void call() throws Exception {
        if (this.f4060a.b()) {
            return super.call();
        }
        if (this.f4060a.g()) {
            c();
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aix, java.util.concurrent.Callable
    public final /* synthetic */ Object call() throws Exception {
        return call();
    }
}
