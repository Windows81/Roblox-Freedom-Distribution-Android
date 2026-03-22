package com.roblox.client.h;

import android.view.View;
import androidx.databinding.ViewDataBinding;
import com.roblox.client.components.RbxTextView;
import com.roblox.client.phonenumber.PhonePrefix;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class c extends ViewDataBinding {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RbxTextView f6321c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RbxTextView f6322d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected PhonePrefix f6323e;

    public abstract void a(PhonePrefix phonePrefix);

    protected c(Object obj, View view, int i, RbxTextView rbxTextView, RbxTextView rbxTextView2) {
        super(obj, view, i);
        this.f6321c = rbxTextView;
        this.f6322d = rbxTextView2;
    }

    public PhonePrefix h() {
        return this.f6323e;
    }
}
