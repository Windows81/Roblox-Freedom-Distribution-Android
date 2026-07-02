package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* JADX INFO: loaded from: classes.dex */
final class pz implements DialogInterface.OnCancelListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f5459a;

    pz(JsPromptResult jsPromptResult) {
        this.f5459a = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.f5459a.cancel();
    }
}
