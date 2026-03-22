package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f3829a = new an();

    public interface a<R extends com.google.android.gms.common.api.l, T> {
        T a(R r);
    }

    public interface b {
        com.google.android.gms.common.api.b a(Status status);
    }

    public static <R extends com.google.android.gms.common.api.l> com.google.android.gms.f.g<Void> a(com.google.android.gms.common.api.g<R> gVar) {
        return a(gVar, new aq());
    }

    public static <R extends com.google.android.gms.common.api.l, T extends com.google.android.gms.common.api.k<R>> com.google.android.gms.f.g<T> a(com.google.android.gms.common.api.g<R> gVar, T t) {
        return a(gVar, new ap(t));
    }

    public static <R extends com.google.android.gms.common.api.l, T> com.google.android.gms.f.g<T> a(com.google.android.gms.common.api.g<R> gVar, a<R, T> aVar) {
        return a(gVar, aVar, f3829a);
    }

    public static <R extends com.google.android.gms.common.api.l, T> com.google.android.gms.f.g<T> a(com.google.android.gms.common.api.g<R> gVar, a<R, T> aVar, b bVar) {
        com.google.android.gms.f.h hVar = new com.google.android.gms.f.h();
        gVar.a(new ao(gVar, hVar, aVar, bVar));
        return hVar.a();
    }
}
