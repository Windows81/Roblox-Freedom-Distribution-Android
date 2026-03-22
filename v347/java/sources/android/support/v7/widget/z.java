package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class z extends t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<Context> f1732a;

    public z(Context context, Resources resources) {
        super(resources);
        this.f1732a = new WeakReference<>(context);
    }

    @Override // android.support.v7.widget.t, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1732a.get();
        if (drawable != null && context != null) {
            AppCompatDrawableManager.get();
            AppCompatDrawableManager.tintDrawableUsingColorFilter(context, i, drawable);
        }
        return drawable;
    }
}
