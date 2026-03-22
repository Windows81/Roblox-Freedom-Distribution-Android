package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Build;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class q {
    public static Menu a(Context context, androidx.core.b.a.a aVar) {
        return new r(context, aVar);
    }

    public static MenuItem a(Context context, androidx.core.b.a.b bVar) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new l(context, bVar);
        }
        return new k(context, bVar);
    }

    public static SubMenu a(Context context, androidx.core.b.a.c cVar) {
        return new v(context, cVar);
    }
}
