package com.roblox.client.hybrid;

import android.content.Context;
import android.support.v4.a.f;
import android.util.AttributeSet;
import com.roblox.a.d;
import com.roblox.client.hybrid.a.a;
import com.roblox.client.hybrid.a.b;
import com.roblox.client.hybrid.a.c;
import com.roblox.client.hybrid.a.e;
import com.roblox.client.hybrid.a.g;
import com.roblox.client.hybrid.a.h;
import com.roblox.client.hybrid.a.i;
import com.roblox.client.hybrid.a.j;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class RBHybridWebView extends d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f7113c;

    public RBHybridWebView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f7113c = f.a(getContext());
    }

    public RBHybridWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7113c = f.a(getContext());
    }

    public RBHybridWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7113c = f.a(getContext());
    }

    public RBHybridWebView(Context context) {
        super(context);
        this.f7113c = f.a(getContext());
    }

    @Override // com.roblox.a.d
    protected void a(Context context) {
        if (this.f6356b == null) {
            this.f6356b = new HashMap<>();
            a(new j());
            a(new c());
            a(new a());
            a(new com.roblox.client.hybrid.a.d(this.f7113c));
            a(new b(this.f7113c));
            a(new i());
            a(new h(context));
            a(new com.roblox.client.hybrid.a.f());
            a(new g());
            a(new e());
        }
    }
}
