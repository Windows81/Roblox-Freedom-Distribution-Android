package android.support.transition;

import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ai f482a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            f482a = new ah();
        } else {
            f482a = new ag();
        }
    }

    static ae a(ViewGroup viewGroup) {
        return f482a.a(viewGroup);
    }

    static void a(ViewGroup viewGroup, boolean z) {
        f482a.a(viewGroup, z);
    }
}
