package com.google.android.gms.common.api.internal;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.internal.c;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class al implements au {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final av f3493a;

    public al(av avVar) {
        this.f3493a = avVar;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        this.f3493a.f3514d.f3494a.add(t);
        return t;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a() {
        Iterator<a.f> it = this.f3493a.f3511a.values().iterator();
        while (it.hasNext()) {
            it.next().g();
        }
        this.f3493a.f3514d.f3496c = Collections.emptySet();
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(int i) {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(Bundle bundle) {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void a(ConnectionResult connectionResult, com.google.android.gms.common.api.a<?> aVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final boolean b() {
        return true;
    }

    @Override // com.google.android.gms.common.api.internal.au
    public final void c() {
        this.f3493a.d();
    }
}
