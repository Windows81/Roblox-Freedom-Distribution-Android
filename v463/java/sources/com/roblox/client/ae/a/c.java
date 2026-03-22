package com.roblox.client.ae.a;

import android.content.Context;
import android.view.View;
import com.roblox.client.ae.g;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends a {
    public c(Context context, String str, String str2, int i, int i2) {
        super(str, context, str2, i, i2);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        if (this.f5629b != null) {
            g.a(this.f5629b);
        }
    }
}
