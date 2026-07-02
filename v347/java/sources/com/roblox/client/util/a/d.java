package com.roblox.client.util.a;

import android.content.Context;
import android.view.View;
import com.roblox.client.RobloxSettings;
import com.roblox.client.e.q;

/* JADX INFO: loaded from: classes.dex */
public class d extends a {
    public d(Context context, String str, String str2, int i, int i2) {
        super(str, context, str2, i, i2);
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        q qVar = new q("SETTINGS_TAG");
        qVar.a(RobloxSettings.getSettingsPrivacyPagePath());
        org.greenrobot.eventbus.c.a().c(qVar);
    }
}
