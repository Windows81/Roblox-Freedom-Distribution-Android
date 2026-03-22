package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class n extends android.support.v4.app.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f3530a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private DialogInterface.OnCancelListener f3531b = null;

    public static n a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        n nVar = new n();
        Dialog dialog2 = (Dialog) w.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        nVar.f3530a = dialog2;
        if (onCancelListener != null) {
            nVar.f3531b = onCancelListener;
        }
        return nVar;
    }

    @Override // android.support.v4.app.g, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        if (this.f3531b != null) {
            this.f3531b.onCancel(dialogInterface);
        }
    }

    @Override // android.support.v4.app.g
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f3530a == null) {
            setShowsDialog(false);
        }
        return this.f3530a;
    }

    @Override // android.support.v4.app.g
    public void show(android.support.v4.app.l lVar, String str) {
        super.show(lVar, str);
    }
}
