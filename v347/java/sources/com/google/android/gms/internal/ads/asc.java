package com.google.android.gms.internal.ads;

import android.view.View;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class asc extends asg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.g f4428a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4429b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f4430c;

    public asc(com.google.android.gms.ads.internal.g gVar, String str, String str2) {
        this.f4428a = gVar;
        this.f4429b = str;
        this.f4430c = str2;
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final String a() {
        return this.f4429b;
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void a(com.google.android.gms.b.a aVar) {
        if (aVar == null) {
            return;
        }
        this.f4428a.a_((View) com.google.android.gms.b.b.a(aVar));
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final String b() {
        return this.f4430c;
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void c() {
        this.f4428a.e_();
    }

    @Override // com.google.android.gms.internal.ads.asf
    public final void d() {
        this.f4428a.f_();
    }
}
