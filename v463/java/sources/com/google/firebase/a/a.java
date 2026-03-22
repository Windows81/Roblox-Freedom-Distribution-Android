package com.google.firebase.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<T> f5121a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final T f5122b;

    public Class<T> a() {
        return this.f5121a;
    }

    public String toString() {
        return String.format("Event{type: %s, payload: %s}", this.f5121a, this.f5122b);
    }
}
