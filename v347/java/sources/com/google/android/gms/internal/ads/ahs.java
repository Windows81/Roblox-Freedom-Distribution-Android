package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes.dex */
final class ahs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static tm f4018a;

    static boolean a(ahm ahmVar) throws IllegalAccessException, InvocationTargetException {
        Method methodA;
        if (f4018a != null) {
            return true;
        }
        String str = (String) aoo.f().a(aro.bK);
        if (str == null || str.length() == 0) {
            str = (ahmVar == null || (methodA = ahmVar.a("4o7tecxtkw7XaNt5hPj+0H1LvOi0SgxCIJTY9VcbazM/HSl/sFlxBFwnc8glnvoB", "RgSY6YxU2k1vLXOV3vapBnQwJDzYDlmX50wbm2tDcnw=")) == null) ? null : (String) methodA.invoke(null, new Object[0]);
            if (str == null) {
                return false;
            }
        }
        try {
            try {
                to toVarA = ts.a(afu.a(str, true));
                for (wz wzVar : uk.f5599a.a()) {
                    if (wzVar.b().isEmpty()) {
                        throw new GeneralSecurityException("Missing type_url.");
                    }
                    if (wzVar.a().isEmpty()) {
                        throw new GeneralSecurityException("Missing primitive_name.");
                    }
                    if (wzVar.e().isEmpty()) {
                        throw new GeneralSecurityException("Missing catalogue_name.");
                    }
                    tv.a(wzVar.b(), tv.a(wzVar.e()).a(wzVar.b(), wzVar.a(), wzVar.c()), wzVar.d());
                }
                f4018a = un.a(toVarA);
                return f4018a != null;
            } catch (GeneralSecurityException e) {
                return false;
            }
        } catch (IllegalArgumentException e2) {
            return false;
        }
    }
}
