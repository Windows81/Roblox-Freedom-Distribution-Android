package com.roblox.client.components;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
import com.roblox.client.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class MaxHeightScrollView extends ScrollView {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f6656a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6657b;

    public MaxHeightScrollView(Context context) {
        super(context);
        this.f6657b = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
    }

    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6657b = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        if (!isInEditMode()) {
            a(context, attributeSet);
        }
    }

    public MaxHeightScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6657b = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        if (!isInEditMode()) {
            a(context, attributeSet);
        }
    }

    @TargetApi(21)
    public MaxHeightScrollView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f6657b = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        if (!isInEditMode()) {
            a(context, attributeSet);
        }
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.b.MaxHeightScrollView);
            this.f6656a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f6656a, Integer.MIN_VALUE));
    }
}
