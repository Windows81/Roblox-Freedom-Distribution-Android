package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.common.internal.s;
import com.google.android.gms.common.internal.v;
import com.google.android.gms.dynamite.DynamiteModule;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@CheckReturnValue
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile com.google.android.gms.common.internal.v f3705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f3706b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Context f3707c;

    static abstract class a extends s.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3708a;

        protected a(byte[] bArr) {
            aa.b(bArr.length == 25);
            this.f3708a = Arrays.hashCode(bArr);
        }

        protected static byte[] a(String str) {
            try {
                return str.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e2) {
                throw new AssertionError(e2);
            }
        }

        abstract byte[] a();

        @Override // com.google.android.gms.common.internal.s
        public com.google.android.gms.c.a b() {
            return com.google.android.gms.c.b.a(a());
        }

        @Override // com.google.android.gms.common.internal.s
        public int c() {
            return hashCode();
        }

        public boolean equals(Object obj) {
            com.google.android.gms.c.a aVarB;
            if (obj != null && (obj instanceof com.google.android.gms.common.internal.s)) {
                try {
                    com.google.android.gms.common.internal.s sVar = (com.google.android.gms.common.internal.s) obj;
                    if (sVar.c() == hashCode() && (aVarB = sVar.b()) != null) {
                        return Arrays.equals(a(), (byte[]) com.google.android.gms.c.b.a(aVarB));
                    }
                    return false;
                } catch (RemoteException e2) {
                    Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                }
            }
            return false;
        }

        public int hashCode() {
            return this.f3708a;
        }
    }

    static v a(String str, a aVar, boolean z) {
        String str2;
        try {
            a();
            aa.a(f3707c);
        } catch (DynamiteModule.a e2) {
            e = e2;
            str2 = "module init";
        }
        try {
            if (f3705a.a(new GoogleCertificatesQuery(str, aVar, z), com.google.android.gms.c.b.a(f3707c.getPackageManager()))) {
                return v.a();
            }
            return v.a(str, aVar, z, !z && a(str, aVar, true).f3894a);
        } catch (RemoteException e3) {
            e = e3;
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
            str2 = "module call";
            return v.a(str2, e);
        }
    }

    private static void a() throws DynamiteModule.a {
        if (f3705a != null) {
            return;
        }
        aa.a(f3707c);
        synchronized (f3706b) {
            if (f3705a == null) {
                f3705a = v.a.a(DynamiteModule.a(f3707c, DynamiteModule.f3907d, "com.google.android.gms.googlecertificates").a("com.google.android.gms.common.GoogleCertificatesImpl"));
            }
        }
    }

    static synchronized void a(Context context) {
        if (f3707c != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f3707c = context.getApplicationContext();
        }
    }
}
