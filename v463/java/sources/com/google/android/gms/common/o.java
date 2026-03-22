package com.google.android.gms.common;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class o extends androidx.fragment.app.b {
    private Dialog ag = null;
    private DialogInterface.OnCancelListener ah = null;

    public static o a(Dialog dialog, DialogInterface.OnCancelListener onCancelListener) {
        o oVar = new o();
        Dialog dialog2 = (Dialog) aa.a(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        oVar.ag = dialog2;
        if (onCancelListener != null) {
            oVar.ah = onCancelListener;
        }
        return oVar;
    }

    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        if (this.ag == null) {
            c(false);
        }
        return this.ag;
    }

    @Override // androidx.fragment.app.b
    public void a(androidx.fragment.app.g gVar, String str) {
        super.a(gVar, str);
    }

    @Override // androidx.fragment.app.b, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.ah;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }
}
