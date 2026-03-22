package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class h implements DialogInterface.OnClickListener {
    public static h a(Activity activity, Intent intent, int i) {
        return new ab(intent, activity, i);
    }

    public static h a(com.google.android.gms.common.api.internal.e eVar, Intent intent, int i) {
        return new ac(intent, eVar, i);
    }

    protected abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            a();
        } catch (ActivityNotFoundException e) {
            Log.e("DialogRedirect", "Failed to start resolution intent", e);
        } finally {
            dialogInterface.dismiss();
        }
    }
}
