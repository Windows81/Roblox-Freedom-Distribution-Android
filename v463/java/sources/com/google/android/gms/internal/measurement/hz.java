package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
final class hz extends df {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ hy f4525a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    hz(hy hyVar, fz fzVar) {
        super(fzVar);
        this.f4525a = hyVar;
    }

    @Override // com.google.android.gms.internal.measurement.df
    public final void a() {
        hy hyVar = this.f4525a;
        hyVar.c();
        hyVar.q().C().a("Session started, time", Long.valueOf(hyVar.j().b()));
        hyVar.r().m.a(false);
        hyVar.e().b("auto", "_s", new Bundle());
        hyVar.r().n.a(hyVar.j().a());
    }
}
