package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class ek {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4265b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4266c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ei f4268e;

    public ek(ei eiVar, String str, boolean z) {
        this.f4268e = eiVar;
        com.google.android.gms.common.internal.aa.a(str);
        this.f4264a = str;
        this.f4265b = true;
    }

    public final void a(boolean z) {
        SharedPreferences.Editor editorEdit = this.f4268e.C().edit();
        editorEdit.putBoolean(this.f4264a, z);
        editorEdit.apply();
        this.f4267d = z;
    }

    public final boolean a() {
        if (!this.f4266c) {
            this.f4266c = true;
            this.f4267d = this.f4268e.C().getBoolean(this.f4264a, this.f4265b);
        }
        return this.f4267d;
    }
}
