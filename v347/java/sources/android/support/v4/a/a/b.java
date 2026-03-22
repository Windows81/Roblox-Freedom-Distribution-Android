package android.support.v4.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b {
    public static Drawable a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    public static abstract class a {
        public abstract void a(int i);

        public abstract void a(Typeface typeface);

        public final void a(final Typeface typeface, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.a.a.b.a.1
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(typeface);
                }
            });
        }

        public final void a(final int i, Handler handler) {
            if (handler == null) {
                handler = new Handler(Looper.getMainLooper());
            }
            handler.post(new Runnable() { // from class: android.support.v4.a.a.b.a.2
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(i);
                }
            });
        }
    }

    public static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, typedValue, i2, aVar, null, true);
    }

    private static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceA = a(context, resources, typedValue, i, i2, aVar, handler, z);
        if (typefaceA == null && aVar == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return typefaceA;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Typeface a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, android.support.v4.a.a.b.a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instruction units count: 217
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.a.a.b.a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, android.support.v4.a.a.b$a, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
