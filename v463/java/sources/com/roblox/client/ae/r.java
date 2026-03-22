package com.roblox.client.ae;

import android.content.Context;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class r {
    public static void a(Context context) {
        if (Build.VERSION.SDK_INT >= 21) {
            return;
        }
        try {
            com.google.android.gms.d.a.a(context);
        } catch (com.google.android.gms.common.i e2) {
            com.google.android.gms.common.e.a().a(context, e2.f3709a);
        } catch (com.google.android.gms.common.j e3) {
            com.google.android.gms.common.e.a().a(context, e3.a());
        }
    }
}
