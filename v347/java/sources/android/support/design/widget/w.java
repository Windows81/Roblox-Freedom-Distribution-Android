package android.support.design.widget;

import android.widget.ImageButton;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class w extends ImageButton {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f461a;

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        a(i, true);
    }

    final void a(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f461a = i;
        }
    }

    final int getUserSetVisibility() {
        return this.f461a;
    }
}
