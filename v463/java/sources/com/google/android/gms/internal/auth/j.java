package com.google.android.gms.internal.auth;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.auth.api.a;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
import com.google.android.gms.common.internal.aa;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class j {
    public static PendingIntent a(Context context, a.C0077a c0077a, HintRequest hintRequest) {
        aa.a(context, "context must not be null");
        aa.a(hintRequest, "request must not be null");
        PasswordSpecification passwordSpecificationA = (c0077a == null || c0077a.a() == null) ? PasswordSpecification.f3358a : c0077a.a();
        Intent intentPutExtra = new Intent("com.google.android.gms.auth.api.credentials.PICKER").putExtra("com.google.android.gms.credentials.hintRequestVersion", 2).putExtra("com.google.android.gms.credentials.RequestType", "Hints").putExtra("com.google.android.gms.credentials.ClaimedCallingPackage", (String) null);
        com.google.android.gms.common.internal.safeparcel.c.a(passwordSpecificationA, intentPutExtra, "com.google.android.gms.credentials.PasswordSpecification");
        com.google.android.gms.common.internal.safeparcel.c.a(hintRequest, intentPutExtra, "com.google.android.gms.credentials.HintRequest");
        return PendingIntent.getActivity(context, 2000, intentPutExtra, 134217728);
    }
}
