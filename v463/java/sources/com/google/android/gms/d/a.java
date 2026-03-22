package com.google.android.gms.d;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.common.f;
import com.google.android.gms.common.i;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.j;
import com.google.android.gms.common.l;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final f f3901a = f.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3902b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Method f3903c = null;

    public static void a(Context context) throws i, j {
        aa.a(context, "Context must not be null");
        f3901a.d(context, 11925000);
        try {
            Context contextF = l.f(context);
            if (contextF == null) {
                if (Log.isLoggable("ProviderInstaller", 6)) {
                    Log.e("ProviderInstaller", "Failed to get remote context");
                }
                throw new i(8);
            }
            synchronized (f3902b) {
                try {
                    try {
                        if (f3903c == null) {
                            f3903c = contextF.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", Context.class);
                        }
                        f3903c.invoke(null, contextF);
                    } catch (Exception e2) {
                        Throwable cause = e2.getCause();
                        if (Log.isLoggable("ProviderInstaller", 6)) {
                            String strValueOf = String.valueOf(cause == null ? e2.getMessage() : cause.getMessage());
                            Log.e("ProviderInstaller", strValueOf.length() != 0 ? "Failed to install provider: ".concat(strValueOf) : new String("Failed to install provider: "));
                        }
                        throw new i(8);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Resources.NotFoundException unused) {
            if (Log.isLoggable("ProviderInstaller", 6)) {
                Log.e("ProviderInstaller", "Failed to get remote context - resource not found");
            }
            throw new i(8);
        }
    }
}
