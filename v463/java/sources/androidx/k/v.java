package androidx.k;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class v implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f2037a;

    v(ViewGroup viewGroup) {
        this.f2037a = viewGroup.getOverlay();
    }

    @Override // androidx.k.ac
    public void a(Drawable drawable) {
        this.f2037a.add(drawable);
    }

    @Override // androidx.k.ac
    public void b(Drawable drawable) {
        this.f2037a.remove(drawable);
    }

    @Override // androidx.k.w
    public void a(View view) {
        this.f2037a.add(view);
    }

    @Override // androidx.k.w
    public void b(View view) {
        this.f2037a.remove(view);
    }
}
