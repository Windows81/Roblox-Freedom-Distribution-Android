package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class cu<O extends a.d> extends com.google.android.gms.common.api.e<O> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a.f f3623b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final co f3624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.common.internal.e f3625d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> f3626e;

    public cu(Context context, com.google.android.gms.common.api.a<O> aVar, Looper looper, a.f fVar, co coVar, com.google.android.gms.common.internal.e eVar, a.AbstractC0083a<? extends com.google.android.gms.signin.b, com.google.android.gms.signin.c> abstractC0083a) {
        super(context, aVar, looper);
        this.f3623b = fVar;
        this.f3624c = coVar;
        this.f3625d = eVar;
        this.f3626e = abstractC0083a;
        this.f3448a.a(this);
    }

    public final a.f a() {
        return this.f3623b;
    }

    @Override // com.google.android.gms.common.api.e
    public final a.f a(Looper looper, d.a<O> aVar) {
        this.f3624c.a(aVar);
        return this.f3623b;
    }

    @Override // com.google.android.gms.common.api.e
    public final bp a(Context context, Handler handler) {
        return new bp(context, handler, this.f3625d, this.f3626e);
    }
}
