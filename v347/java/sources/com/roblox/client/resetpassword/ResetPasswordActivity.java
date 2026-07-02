package com.roblox.client.resetpassword;

import android.content.Intent;
import android.os.Bundle;
import com.roblox.client.RobloxSettings;
import com.roblox.client.RobloxWebActivity;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: classes.dex */
public class ResetPasswordActivity extends RobloxWebActivity {
    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        intent.putExtra("USING_LOGIN_WEB_URL", true);
        intent.putExtra("URL_EXTRA", RobloxSettings.passwordUsernameResetUrl());
        intent.putExtra("TITLE_EXTRA", "");
        super.onCreate(bundle);
    }

    @j(a = ThreadMode.MAIN)
    public void onCloseOverlayEvent(com.roblox.client.e.j jVar) {
        finish();
    }
}
