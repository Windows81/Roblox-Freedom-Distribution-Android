package com.google.android.material.internal;

import android.widget.ImageButton;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends ImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5014a;

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        a(i, true);
    }

    public final void a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f5014a = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f5014a;
    }
}
