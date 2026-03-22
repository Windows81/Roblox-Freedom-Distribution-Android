package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.appcompat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final View f1039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TextView f1040c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final WindowManager.LayoutParams f1041d = new WindowManager.LayoutParams();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f1042e = new Rect();
    private final int[] f = new int[2];
    private final int[] g = new int[2];

    s(Context context) {
        this.f1038a = context;
        View viewInflate = LayoutInflater.from(context).inflate(a.g.abc_tooltip, (ViewGroup) null);
        this.f1039b = viewInflate;
        this.f1040c = (TextView) viewInflate.findViewById(a.f.message);
        this.f1041d.setTitle(getClass().getSimpleName());
        this.f1041d.packageName = this.f1038a.getPackageName();
        this.f1041d.type = 1002;
        this.f1041d.width = -2;
        this.f1041d.height = -2;
        this.f1041d.format = -3;
        this.f1041d.windowAnimations = a.i.Animation_AppCompat_Tooltip;
        this.f1041d.flags = 24;
    }

    void a(View view, int i, int i2, boolean z, CharSequence charSequence) {
        if (b()) {
            a();
        }
        this.f1040c.setText(charSequence);
        a(view, i, i2, z, this.f1041d);
        ((WindowManager) this.f1038a.getSystemService("window")).addView(this.f1039b, this.f1041d);
    }

    void a() {
        if (b()) {
            ((WindowManager) this.f1038a.getSystemService("window")).removeView(this.f1039b);
        }
    }

    boolean b() {
        return this.f1039b.getParent() != null;
    }

    private void a(View view, int i, int i2, boolean z, WindowManager.LayoutParams layoutParams) {
        int height;
        int i3;
        layoutParams.token = view.getApplicationWindowToken();
        int dimensionPixelOffset = this.f1038a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = this.f1038a.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_extra_offset);
            height = i2 + dimensionPixelOffset2;
            i3 = i2 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i3 = 0;
        }
        layoutParams.gravity = 49;
        int dimensionPixelOffset3 = this.f1038a.getResources().getDimensionPixelOffset(z ? a.d.tooltip_y_offset_touch : a.d.tooltip_y_offset_non_touch);
        View viewA = a(view);
        if (viewA == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            return;
        }
        viewA.getWindowVisibleDisplayFrame(this.f1042e);
        if (this.f1042e.left < 0 && this.f1042e.top < 0) {
            Resources resources = this.f1038a.getResources();
            int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
            int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            this.f1042e.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
        }
        viewA.getLocationOnScreen(this.g);
        view.getLocationOnScreen(this.f);
        int[] iArr = this.f;
        int i4 = iArr[0];
        int[] iArr2 = this.g;
        iArr[0] = i4 - iArr2[0];
        iArr[1] = iArr[1] - iArr2[1];
        layoutParams.x = (iArr[0] + i) - (viewA.getWidth() / 2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f1039b.measure(iMakeMeasureSpec, iMakeMeasureSpec);
        int measuredHeight = this.f1039b.getMeasuredHeight();
        int[] iArr3 = this.f;
        int i5 = ((iArr3[1] + i3) - dimensionPixelOffset3) - measuredHeight;
        int i6 = iArr3[1] + height + dimensionPixelOffset3;
        if (z) {
            if (i5 >= 0) {
                layoutParams.y = i5;
                return;
            } else {
                layoutParams.y = i6;
                return;
            }
        }
        if (measuredHeight + i6 <= this.f1042e.height()) {
            layoutParams.y = i6;
        } else {
            layoutParams.y = i5;
        }
    }

    private static View a(View view) {
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams = rootView.getLayoutParams();
        if ((layoutParams instanceof WindowManager.LayoutParams) && ((WindowManager.LayoutParams) layoutParams).type == 2) {
            return rootView;
        }
        for (Context context = view.getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return ((Activity) context).getWindow().getDecorView();
            }
        }
        return rootView;
    }
}
