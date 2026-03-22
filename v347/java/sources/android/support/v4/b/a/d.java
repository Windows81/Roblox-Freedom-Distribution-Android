package android.support.v4.b.a;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class d extends c {
    d(Drawable drawable) {
        super(drawable);
    }

    d(c.a aVar, Resources resources) {
        super(aVar, resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        this.f847c.setAutoMirrored(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return this.f847c.isAutoMirrored();
    }

    @Override // android.support.v4.b.a.c
    c.a b() {
        return new a(this.f846b, null);
    }

    private static class a extends c.a {
        a(c.a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // android.support.v4.b.a.c.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new d(this, resources);
        }
    }
}
