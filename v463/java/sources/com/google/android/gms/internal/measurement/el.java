package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class el {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f4270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f4271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f4272d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final /* synthetic */ ei f4273e;

    public el(ei eiVar, String str, long j) {
        this.f4273e = eiVar;
        com.google.android.gms.common.internal.aa.a(str);
        this.f4269a = str;
        this.f4270b = j;
    }

    public final long a() {
        if (!this.f4271c) {
            this.f4271c = true;
            this.f4272d = this.f4273e.C().getLong(this.f4269a, this.f4270b);
        }
        return this.f4272d;
    }

    public final void a(long j) {
        SharedPreferences.Editor editorEdit = this.f4273e.C().edit();
        editorEdit.putLong(this.f4269a, j);
        editorEdit.apply();
        this.f4272d = j;
    }
}
