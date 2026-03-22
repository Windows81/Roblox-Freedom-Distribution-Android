package androidx.k;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class ab implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f1928a;

    ab(View view) {
        this.f1928a = view.getOverlay();
    }

    @Override // androidx.k.ac
    public void a(Drawable drawable) {
        this.f1928a.add(drawable);
    }

    @Override // androidx.k.ac
    public void b(Drawable drawable) {
        this.f1928a.remove(drawable);
    }
}
