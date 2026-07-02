package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class hx implements akj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f5095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f5096b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f5097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f5098d;

    public hx(Context context, String str) {
        this.f5095a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.f5097c = str;
        this.f5098d = false;
        this.f5096b = new Object();
    }

    @Override // com.google.android.gms.internal.ads.akj
    public final void a(aki akiVar) {
        a(akiVar.f4119a);
    }

    public final void a(String str) {
        this.f5097c = str;
    }

    public final void a(boolean z) {
        if (com.google.android.gms.ads.internal.aw.B().a(this.f5095a)) {
            synchronized (this.f5096b) {
                if (this.f5098d == z) {
                    return;
                }
                this.f5098d = z;
                if (TextUtils.isEmpty(this.f5097c)) {
                    return;
                }
                if (this.f5098d) {
                    com.google.android.gms.ads.internal.aw.B().a(this.f5095a, this.f5097c);
                } else {
                    com.google.android.gms.ads.internal.aw.B().b(this.f5095a, this.f5097c);
                }
            }
        }
    }
}
