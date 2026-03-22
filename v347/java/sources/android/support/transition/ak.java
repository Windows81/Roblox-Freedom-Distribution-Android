package android.support.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ak implements al {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f495a;

    ak(View view) {
        this.f495a = view.getOverlay();
    }

    @Override // android.support.transition.al
    public void a(Drawable drawable) {
        this.f495a.add(drawable);
    }

    @Override // android.support.transition.al
    public void b(Drawable drawable) {
        this.f495a.remove(drawable);
    }
}
