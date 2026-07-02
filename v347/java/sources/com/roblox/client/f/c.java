package com.roblox.client.f;

import android.view.Menu;
import android.view.MenuInflater;
import com.roblox.client.R;
import com.roblox.client.components.p;
import com.roblox.client.i.h;

/* JADX INFO: loaded from: classes.dex */
public class c extends d {
    @Override // com.roblox.client.f.d
    protected void a(Menu menu, MenuInflater menuInflater) {
        super.a(menu, menuInflater);
        a(h.a().b() != -1);
    }

    public void a(boolean z) {
        a(R.id.action_robux, z);
        a(R.id.action_builder_club, z);
        a(R.id.action_notification_stream, z);
    }

    public void e() {
        p.a(this.g, getContext());
    }
}
