package com.roblox.client;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.roblox.client.e.s;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class OverlayActivity extends RobloxWebActivity {
    Button m;

    @Override // com.roblox.client.RobloxWebActivity, com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            intent.putExtra("URL_EXTRA", intent.getStringExtra("URL_EXTRA"));
            intent.putExtra("TITLE_EXTRA", intent.getStringExtra("TITLE_EXTRA"));
        }
        super.onCreate(bundle);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        toolbar.setBackgroundDrawable(new ColorDrawable(android.support.v4.a.c.c(this, R.color.RbxGray2)));
        a(toolbar.getMenu(), getMenuInflater());
    }

    private void a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_button_overlay, menu);
        this.m = (Button) ((LinearLayout) menu.findItem(R.id.action_overlay_submit_button).getActionView()).findViewById(R.id.submit_button);
        this.m.setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.OverlayActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                com.roblox.client.hybrid.a.g.a();
            }
        });
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onCloseOverlayEvent(com.roblox.client.e.j jVar) {
        finish();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onOverlayButtonStateEvent(s sVar) {
        if (this.m != null) {
            String strA = sVar.a();
            if ("enabled".equals(strA)) {
                this.m.setVisibility(0);
                this.m.setEnabled(true);
            } else if ("disabled".equals(strA)) {
                this.m.setVisibility(0);
                this.m.setEnabled(false);
            } else if ("hidden".equals(strA)) {
                this.m.setVisibility(4);
            }
        }
    }
}
