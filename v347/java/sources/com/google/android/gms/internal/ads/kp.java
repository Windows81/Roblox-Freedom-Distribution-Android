package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class kp implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ ko f5222a;

    kp(ko koVar) {
        this.f5222a = koVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        com.google.android.gms.ads.internal.aw.e();
        jm.a(this.f5222a.f5218a, Uri.parse("https://support.google.com/dfp_premium/answer/7160685#push"));
    }
}
