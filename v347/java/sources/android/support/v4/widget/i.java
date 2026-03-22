package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final b f1175a;

    interface b {
        ColorStateList a(ImageView imageView);

        void a(ImageView imageView, ColorStateList colorStateList);

        void a(ImageView imageView, PorterDuff.Mode mode);

        PorterDuff.Mode b(ImageView imageView);
    }

    static class a implements b {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.widget.i.b
        public ColorStateList a(ImageView imageView) {
            if (imageView instanceof p) {
                return ((p) imageView).getSupportImageTintList();
            }
            return null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.widget.i.b
        public void a(ImageView imageView, ColorStateList colorStateList) {
            if (imageView instanceof p) {
                ((p) imageView).setSupportImageTintList(colorStateList);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.widget.i.b
        public void a(ImageView imageView, PorterDuff.Mode mode) {
            if (imageView instanceof p) {
                ((p) imageView).setSupportImageTintMode(mode);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.support.v4.widget.i.b
        public PorterDuff.Mode b(ImageView imageView) {
            if (imageView instanceof p) {
                return ((p) imageView).getSupportImageTintMode();
            }
            return null;
        }
    }

    static class c extends a {
        c() {
        }

        @Override // android.support.v4.widget.i.a, android.support.v4.widget.i.b
        public ColorStateList a(ImageView imageView) {
            return imageView.getImageTintList();
        }

        @Override // android.support.v4.widget.i.a, android.support.v4.widget.i.b
        public void a(ImageView imageView, ColorStateList colorStateList) {
            imageView.setImageTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable drawable = imageView.getDrawable();
                boolean z = (imageView.getImageTintList() == null || imageView.getImageTintMode() == null) ? false : true;
                if (drawable != null && z) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        }

        @Override // android.support.v4.widget.i.a, android.support.v4.widget.i.b
        public void a(ImageView imageView, PorterDuff.Mode mode) {
            imageView.setImageTintMode(mode);
            if (Build.VERSION.SDK_INT == 21) {
                Drawable drawable = imageView.getDrawable();
                boolean z = (imageView.getImageTintList() == null || imageView.getImageTintMode() == null) ? false : true;
                if (drawable != null && z) {
                    if (drawable.isStateful()) {
                        drawable.setState(imageView.getDrawableState());
                    }
                    imageView.setImageDrawable(drawable);
                }
            }
        }

        @Override // android.support.v4.widget.i.a, android.support.v4.widget.i.b
        public PorterDuff.Mode b(ImageView imageView) {
            return imageView.getImageTintMode();
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1175a = new c();
        } else {
            f1175a = new a();
        }
    }

    public static ColorStateList a(ImageView imageView) {
        return f1175a.a(imageView);
    }

    public static void a(ImageView imageView, ColorStateList colorStateList) {
        f1175a.a(imageView, colorStateList);
    }

    public static PorterDuff.Mode b(ImageView imageView) {
        return f1175a.b(imageView);
    }

    public static void a(ImageView imageView, PorterDuff.Mode mode) {
        f1175a.a(imageView, mode);
    }
}
