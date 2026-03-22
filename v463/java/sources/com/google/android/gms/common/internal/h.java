package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class h implements DialogInterface.OnClickListener {
    public static h a(Activity activity, Intent intent, int i) {
        return new ag(intent, activity, i);
    }

    public static h a(com.google.android.gms.common.api.internal.h hVar, Intent intent, int i) {
        return new ah(intent, hVar, i);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
        } catch (ActivityNotFoundException e2) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e2);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
