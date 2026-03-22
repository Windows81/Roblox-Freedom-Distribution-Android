package android.support.v7.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v7.a.a;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f1613b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f1614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f1615d = new WindowManager.LayoutParams();
    private final Rect e = new Rect();
    private final int[] f = new int[2];
    private final int[] g = new int[2];

    ab(Context context) {
        this.f1612a = context;
        this.f1613b = LayoutInflater.from(this.f1612a).inflate(a.g.tooltip, (ViewGroup) null);
        this.f1614c = (TextView) this.f1613b.findViewById(a.f.message);
        this.f1615d.setTitle(getClass().getSimpleName());
        this.f1615d.packageName = this.f1612a.getPackageName();
        this.f1615d.type = 1002;
        this.f1615d.width = -2;
        this.f1615d.height = -2;
        this.f1615d.format = -3;
        this.f1615d.windowAnimations = a.i.Animation_AppCompat_Tooltip;
        this.f1615d.flags = 24;
    }

    void a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f1614c.setText(charSequence);
        a(view, i, i2, z, this.f1615d);
        ((WindowManager) this.f1612a.getSystemService("window")).addView(this.f1613b, this.f1615d);
    }

    void a() {
        if (b()) {
            ((WindowManager) this.f1612a.getSystemService("window")).removeView(this.f1613b);
        }
    }

    boolean b() {
        return this.f1613b.getParent() != null;
    }

    private void a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        int dimensionPixelOffset = this.f1612a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1612a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1612a.getResources().getDimensionPixelOffset(z ? a.d.tooltip_y_offset_touch : a.d.tooltip_y_offset_non_touch);
        View viewA = a(view);
        if (viewA == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        viewA.getWindowVisibleDisplayFrame(this.e);
        if (this.e.left < 0 && this.e.top < 0) {
            Resources resources = this.f1612a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewA.getLocationOnScreen(this.g);
        view.getLocationOnScreen(this.f);
        int[] iArr = this.f;
        iArr[0] = iArr[0] - this.g[0];
        int[] iArr2 = this.f;
        iArr2[1] = iArr2[1] - this.g[1];
        layoutParams.x = (this.f[0] + i) - (this.e.width() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1613b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f1613b.getMeasuredHeight();
        int i4 = ((i3 + this.f[1]) - dimensionPixelOffset3) - measuredHeight;
        int i5 = height + this.f[1] + dimensionPixelOffset3;
        if (z) {
            if (i4 >= 0) {
                layoutParams.y = i4;
                return;
            } else {
                layoutParams.y = i5;
                return;
            }
        }
        if (measuredHeight + i5 <= this.e.height()) {
            layoutParams.y = i5;
        } else {
            layoutParams.y = i4;
        }
    }

    private static View a(View view) {
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return view.getRootView();
    }
}
