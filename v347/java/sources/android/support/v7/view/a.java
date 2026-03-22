package android.support.v7.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.v7.a.a;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1315a;

    public static a a(Context context) {
        return new a(context);
    }

    private a(Context context) {
        this.f1315a = context;
    }

    public int a() {
        Configuration configuration = this.f1315a.getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        int i2 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i > 600 || ((i > 960 && i2 > 720) || (i > 720 && i2 > 960))) {
            return 5;
        }
        if (i >= 500 || ((i > 640 && i2 > 480) || (i > 480 && i2 > 640))) {
            return 4;
        }
        if (i >= 360) {
            return 3;
        }
        return 2;
    }

    public boolean b() {
        return Build.VERSION.SDK_INT >= 19 || !ViewConfiguration.get(this.f1315a).hasPermanentMenuKey();
    }

    public int c() {
        return this.f1315a.getResources().getDisplayMetrics().widthPixels / 2;
    }

    public boolean d() {
        return this.f1315a.getResources().getBoolean(a.b.abc_action_bar_embed_tabs);
    }

    public int e() {
        TypedArray typedArrayObtainStyledAttributes = this.f1315a.obtainStyledAttributes(null, a.j.ActionBar, a.C0032a.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(a.j.ActionBar_height, 0);
        Resources resources = this.f1315a.getResources();
        if (!d()) {
            layoutDimension = Math.min(layoutDimension, resources.getDimensionPixelSize(a.d.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        return layoutDimension;
    }

    public boolean f() {
        return this.f1315a.getApplicationInfo().targetSdkVersion < 14;
    }

    public int g() {
        return this.f1315a.getResources().getDimensionPixelSize(a.d.abc_action_bar_stacked_tab_max_width);
    }
}
