package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import com.google.android.gms.common.api.internal.c.a;
import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cd<A extends c.a<? extends com.google.android.gms.common.api.l, a.b>> extends ar {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final A f3583a;

    public cd(int i, A a2) {
        super(i);
        this.f3583a = a2;
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(Status status) {
        this.f3583a.b(status);
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(d.a<?> aVar) throws DeadObjectException {
        try {
            this.f3583a.b(aVar.b());
        } catch (RuntimeException e2) {
            a(e2);
        }
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(r rVar, boolean z) {
        rVar.a(this.f3583a, z);
    }

    @Override // com.google.android.gms.common.api.internal.ar
    public final void a(RuntimeException runtimeException) {
        String simpleName = runtimeException.getClass().getSimpleName();
        String localizedMessage = runtimeException.getLocalizedMessage();
        StringBuilder sb = new StringBuilder(String.valueOf(simpleName).length() + 2 + String.valueOf(localizedMessage).length());
        sb.append(simpleName);
        sb.append(": ");
        sb.append(localizedMessage);
        this.f3583a.b(new Status(10, sb.toString()));
    }
}
