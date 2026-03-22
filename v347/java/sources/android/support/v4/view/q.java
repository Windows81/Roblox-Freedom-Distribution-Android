package android.support.v4.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f1094a;

    private q(Object obj) {
        this.f1094a = obj;
    }

    public Object a() {
        return this.f1094a;
    }

    public static q a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new q(PointerIcon.getSystemIcon(context, i)) : new q(null);
    }
}
