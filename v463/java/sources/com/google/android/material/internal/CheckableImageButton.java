package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.appcompat.a;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.core.h.r;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f4985a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f4986b;

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0012a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        r.a(this, new androidx.core.h.a() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.h.a
            public void d(View view, AccessibilityEvent accessibilityEvent) {
                super.d(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.h.a
            public void a(View view, androidx.core.h.a.c cVar) {
                super.a(view, cVar);
                cVar.a(true);
                cVar.b(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f4986b != z) {
            this.f4986b = z;
            refreshDrawableState();
            sendAccessibilityEvent(2048);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f4986b;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f4986b);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.f4986b) {
            return mergeDrawableStates(super.onCreateDrawableState(i + f4985a.length), f4985a);
        }
        return super.onCreateDrawableState(i);
    }
}
