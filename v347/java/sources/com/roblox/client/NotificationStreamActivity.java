package com.roblox.client;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.roblox.client.e.q;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class NotificationStreamActivity extends RobloxWebActivity {
    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            intent.putExtra("URL_EXTRA", RobloxSettings.notificationStreamUrl());
            if (b.s()) {
                intent.putExtra("TITLE_EXTRA", com.roblox.client.locale.g.a(this).a("CommonUI_Features_Label_Notifications"));
            } else {
                intent.putExtra("TITLE_EXTRA", getString(R.string.CommonUI_Features_Label_Notifications));
            }
        }
        super.onCreate(bundle);
        a(((Toolbar) findViewById(R.id.toolbar)).getMenu(), getMenuInflater());
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_notification_stream, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_settings);
        menuItemFindItem.setIcon(com.roblox.client.components.p.a(this, R.drawable.icon_settings_off, R.drawable.icon_settings_on));
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.roblox.client.NotificationStreamActivity.1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                NotificationStreamActivity.this.a("SETTINGS_TAG", RobloxSettings.getSettingsNotificationsPagePath());
                return false;
            }
        });
    }

    public void a(String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("FEATURE_EXTRA", str);
        intent.putExtra("PATH_EXTRA", str2);
        setResult(-1, intent);
        finish();
    }

    @Override // com.roblox.client.RobloxWebActivity
    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(q qVar) {
        String strProfileUrl;
        if ("PROFILE_TAG".equals(qVar.f6907a)) {
            if (qVar.f6909c != -1) {
                strProfileUrl = RobloxSettings.baseUrl() + "users/" + qVar.f6909c + "/profile/";
            } else {
                strProfileUrl = RobloxSettings.profileUrl();
            }
            a(qVar.f6907a, strProfileUrl);
            return;
        }
        a(qVar.f6907a, qVar.f6908b);
    }
}
