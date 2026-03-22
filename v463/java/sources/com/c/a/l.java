package com.c.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.c.a.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class l extends a<ImageView> {
    e m;

    l(t tVar, ImageView imageView, w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, e eVar, boolean z) {
        super(tVar, imageView, wVar, i, i2, i3, drawable, str, obj, z);
        this.m = eVar;
    }

    @Override // com.c.a.a
    public void a(Bitmap bitmap, t.d dVar) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.f3091c.get();
        if (imageView == null) {
            return;
        }
        u.a(imageView, this.f3089a.f3176c, bitmap, dVar, this.f3092d, this.f3089a.k);
        e eVar = this.m;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // com.c.a.a
    public void a() {
        ImageView imageView = (ImageView) this.f3091c.get();
        if (imageView == null) {
            return;
        }
        if (this.g != 0) {
            imageView.setImageResource(this.g);
        } else if (this.h != null) {
            imageView.setImageDrawable(this.h);
        }
        e eVar = this.m;
        if (eVar != null) {
            eVar.b();
        }
    }

    @Override // com.c.a.a
    void b() {
        super.b();
        if (this.m != null) {
            this.m = null;
        }
    }
}
