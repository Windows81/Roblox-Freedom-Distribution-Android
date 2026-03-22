package com.roblox.client;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TabHost;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ReclickableTabHost extends TabHost {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.client.components.j f6428a;

    public ReclickableTabHost(Context context) {
        super(context);
    }

    public ReclickableTabHost(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TabHost
    public void setCurrentTab(int i) {
        if (i == getCurrentTab()) {
            if (this.f6428a != null) {
                this.f6428a.a(getCurrentTabTag());
                return;
            }
            return;
        }
        super.setCurrentTab(i);
    }

    public void setOnTabReselectedListener(com.roblox.client.components.j jVar) {
        this.f6428a = jVar;
    }
}
