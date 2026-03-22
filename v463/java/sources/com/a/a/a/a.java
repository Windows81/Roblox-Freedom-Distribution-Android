package com.a.a.a;

import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a {

    /* JADX INFO: renamed from: com.a.a.a.a$a, reason: collision with other inner class name */
    public static final class C0061a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f2873a;

        private C0061a(Context context) {
            this.f2873a = context;
        }

        public a a() {
            Context context = this.f2873a;
            if (context != null) {
                return new b(context);
            }
            throw new IllegalArgumentException("Please provide a valid Context.");
        }
    }

    public static C0061a a(Context context) {
        return new C0061a(context);
    }

    public abstract void a(c cVar);

    public abstract boolean a();

    public abstract void b();

    public abstract d c() throws RemoteException;
}
