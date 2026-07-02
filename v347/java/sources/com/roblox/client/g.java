package com.roblox.client;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.roblox.client.e.q;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class g extends n {
    @Override // com.roblox.client.n, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(R.layout.notification_stream_dialog_shell, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) viewGroup2.findViewById(R.id.frame_container);
        frameLayout.addView(super.onCreateView(layoutInflater, frameLayout, bundle));
        return viewGroup2;
    }

    @Override // com.roblox.client.n, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            attributes.flags |= 2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.roblox.client.n, android.support.v4.app.g, android.support.v4.app.Fragment
    public void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.e.p pVar) {
        if (getShowsDialog()) {
            getDialog().dismiss();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(q qVar) {
        if (getShowsDialog()) {
            getDialog().dismiss();
        }
    }
}
