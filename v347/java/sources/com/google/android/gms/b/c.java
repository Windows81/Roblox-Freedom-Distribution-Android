package com.google.android.gms.b;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.k;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private T f3295b;

    public static class a extends Exception {
        public a(String str) {
            super(str);
        }

        public a(String str, Throwable th) {
            super(str, th);
        }
    }

    protected c(String str) {
        this.f3294a = str;
    }

    protected final T a(Context context) throws a {
        if (this.f3295b == null) {
            w.a(context);
            Context contextE = k.e(context);
            if (contextE == null) {
                throw new a("Could not get remote context.");
            }
            try {
                this.f3295b = a((IBinder) contextE.getClassLoader().loadClass(this.f3294a).newInstance());
            } catch (ClassNotFoundException e) {
                throw new a("Could not load creator class.", e);
            } catch (IllegalAccessException e2) {
                throw new a("Could not access creator.", e2);
            } catch (InstantiationException e3) {
                throw new a("Could not instantiate creator.", e3);
            }
        }
        return this.f3295b;
    }

    protected abstract T a(IBinder iBinder);
}
