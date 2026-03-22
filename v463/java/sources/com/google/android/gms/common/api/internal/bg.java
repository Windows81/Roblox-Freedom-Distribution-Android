package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class bg<O extends a.d> extends w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.api.e<O> f3533a;

    public bg(com.google.android.gms.common.api.e<O> eVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f3533a = eVar;
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, R extends com.google.android.gms.common.api.l, T extends c.a<R, A>> T a(T t) {
        return (T) this.f3533a.a(t);
    }

    @Override // com.google.android.gms.common.api.f
    public final void a(bw bwVar) {
    }

    @Override // com.google.android.gms.common.api.f
    public final Context b() {
        return this.f3533a.g();
    }

    @Override // com.google.android.gms.common.api.f
    public final <A extends a.b, T extends c.a<? extends com.google.android.gms.common.api.l, A>> T b(T t) {
        return (T) this.f3533a.b(t);
    }

    @Override // com.google.android.gms.common.api.f
    public final void b(bw bwVar) {
    }

    @Override // com.google.android.gms.common.api.f
    public final Looper c() {
        return this.f3533a.f();
    }
}
