package com.roblox.client.resetpassword;

import android.content.Intent;
import android.os.Bundle;
import com.roblox.client.RobloxWebActivity;
import com.roblox.client.l.d;
import com.roblox.client.u;
import org.greenrobot.eventbus.ThreadMode;
import org.greenrobot.eventbus.j;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ResetPasswordActivity extends RobloxWebActivity {
    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        intent.putExtra("USING_LOGIN_WEB_URL", true);
        intent.putExtra("URL_EXTRA", u.ah());
        intent.putExtra("TITLE_EXTRA", "");
        super.onCreate(bundle);
    }

    @Override // com.roblox.client.RobloxWebActivity
    @j(a = ThreadMode.MAIN)
    public void onCloseOverlayEvent(d dVar) {
        finish();
    }
}
