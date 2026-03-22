package androidx.appcompat.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ActionBarContainer f965a;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public a(ActionBarContainer actionBarContainer) {
        this.f965a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f965a.mIsSplit) {
            if (this.f965a.mSplitBackground != null) {
                this.f965a.mSplitBackground.draw(canvas);
            }
        } else {
            if (this.f965a.mBackground != null) {
                this.f965a.mBackground.draw(canvas);
            }
            if (this.f965a.mStackedBackground == null || !this.f965a.mIsStacked) {
                return;
            }
            this.f965a.mStackedBackground.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f965a.mIsSplit) {
            if (this.f965a.mSplitBackground != null) {
                this.f965a.mSplitBackground.getOutline(outline);
            }
        } else if (this.f965a.mBackground != null) {
            this.f965a.mBackground.getOutline(outline);
        }
    }
}
