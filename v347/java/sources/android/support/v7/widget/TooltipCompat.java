package android.support.v7.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class TooltipCompat {
    private static final c IMPL;

    private interface c {
        void a(View view, CharSequence charSequence);
    }

    private static class b implements c {
        private b() {
        }

        @Override // android.support.v7.widget.TooltipCompat.c
        public void a(View view, CharSequence charSequence) {
            aa.a(view, charSequence);
        }
    }

    @TargetApi(26)
    private static class a implements c {
        private a() {
        }

        @Override // android.support.v7.widget.TooltipCompat.c
        public void a(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 26) {
            IMPL = new a();
        } else {
            IMPL = new b();
        }
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        IMPL.a(view, charSequence);
    }

    private TooltipCompat() {
    }
}
