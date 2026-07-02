package com.roblox.client.j;

import android.os.Bundle;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i;
import com.roblox.client.m;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private m f7216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7217b;

    public a(m mVar, String str) {
        this.f7216a = mVar;
        this.f7217b = str;
    }

    public void a() {
        if (this.f7216a != null && !this.f7216a.alertIfNetworkNotConnected()) {
            n nVar = new n();
            Bundle bundle = new Bundle();
            bundle.putBoolean("showBC", true);
            bundle.putInt("dialogHeight", this.f7216a.getView().getHeight());
            nVar.setArguments(bundle);
            nVar.c(RobloxSettings.buildersClubOnlyUrl());
            nVar.setStyle(1, nVar.getTheme());
            nVar.show(this.f7216a.getFragmentManager(), "dialog");
            i.a("nativeMain", "buildersClub", this.f7217b);
        }
    }
}
