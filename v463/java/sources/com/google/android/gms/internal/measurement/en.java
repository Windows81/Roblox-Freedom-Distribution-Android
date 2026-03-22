package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class en {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4279a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f4280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4281c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4282d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ei f4283e;

    public en(ei eiVar, String str, String str2) {
        this.f4283e = eiVar;
        com.google.android.gms.common.internal.aa.a(str);
        this.f4279a = str;
        this.f4280b = null;
    }

    public final String a() {
        if (!this.f4281c) {
            this.f4281c = true;
            this.f4282d = this.f4283e.C().getString(this.f4279a, null);
        }
        return this.f4282d;
    }

    public final void a(String str) {
        if (iq.b(str, this.f4282d)) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f4283e.C().edit();
        editorEdit.putString(this.f4279a, str);
        editorEdit.apply();
        this.f4282d = str;
    }
}
