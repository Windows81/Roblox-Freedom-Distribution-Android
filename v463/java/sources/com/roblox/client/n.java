package com.roblox.client;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.roblox.client.o;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n extends v {
    @Override // com.roblox.client.v, androidx.fragment.app.Fragment
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(o.g.notification_stream_dialog_shell, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) viewGroup2.findViewById(o.f.frame_container);
        frameLayout.addView(super.a(layoutInflater, frameLayout, bundle));
        return viewGroup2;
    }

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void h() {
        super.h();
        org.greenrobot.eventbus.c.a().a(this);
        Dialog dialogC = c();
        if (dialogC != null) {
            Window window = dialogC.getWindow();
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.dimAmount = 0.0f;
            attributes.flags |= 2;
            window.setAttributes(attributes);
        }
    }

    @Override // com.roblox.client.v, com.roblox.client.s, androidx.fragment.app.b, androidx.fragment.app.Fragment
    public void i() {
        org.greenrobot.eventbus.c.a().b(this);
        super.i();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.l.i iVar) {
        if (e()) {
            c().dismiss();
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        if (e()) {
            c().dismiss();
        }
    }
}
