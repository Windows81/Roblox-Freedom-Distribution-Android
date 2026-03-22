package com.google.android.gms.common.api.internal;

import com.google.android.gms.signin.internal.SignInResponse;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class ai extends aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ aa f3489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ SignInResponse f3490b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ai(ah ahVar, au auVar, aa aaVar, SignInResponse signInResponse) {
        super(auVar);
        this.f3489a = aaVar;
        this.f3490b = signInResponse;
    }

    @Override // com.google.android.gms.common.api.internal.aw
    public final void a() {
        this.f3489a.a(this.f3490b);
    }
}
