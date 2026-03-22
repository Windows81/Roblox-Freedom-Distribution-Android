package android.support.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ad implements ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f481a;

    ad(ViewGroup viewGroup) {
        this.f481a = viewGroup.getOverlay();
    }

    @Override // android.support.transition.al
    public void a(Drawable drawable) {
        this.f481a.add(drawable);
    }

    @Override // android.support.transition.al
    public void b(Drawable drawable) {
        this.f481a.remove(drawable);
    }

    @Override // android.support.transition.ae
    public void a(View view) {
        this.f481a.add(view);
    }

    @Override // android.support.transition.ae
    public void b(View view) {
        this.f481a.remove(view);
    }
}
