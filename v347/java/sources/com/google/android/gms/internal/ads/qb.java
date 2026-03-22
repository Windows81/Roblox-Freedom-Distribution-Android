package com.google.android.gms.internal.ads;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class qb implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ JsPromptResult f5461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ EditText f5462b;

    qb(JsPromptResult jsPromptResult, EditText editText) {
        this.f5461a = jsPromptResult;
        this.f5462b = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f5461a.confirm(this.f5462b.getText().toString());
    }
}
