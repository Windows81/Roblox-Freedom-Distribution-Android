package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(17)
public final class lr {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static lr f5270b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    String f5271a;

    private lr() {
    }

    public static lr a() {
        if (f5270b == null) {
            f5270b = new lr();
        }
        return f5270b;
    }
}
