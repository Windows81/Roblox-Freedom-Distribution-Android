package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class ko implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f5218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ String f5219b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ boolean f5220c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ boolean f5221d;

    ko(kn knVar, Context context, String str, boolean z, boolean z2) {
        this.f5218a = context;
        this.f5219b = str;
        this.f5220c = z;
        this.f5221d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f5218a);
        builder.setMessage(this.f5219b);
        if (this.f5220c) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.f5221d) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new kp(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
