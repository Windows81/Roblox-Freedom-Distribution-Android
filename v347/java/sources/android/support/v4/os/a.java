package android.support.v4.os;

import android.os.Build;

/* JADX INFO: loaded from: classes.dex */
public class a {
    @Deprecated
    public static boolean a() {
        return Build.VERSION.SDK_INT >= 27;
    }

    public static boolean b() {
        return Build.VERSION.CODENAME.equals("P");
    }
}
