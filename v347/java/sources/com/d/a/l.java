package com.d.a;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.d.a.t;

/* JADX INFO: loaded from: classes.dex */
class l extends a<ImageView> {
    e m;

    l(t tVar, ImageView imageView, w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, e eVar, boolean z) {
        super(tVar, imageView, wVar, i, i2, i3, drawable, str, obj, z);
        this.m = eVar;
    }

    @Override // com.d.a.a
    public void a(Bitmap bitmap, t.d dVar) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.f2441c.get();
        if (imageView != null) {
            u.a(imageView, this.f2439a.f2517c, bitmap, dVar, this.f2442d, this.f2439a.k);
            if (this.m != null) {
                this.m.a();
            }
        }
    }

    @Override // com.d.a.a
    public void a() {
        ImageView imageView = (ImageView) this.f2441c.get();
        if (imageView != null) {
            if (this.g != 0) {
                imageView.setImageResource(this.g);
            } else if (this.h != null) {
                imageView.setImageDrawable(this.h);
            }
            if (this.m != null) {
                this.m.b();
            }
        }
    }

    @Override // com.d.a.a
    void b() {
        super.b();
        if (this.m != null) {
            this.m = null;
        }
    }
}
