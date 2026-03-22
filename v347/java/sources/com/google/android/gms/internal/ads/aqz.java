package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class aqz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f4379a;

    public aqz(Context context) {
        com.google.android.gms.common.internal.w.a(context, "Context can not be null");
        this.f4379a = context;
    }

    private final boolean a(Intent intent) {
        com.google.android.gms.common.internal.w.a(intent, "Intent can not be null");
        return !this.f4379a.getPackageManager().queryIntentActivities(intent, 0).isEmpty();
    }

    public final boolean a() {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        return a(intent);
    }

    public final boolean b() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("sms:"));
        return a(intent);
    }

    public final boolean c() {
        return ((Boolean) lp.a(this.f4379a, new ara())).booleanValue() && com.google.android.gms.common.c.c.b(this.f4379a).a("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    @TargetApi(14)
    public final boolean d() {
        return a(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
    }
}
