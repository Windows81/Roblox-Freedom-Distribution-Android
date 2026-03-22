package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(18)
public class jz extends jy {
    @Override // com.google.android.gms.internal.ads.js
    public boolean a(View view) {
        return super.a(view) || view.getWindowId() != null;
    }

    @Override // com.google.android.gms.internal.ads.js
    public final int c() {
        return 14;
    }
}
