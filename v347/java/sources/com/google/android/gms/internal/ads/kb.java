package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@TargetApi(19)
public class kb extends jz {
    @Override // com.google.android.gms.internal.ads.jz, com.google.android.gms.internal.ads.js
    public final boolean a(View view) {
        return view.isAttachedToWindow();
    }

    @Override // com.google.android.gms.internal.ads.js
    public final ViewGroup.LayoutParams d() {
        return new ViewGroup.LayoutParams(-1, -1);
    }
}
