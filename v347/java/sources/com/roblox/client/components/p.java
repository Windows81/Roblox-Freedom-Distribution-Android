package com.roblox.client.components;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.support.v7.widget.Toolbar;
import android.view.View;
import com.roblox.client.RobloxSettings;

/* JADX INFO: loaded from: classes.dex */
public class p {
    public static Drawable a(Context context, int i, int i2) {
        Drawable drawableA = com.roblox.client.p.a(context, i, 25, 25);
        Drawable drawableA2 = com.roblox.client.p.a(context, i2, 25, 25);
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{R.attr.state_pressed}, drawableA2);
        stateListDrawable.addState(new int[0], drawableA);
        return stateListDrawable;
    }

    public static void a(Toolbar toolbar, Context context) {
        a(toolbar, context, (View.OnClickListener) null);
    }

    public static void a(Toolbar toolbar, Context context, View.OnClickListener onClickListener) {
        a(toolbar, context, onClickListener, false);
    }

    public static void a(Toolbar toolbar, Context context, View.OnClickListener onClickListener, boolean z) {
        if (RobloxSettings.isShowVisibleAge() || z) {
            toolbar.setSubtitle(context != null ? RobloxSettings.ageVisibilityText(context) : null);
            if (onClickListener != null) {
                toolbar.setNavigationIcon(com.roblox.client.R.drawable.icon_back);
            } else {
                toolbar.setNavigationIcon((Drawable) null);
            }
            toolbar.setNavigationOnClickListener(onClickListener);
            return;
        }
        if (onClickListener != null) {
            toolbar.setNavigationIcon(com.roblox.client.R.drawable.icon_back);
        } else {
            toolbar.setNavigationIcon((Drawable) null);
        }
        toolbar.setNavigationOnClickListener(onClickListener);
    }

    public static void b(Toolbar toolbar, Context context) {
        if (RobloxSettings.isShowVisibleAge()) {
            toolbar.setSubtitle(context != null ? RobloxSettings.ageVisibilityText(context) : null);
        }
    }
}
