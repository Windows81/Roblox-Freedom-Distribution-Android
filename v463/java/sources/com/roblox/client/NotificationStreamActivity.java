package com.roblox.client;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.roblox.client.o;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class NotificationStreamActivity extends RobloxWebActivity {
    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            intent.putExtra("URL_EXTRA", u.ak());
            if (b.n()) {
                intent.putExtra("TITLE_EXTRA", com.roblox.client.locale.j.a(this).a("CommonUI_Features_Label_Notifications"));
            } else {
                intent.putExtra("TITLE_EXTRA", getString(o.j.CommonUI_Features_Label_Notifications));
            }
        }
        super.onCreate(bundle);
        a(this.s.getMenu(), getMenuInflater());
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        int i;
        menuInflater.inflate(o.h.menu_notification_stream, menu);
        MenuItem menuItemFindItem = menu.findItem(o.f.action_settings);
        int i2 = AnonymousClass2.f5569a[new com.roblox.client.ab.f().c().ordinal()];
        if (i2 == 1) {
            i = o.e.topbar_ic_gear_light;
        } else if (i2 == 2) {
            i = o.e.topbar_ic_gear;
        } else {
            i = o.e.topbar_ic_gear_dark;
        }
        menuItemFindItem.setIcon(i);
        menuItemFindItem.setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener() { // from class: com.roblox.client.NotificationStreamActivity.1
            @Override // android.view.MenuItem.OnMenuItemClickListener
            public boolean onMenuItemClick(MenuItem menuItem) {
                NotificationStreamActivity.this.a("SETTINGS_TAG", u.V());
                return false;
            }
        });
    }

    /* JADX INFO: renamed from: com.roblox.client.NotificationStreamActivity$2, reason: invalid class name */
    static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f5569a;

        static {
            int[] iArr = new int[com.roblox.client.ab.e.values().length];
            f5569a = iArr;
            try {
                iArr[com.roblox.client.ab.e.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f5569a[com.roblox.client.ab.e.CLASSIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f5569a[com.roblox.client.ab.e.DARK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
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
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        a(jVar.f6425a, jVar.f6426b);
    }

    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.q, com.roblox.client.ab.d.a
    public void a(com.roblox.client.ab.e eVar) {
        Menu menu = this.s.getMenu();
        menu.clear();
        a(menu, getMenuInflater());
        super.a(eVar);
    }
}
