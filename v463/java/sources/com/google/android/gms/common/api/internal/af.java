package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class af extends aw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ d.InterfaceC0090d f3485a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    af(ad adVar, au auVar, d.InterfaceC0090d interfaceC0090d) {
        super(auVar);
        this.f3485a = interfaceC0090d;
    }

    @Override // com.google.android.gms.common.api.internal.aw
    public final void a() {
        this.f3485a.a(new ConnectionResult(16, null));
    }
}
