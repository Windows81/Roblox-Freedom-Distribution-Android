package com.google.android.gms.auth.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.h;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class c extends a.AbstractC0083a<h, GoogleSignInOptions> {
    c() {
    }

    @Override // com.google.android.gms.common.api.a.AbstractC0083a
    public final /* synthetic */ a.f a(Context context, Looper looper, com.google.android.gms.common.internal.e eVar, GoogleSignInOptions googleSignInOptions, f.b bVar, f.c cVar) {
        return new h(context, looper, eVar, googleSignInOptions, bVar, cVar);
    }

    @Override // com.google.android.gms.common.api.a.e
    public final /* synthetic */ List a(Object obj) {
        GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
        return googleSignInOptions == null ? Collections.emptyList() : googleSignInOptions.a();
    }
}
