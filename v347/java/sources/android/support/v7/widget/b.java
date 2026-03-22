package android.support.v7.widget;

import android.graphics.Outline;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class b extends a {
    public b(ActionBarContainer actionBarContainer) {
        super(actionBarContainer);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f1605a.mIsSplit) {
            if (this.f1605a.mSplitBackground != null) {
                this.f1605a.mSplitBackground.getOutline(outline);
            }
        } else if (this.f1605a.mBackground != null) {
            this.f1605a.mBackground.getOutline(outline);
        }
    }
}
