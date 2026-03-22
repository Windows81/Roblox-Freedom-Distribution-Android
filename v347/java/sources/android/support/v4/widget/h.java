package android.support.v4.widget;

import android.os.Build;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f1174a;

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f1174a = new a();
        } else {
            f1174a = new b();
        }
    }

    static class b {
        b() {
        }

        public void a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f);
        }
    }

    static class a extends b {
        a() {
        }

        @Override // android.support.v4.widget.h.b
        public void a(EdgeEffect edgeEffect, float f, float f2) {
            edgeEffect.onPull(f, f2);
        }
    }

    public static void a(EdgeEffect edgeEffect, float f, float f2) {
        f1174a.a(edgeEffect, f, f2);
    }
}
