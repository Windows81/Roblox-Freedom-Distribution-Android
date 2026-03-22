package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class bbg<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f4749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final agm f4750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final df f4751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4752d;

    private bbg(df dfVar) {
        this.f4752d = false;
        this.f4749a = null;
        this.f4750b = null;
        this.f4751c = dfVar;
    }

    private bbg(T t, agm agmVar) {
        this.f4752d = false;
        this.f4749a = t;
        this.f4750b = agmVar;
        this.f4751c = null;
    }

    public static <T> bbg<T> a(df dfVar) {
        return new bbg<>(dfVar);
    }

    public static <T> bbg<T> a(T t, agm agmVar) {
        return new bbg<>(t, agmVar);
    }
}
