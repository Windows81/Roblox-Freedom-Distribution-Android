package com.google.android.gms.auth.api.credentials;

import android.app.Activity;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.common.internal.z;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends com.google.android.gms.common.api.e<a.C0077a> {
    e(Activity activity, a.C0077a c0077a) {
        super(activity, com.google.android.gms.auth.api.a.f3307d, c0077a, (com.google.android.gms.common.api.internal.m) new com.google.android.gms.common.api.internal.a());
    }

    public com.google.android.gms.f.g<Void> a(Credential credential) {
        return z.a(com.google.android.gms.auth.api.a.g.a(e(), credential));
    }

    public com.google.android.gms.f.g<a> a(CredentialRequest credentialRequest) {
        return z.a(com.google.android.gms.auth.api.a.g.a(e(), credentialRequest), new a());
    }

    public com.google.android.gms.f.g<Void> b(Credential credential) {
        return z.a(com.google.android.gms.auth.api.a.g.b(e(), credential));
    }
}
