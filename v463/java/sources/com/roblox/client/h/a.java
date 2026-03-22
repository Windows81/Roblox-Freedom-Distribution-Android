package com.roblox.client.h;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import de.hdodenhof.circleimageview.CircleImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a extends ViewDataBinding {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImageView f6318c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CircleImageView f6319d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final RelativeLayout f6320e;
    public final CircleImageView f;
    public final TextView g;
    public final TextView h;
    protected com.roblox.client.friends.nearby.b.a.a i;

    public abstract void a(com.roblox.client.friends.nearby.b.a.a aVar);

    protected a(Object obj, View view, int i, ImageView imageView, CircleImageView circleImageView, RelativeLayout relativeLayout, CircleImageView circleImageView2, TextView textView, TextView textView2) {
        super(obj, view, i);
        this.f6318c = imageView;
        this.f6319d = circleImageView;
        this.f6320e = relativeLayout;
        this.f = circleImageView2;
        this.g = textView;
        this.h = textView2;
    }

    public com.roblox.client.friends.nearby.b.a.a h() {
        return this.i;
    }
}
