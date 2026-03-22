package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.h.r;
import com.google.android.material.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class SnackbarContentLayout extends LinearLayout implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f5039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f5040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f5041c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5042d;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.i.SnackbarLayout);
        this.f5041c = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.i.SnackbarLayout_android_maxWidth, -1);
        this.f5042d = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.i.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f5039a = (TextView) findViewById(a.e.snackbar_text);
        this.f5040b = (Button) findViewById(a.e.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f5039a;
    }

    public Button getActionView() {
        return this.f5040b;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            super.onMeasure(r8, r9)
            int r0 = r7.f5041c
            if (r0 <= 0) goto L18
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f5041c
            if (r0 <= r1) goto L18
            r8 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r1, r8)
            super.onMeasure(r8, r9)
        L18:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = com.google.android.material.a.c.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r2 = com.google.android.material.a.c.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r2)
            android.widget.TextView r2 = r7.f5039a
            android.text.Layout r2 = r2.getLayout()
            int r2 = r2.getLineCount()
            r3 = 0
            r4 = 1
            if (r2 <= r4) goto L3c
            r2 = 1
            goto L3d
        L3c:
            r2 = 0
        L3d:
            if (r2 == 0) goto L56
            int r5 = r7.f5042d
            if (r5 <= 0) goto L56
            android.widget.Button r5 = r7.f5040b
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f5042d
            if (r5 <= r6) goto L56
            int r1 = r0 - r1
            boolean r0 = r7.a(r4, r0, r1)
            if (r0 == 0) goto L61
            goto L60
        L56:
            if (r2 == 0) goto L59
            goto L5a
        L59:
            r0 = r1
        L5a:
            boolean r0 = r7.a(r3, r0, r0)
            if (r0 == 0) goto L61
        L60:
            r3 = 1
        L61:
            if (r3 == 0) goto L66
            super.onMeasure(r8, r9)
        L66:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.snackbar.SnackbarContentLayout.onMeasure(int, int):void");
    }

    private boolean a(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f5039a.getPaddingTop() == i2 && this.f5039a.getPaddingBottom() == i3) {
            return z;
        }
        a(this.f5039a, i2, i3);
        return true;
    }

    private static void a(View view, int i, int i2) {
        if (r.r(view)) {
            r.a(view, r.g(view), i, r.h(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void a(int i, int i2) {
        this.f5039a.setAlpha(0.0f);
        long j = i2;
        long j2 = i;
        this.f5039a.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f5040b.getVisibility() == 0) {
            this.f5040b.setAlpha(0.0f);
            this.f5040b.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }

    @Override // com.google.android.material.snackbar.a
    public void b(int i, int i2) {
        this.f5039a.setAlpha(1.0f);
        long j = i2;
        long j2 = i;
        this.f5039a.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (this.f5040b.getVisibility() == 0) {
            this.f5040b.setAlpha(1.0f);
            this.f5040b.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }
}
