package android.support.v7.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class a extends Drawable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final ActionBarContainer f1605a;

    public a(ActionBarContainer actionBarContainer) {
        this.f1605a = actionBarContainer;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f1605a.mIsSplit) {
            if (this.f1605a.mSplitBackground != null) {
                this.f1605a.mSplitBackground.draw(canvas);
            }
        } else {
            if (this.f1605a.mBackground != null) {
                this.f1605a.mBackground.draw(canvas);
            }
            if (this.f1605a.mStackedBackground != null && this.f1605a.mIsStacked) {
                this.f1605a.mStackedBackground.draw(canvas);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }
}
