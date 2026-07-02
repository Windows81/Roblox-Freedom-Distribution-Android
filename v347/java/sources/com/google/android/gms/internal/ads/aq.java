package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
@cm
public class aq extends ai {
    aq(Context context, ij ijVar, qd qdVar, ap apVar) {
        super(context, ijVar, qdVar, apVar);
    }

    @Override // com.google.android.gms.internal.ads.ai
    protected final void a() {
        if (this.f4036c.f5765d != -2) {
            return;
        }
        this.f4035b.v().a(this);
        d();
        jd.b("Loading HTML in WebView.");
        this.f4035b.a(this.f4036c.f5762a, this.f4036c.f5763b, (String) null);
    }

    protected void d() {
    }
}
