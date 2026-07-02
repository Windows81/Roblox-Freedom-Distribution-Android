package com.roblox.client.j;

import android.os.Bundle;
import android.support.v4.app.h;
import android.support.v4.view.g;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.i;
import com.roblox.client.k;
import com.roblox.client.m;
import com.roblox.client.n;

/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f7233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7234b;

    public d(m mVar, String str) {
        this(mVar.getActivity(), str);
    }

    public d(h hVar, String str) {
        this.f7233a = hVar;
        this.f7234b = str;
    }

    public MenuItem a(Menu menu, MenuInflater menuInflater) {
        menuInflater.inflate(R.menu.menu_button_robux, menu);
        MenuItem menuItemFindItem = menu.findItem(R.id.action_robux);
        g.a(menuItemFindItem).setOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.j.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.a();
            }
        });
        return menuItemFindItem;
    }

    public void a() {
        if (this.f7233a != null) {
            if (!(this.f7233a instanceof k) || !((k) this.f7233a).p()) {
                n nVar = new n();
                Bundle bundle = new Bundle();
                bundle.putBoolean("showRobux", true);
                bundle.putInt("dialogHeight", b());
                nVar.setArguments(bundle);
                nVar.c(RobloxSettings.robuxOnlyUrl());
                nVar.setStyle(0, R.style.Theme_Roblox_WebDialogCenteredTitle);
                nVar.show(this.f7233a.e(), "dialog");
                i.a("nativeMain", "robux", this.f7234b);
            }
        }
    }

    public int b() {
        View viewFindViewById = this.f7233a.findViewById(android.R.id.content);
        com.roblox.engine.components.b bVarA = com.roblox.engine.components.b.a(viewFindViewById.getRootView(), this.f7233a.getWindowManager(), null, viewFindViewById);
        return ((bVarA.f7968b - bVarA.f) - bVarA.f7969c) - this.f7233a.getResources().getDimensionPixelSize(R.dimen.mainTabWidgetHeight);
    }
}
