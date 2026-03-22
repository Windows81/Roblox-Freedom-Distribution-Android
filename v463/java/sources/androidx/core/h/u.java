package androidx.core.h;

import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class u {
    public static boolean a(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof m) {
            return ((m) viewParent).a(view, view2, i, i2);
        }
        if (i2 != 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onStartNestedScroll(view, view2, i);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStartNestedScroll", e2);
                return false;
            }
        }
        if (viewParent instanceof l) {
            return ((l) viewParent).onStartNestedScroll(view, view2, i);
        }
        return false;
    }

    public static void b(ViewParent viewParent, View view, View view2, int i, int i2) {
        if (viewParent instanceof m) {
            ((m) viewParent).b(view, view2, i, i2);
            return;
        }
        if (i2 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScrollAccepted(view, view2, i);
                    return;
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScrollAccepted", e2);
                    return;
                }
            }
            if (viewParent instanceof l) {
                ((l) viewParent).onNestedScrollAccepted(view, view2, i);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i) {
        if (viewParent instanceof m) {
            ((m) viewParent).c(view, i);
            return;
        }
        if (i == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onStopNestedScroll(view);
                    return;
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onStopNestedScroll", e2);
                    return;
                }
            }
            if (viewParent instanceof l) {
                ((l) viewParent).onStopNestedScroll(view);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int i3, int i4, int i5) {
        if (viewParent instanceof m) {
            ((m) viewParent).a(view, i, i2, i3, i4, i5);
            return;
        }
        if (i5 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedScroll(view, i, i2, i3, i4);
                    return;
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedScroll", e2);
                    return;
                }
            }
            if (viewParent instanceof l) {
                ((l) viewParent).onNestedScroll(view, i, i2, i3, i4);
            }
        }
    }

    public static void a(ViewParent viewParent, View view, int i, int i2, int[] iArr, int i3) {
        if (viewParent instanceof m) {
            ((m) viewParent).a(view, i, i2, iArr, i3);
            return;
        }
        if (i3 == 0) {
            if (Build.VERSION.SDK_INT >= 21) {
                try {
                    viewParent.onNestedPreScroll(view, i, i2, iArr);
                    return;
                } catch (AbstractMethodError e2) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreScroll", e2);
                    return;
                }
            }
            if (viewParent instanceof l) {
                ((l) viewParent).onNestedPreScroll(view, i, i2, iArr);
            }
        }
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2, boolean z) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedFling(view, f, f2, z);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedFling", e2);
                return false;
            }
        }
        if (viewParent instanceof l) {
            return ((l) viewParent).onNestedFling(view, f, f2, z);
        }
        return false;
    }

    public static boolean a(ViewParent viewParent, View view, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                return viewParent.onNestedPreFling(view, f, f2);
            } catch (AbstractMethodError e2) {
                Log.e("ViewParentCompat", "ViewParent " + viewParent + " does not implement interface method onNestedPreFling", e2);
                return false;
            }
        }
        if (viewParent instanceof l) {
            return ((l) viewParent).onNestedPreFling(view, f, f2);
        }
        return false;
    }
}
