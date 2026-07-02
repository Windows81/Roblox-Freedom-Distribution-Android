package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class lm extends iy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final mk f5264a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f5265b;

    public lm(Context context, String str, String str2) {
        this(str2, com.google.android.gms.ads.internal.aw.e().b(context, str));
    }

    private lm(String str, String str2) {
        this.f5264a = new mk(str2);
        this.f5265b = str;
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void a() {
        this.f5264a.a(this.f5265b);
    }

    @Override // com.google.android.gms.internal.ads.iy
    public final void b_() {
    }
}
