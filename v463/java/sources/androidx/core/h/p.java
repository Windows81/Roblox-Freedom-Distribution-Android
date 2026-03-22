package androidx.core.h;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f1490a;

    private p(Object obj) {
        this.f1490a = obj;
    }

    public Object a() {
        return this.f1490a;
    }

    public static p a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            return new p(PointerIcon.getSystemIcon(context, i));
        }
        return new p(null);
    }
}
