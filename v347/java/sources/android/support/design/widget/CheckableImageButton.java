package android.support.design.widget;

import android.R;
import android.content.Context;
import android.support.v7.a.a;
import android.support.v7.widget.AppCompatImageButton;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class CheckableImageButton extends AppCompatImageButton implements Checkable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f280a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f281b;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.C0032a.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        android.support.v4.view.s.a(this, new android.support.v4.view.a() { // from class: android.support.design.widget.CheckableImageButton.1
            @Override // android.support.v4.view.a
            public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // android.support.v4.view.a
            public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
                super.onInitializeAccessibilityNodeInfo(view, bVar);
                bVar.a(true);
                bVar.b(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f281b != z) {
            this.f281b = z;
            refreshDrawableState();
            sendAccessibilityEvent(RecyclerView.ItemAnimator.FLAG_MOVED);
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f281b;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.f281b);
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        return this.f281b ? mergeDrawableStates(super.onCreateDrawableState(f280a.length + i), f280a) : super.onCreateDrawableState(i);
    }
}
