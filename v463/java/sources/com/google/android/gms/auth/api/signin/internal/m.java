package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f3409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f3410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private GoogleSignInAccount f3411c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private GoogleSignInOptions f3412d;

    private m(Context context) {
        c cVarA = c.a(context);
        this.f3410b = cVarA;
        this.f3411c = cVarA.a();
        this.f3412d = this.f3410b.b();
    }

    public static synchronized m a(Context context) {
        return b(context.getApplicationContext());
    }

    private static synchronized m b(Context context) {
        if (f3409a == null) {
            f3409a = new m(context);
        }
        return f3409a;
    }

    public final synchronized void a() {
        this.f3410b.e();
        this.f3411c = null;
        this.f3412d = null;
    }

    public final synchronized void a(GoogleSignInOptions googleSignInOptions, GoogleSignInAccount googleSignInAccount) {
        this.f3410b.a(googleSignInAccount, googleSignInOptions);
        this.f3411c = googleSignInAccount;
        this.f3412d = googleSignInOptions;
    }
}
