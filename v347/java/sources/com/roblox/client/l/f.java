package com.roblox.client.l;

import android.os.Bundle;
import com.roblox.client.k;

/* JADX INFO: loaded from: classes.dex */
public class f extends k {
    protected e m;

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(d.ON_CREATE);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        a(d.ON_START);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        a(d.ON_RESUME);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onPause() {
        super.onPause();
        a(d.ON_PAUSE);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        super.onStop();
        a(d.ON_STOP);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        a(d.ON_DESTROY);
    }

    private void a(d dVar) {
        if (this.m != null) {
            this.m.a(dVar);
        } else {
            com.roblox.client.util.g.d("RobloxMVPActivity", "Lifecycle listener is null.");
        }
    }
}
