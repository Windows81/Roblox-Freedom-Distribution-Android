package com.roblox.client.chat;

import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.e.w;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class j extends b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected com.roblox.client.j.c f6629b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Toolbar f6630c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f6631d;
    private View e;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_chat_empty, viewGroup, false);
        a(viewInflate);
        this.f6631d = viewInflate.findViewById(R.id.chat_shadow_top);
        this.e = viewInflate.findViewById(R.id.chat_shadow_center);
        this.f6630c = (Toolbar) viewInflate.findViewById(R.id.toolbar_chat);
        Bundle arguments = getArguments();
        boolean z = arguments != null ? arguments.getBoolean("SHOW_SHADOWS_EXTRA", false) : false;
        this.f6631d.setVisibility(z ? 0 : 8);
        this.e.setVisibility(z ? 0 : 8);
        if (!RobloxSettings.isPhone()) {
            a(this.f6630c.getMenu(), getActivity().getMenuInflater());
        }
        return viewInflate;
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        f();
    }

    @Override // android.support.v4.app.Fragment
    public void onHiddenChanged(boolean z) {
        if (!z) {
            f();
        }
    }

    protected void a(Menu menu, MenuInflater menuInflater) {
        this.f6629b = new com.roblox.client.j.c(this);
        this.f6629b.a(menu, menuInflater);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUnreadNotificationCountEvent(w wVar) {
        com.roblox.client.util.g.a("ESCF.onUnreadNotificationCountEvent() " + wVar.a());
        f();
    }

    private void f() {
        if (this.f6629b != null) {
            this.f6629b.b();
        }
    }
}
