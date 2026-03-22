package androidx.core.widget;

import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public interface b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f1532d;

    void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) throws IllegalArgumentException;

    static {
        f1532d = Build.VERSION.SDK_INT >= 27;
    }
}
