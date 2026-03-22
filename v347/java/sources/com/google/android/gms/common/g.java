package com.google.android.gms.common;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.q;
import com.google.android.gms.common.internal.w;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import javax.annotation.CheckReturnValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@CheckReturnValue
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f3431a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Context f3432b;

    static abstract class a extends q.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3433a;

        protected a(byte[] bArr) {
            w.b(bArr.length == 25);
            this.f3433a = Arrays.hashCode(bArr);
        }

        protected static byte[] a(String str) {
            try {
                return str.getBytes("ISO-8859-1");
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }

        abstract byte[] a();

        @Override // com.google.android.gms.common.internal.q
        public com.google.android.gms.b.a b() {
            return com.google.android.gms.b.b.a(a());
        }

        @Override // com.google.android.gms.common.internal.q
        public int c() {
            return hashCode();
        }

        public boolean equals(Object obj) {
            com.google.android.gms.b.a aVarB;
            if (obj == null || !(obj instanceof com.google.android.gms.common.internal.q)) {
                return false;
            }
            try {
                com.google.android.gms.common.internal.q qVar = (com.google.android.gms.common.internal.q) obj;
                if (qVar.c() == hashCode() && (aVarB = qVar.b()) != null) {
                    return Arrays.equals(a(), (byte[]) com.google.android.gms.b.b.a(aVarB));
                }
                return false;
            } catch (RemoteException e) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e);
                return false;
            }
        }

        public int hashCode() {
            return this.f3433a;
        }
    }

    static synchronized void a(Context context) {
        if (f3432b != null) {
            Log.w("GoogleCertificates", "GoogleCertificates has been initialized already");
        } else if (context != null) {
            f3432b = context.getApplicationContext();
        }
    }
}
