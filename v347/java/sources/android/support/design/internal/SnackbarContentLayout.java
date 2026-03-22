package android.support.design.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.design.a;
import android.support.design.widget.b;
import android.support.v4.view.s;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class SnackbarContentLayout extends LinearLayout implements b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private TextView f248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Button f249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f250c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f251d;

    public SnackbarContentLayout(Context context) {
        this(context, null);
    }

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.j.SnackbarLayout);
        this.f250c = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.SnackbarLayout_android_maxWidth, -1);
        this.f251d = typedArrayObtainStyledAttributes.getDimensionPixelSize(a.j.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f248a = (TextView) findViewById(a.e.snackbar_text);
        this.f249b = (Button) findViewById(a.e.snackbar_action);
    }

    public TextView getMessageView() {
        return this.f248a;
    }

    public Button getActionView() {
        return this.f249b;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x006a  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void onMeasure(int r8, int r9) {
        /*
            r7 = this;
            r3 = 0
            r2 = 1
            super.onMeasure(r8, r9)
            int r0 = r7.f250c
            if (r0 <= 0) goto L1c
            int r0 = r7.getMeasuredWidth()
            int r1 = r7.f250c
            if (r0 <= r1) goto L1c
            int r0 = r7.f250c
            r1 = 1073741824(0x40000000, float:2.0)
            int r8 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r1)
            super.onMeasure(r8, r9)
        L1c:
            android.content.res.Resources r0 = r7.getResources()
            int r1 = android.support.design.a.c.design_snackbar_padding_vertical_2lines
            int r0 = r0.getDimensionPixelSize(r1)
            android.content.res.Resources r1 = r7.getResources()
            int r4 = android.support.design.a.c.design_snackbar_padding_vertical
            int r1 = r1.getDimensionPixelSize(r4)
            android.widget.TextView r4 = r7.f248a
            android.text.Layout r4 = r4.getLayout()
            int r4 = r4.getLineCount()
            if (r4 <= r2) goto L5c
            r4 = r2
        L3d:
            if (r4 == 0) goto L5e
            int r5 = r7.f251d
            if (r5 <= 0) goto L5e
            android.widget.Button r5 = r7.f249b
            int r5 = r5.getMeasuredWidth()
            int r6 = r7.f251d
            if (r5 <= r6) goto L5e
            int r1 = r0 - r1
            boolean r0 = r7.a(r2, r0, r1)
            if (r0 == 0) goto L6a
            r0 = r2
        L56:
            if (r0 == 0) goto L5b
            super.onMeasure(r8, r9)
        L5b:
            return
        L5c:
            r4 = r3
            goto L3d
        L5e:
            if (r4 == 0) goto L68
        L60:
            boolean r0 = r7.a(r3, r0, r0)
            if (r0 == 0) goto L6a
            r0 = r2
            goto L56
        L68:
            r0 = r1
            goto L60
        L6a:
            r0 = r3
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.design.internal.SnackbarContentLayout.onMeasure(int, int):void");
    }

    private boolean a(int i, int i2, int i3) {
        boolean z = false;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        }
        if (this.f248a.getPaddingTop() != i2 || this.f248a.getPaddingBottom() != i3) {
            a(this.f248a, i2, i3);
            return true;
        }
        return z;
    }

    private static void a(View view, int i, int i2) {
        if (s.q(view)) {
            s.a(view, s.f(view), i, s.g(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    @Override // android.support.design.widget.b.c
    public void a(int i, int i2) {
        this.f248a.setAlpha(0.0f);
        this.f248a.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f249b.getVisibility() == 0) {
            this.f249b.setAlpha(0.0f);
            this.f249b.animate().alpha(1.0f).setDuration(i2).setStartDelay(i).start();
        }
    }

    @Override // android.support.design.widget.b.c
    public void b(int i, int i2) {
        this.f248a.setAlpha(1.0f);
        this.f248a.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        if (this.f249b.getVisibility() == 0) {
            this.f249b.setAlpha(1.0f);
            this.f249b.animate().alpha(0.0f).setDuration(i2).setStartDelay(i).start();
        }
    }
}
