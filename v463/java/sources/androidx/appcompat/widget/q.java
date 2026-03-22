package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class q extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f1030a;

    public q(Context context, Resources resources) {
        super(resources);
        this.f1030a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.l, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1030a.get();
        if (drawable != null && context != null) {
            AppCompatDrawableManager.get();
            AppCompatDrawableManager.tintDrawableUsingColorFilter(context, i, drawable);
        }
        return drawable;
    }
}
