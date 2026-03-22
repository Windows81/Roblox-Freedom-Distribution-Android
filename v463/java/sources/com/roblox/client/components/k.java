package com.roblox.client.components;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.Toolbar;
import com.roblox.client.u;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class k {
    public static void a(Toolbar toolbar, int i) {
        for (int i2 = 0; i2 < toolbar.getChildCount(); i2++) {
            View childAt = toolbar.getChildAt(i2);
            if (childAt != null && childAt.getClass() == AppCompatImageButton.class) {
                ((AppCompatImageButton) childAt).setImageResource(i);
            }
        }
    }

    public static void a(Toolbar toolbar, View.OnClickListener onClickListener) {
        a(toolbar, onClickListener, false);
    }

    public static void a(Toolbar toolbar, View.OnClickListener onClickListener, boolean z) {
        a(toolbar, z);
        b(toolbar, onClickListener);
    }

    public static void a(Toolbar toolbar, boolean z) {
        if (u.au() || z) {
            toolbar.setSubtitle(toolbar.getContext() != null ? u.g(toolbar.getContext()) : null);
        }
    }

    public static void b(Toolbar toolbar, View.OnClickListener onClickListener) {
        toolbar.setNavigationOnClickListener(onClickListener);
    }

    public static void a(Toolbar toolbar, Context context) {
        if (u.au()) {
            toolbar.setSubtitle(context != null ? u.g(context) : null);
        }
    }

    public static void a(Toolbar toolbar, Context context, int i, int i2) {
        View viewFindViewById = toolbar.findViewById(i);
        if (viewFindViewById != null) {
            ActionMenuView.LayoutParams layoutParams = (ActionMenuView.LayoutParams) viewFindViewById.getLayoutParams();
            layoutParams.width = (int) x.a(context, i2);
            viewFindViewById.setLayoutParams(layoutParams);
        }
    }
}
