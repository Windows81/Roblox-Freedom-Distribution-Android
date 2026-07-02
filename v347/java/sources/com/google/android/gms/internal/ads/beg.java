package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class beg implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ bef f4839a;

    beg(bef befVar) {
        this.f4839a = befVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Intent intentB = this.f4839a.b();
        com.google.android.gms.ads.internal.aw.e();
        jm.a(this.f4839a.f4836b, intentB);
    }
}
