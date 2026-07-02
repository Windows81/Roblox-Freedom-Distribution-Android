package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class aic extends aix {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile afv f4039d = null;
    private static final Object e = new Object();
    private wj f;

    public aic(ahm ahmVar, String str, String str2, zn znVar, int i, int i2, wj wjVar) {
        super(ahmVar, str, str2, znVar, i, 27);
        this.f = null;
        this.f = wjVar;
    }

    private final String c() {
        try {
            if (this.f4060a.l() != null) {
                this.f4060a.l().get();
            }
            zn znVarK = this.f4060a.k();
            if (znVarK != null && znVarK.n != null) {
                return znVarK.n;
            }
        } catch (InterruptedException e2) {
        } catch (ExecutionException e3) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.aix
    protected final void a() throws IllegalAccessException, InvocationTargetException {
        boolean z;
        char c2 = 3;
        if (f4039d == null || ahu.b(f4039d.f3939a) || f4039d.f3939a.equals("E") || f4039d.f3939a.equals("0000000000000000000000000000000000000000000000000000000000000000")) {
            synchronized (e) {
                wj wjVar = this.f;
                if (ahu.b(null)) {
                    wj wjVar2 = this.f;
                    ahu.b(null);
                    Boolean bool = false;
                    if (bool.booleanValue()) {
                        if (this.f4060a.i()) {
                            if (((Boolean) aoo.f().a(aro.bO)).booleanValue()) {
                                z = ((Boolean) aoo.f().a(aro.bP)).booleanValue();
                                if (!z) {
                                }
                            }
                        }
                        if (!z) {
                        }
                    }
                    c2 = 2;
                } else {
                    c2 = 4;
                }
                Method method = this.f4062c;
                Object[] objArr = new Object[3];
                objArr[0] = this.f4060a.a();
                objArr[1] = Boolean.valueOf(c2 == 2);
                objArr[2] = aoo.f().a(aro.bI);
                afv afvVar = new afv((String) method.invoke(null, objArr));
                f4039d = afvVar;
                if (ahu.b(afvVar.f3939a) || f4039d.f3939a.equals("E")) {
                    switch (c2) {
                        case 3:
                            String strC = c();
                            if (!ahu.b(strC)) {
                                f4039d.f3939a = strC;
                            }
                            break;
                        case 4:
                            xk xkVar = null;
                            f4039d.f3939a = xkVar.f5664a;
                            break;
                    }
                }
            }
        }
        synchronized (this.f4061b) {
            if (f4039d != null) {
                this.f4061b.n = f4039d.f3939a;
                this.f4061b.t = Long.valueOf(f4039d.f3940b);
                this.f4061b.s = f4039d.f3941c;
                this.f4061b.C = f4039d.f3942d;
                this.f4061b.D = f4039d.e;
            }
        }
    }
}
