package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static com.google.android.gms.common.b.a f3407a = new com.google.android.gms.common.b.a("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        f3407a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    public static com.google.android.gms.common.api.g<Status> a(com.google.android.gms.common.api.f fVar, Context context, boolean z) {
        f3407a.a("Revoking access", new Object[0]);
        String strC = c.a(context).c();
        a(context);
        return z ? e.a(strC) : fVar.b(new j(fVar));
    }

    private static void a(Context context) {
        m.a(context).a();
        Iterator<com.google.android.gms.common.api.f> it = com.google.android.gms.common.api.f.a().iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        com.google.android.gms.common.api.internal.d.b();
    }
}
