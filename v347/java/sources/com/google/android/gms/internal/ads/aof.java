package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aof extends app {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.doubleclick.a f4318a;

    public aof(com.google.android.gms.ads.doubleclick.a aVar) {
        this.f4318a = aVar;
    }

    @Override // com.google.android.gms.internal.ads.apo
    public final void a(String str, String str2) {
        this.f4318a.onAppEvent(str, str2);
    }
}
