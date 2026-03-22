package com.roblox.client.util.a;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c extends a {
    public c(Context context, String str, String str2, int i, int i2) {
        super(str, context, str2, i, i2);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.f7915b != null) {
            com.roblox.client.util.e.a(this.f7915b);
        }
    }
}
