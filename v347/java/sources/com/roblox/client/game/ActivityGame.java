package com.roblox.client.game;

import android.os.Bundle;
import com.roblox.client.ActivityGlView;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class ActivityGame extends ActivityGlView {
    @Override // com.roblox.client.ActivityGlView, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        g.b("ActivityGame", "onCreate: savedInstanceState = " + bundle);
        super.onCreate(bundle);
    }
}
