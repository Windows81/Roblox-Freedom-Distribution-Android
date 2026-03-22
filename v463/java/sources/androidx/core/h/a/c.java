package androidx.core.h.a;

import android.graphics.Rect;
import android.os.Build;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1470a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AccessibilityNodeInfo f1471b;

    private static String b(int i) {
        if (i == 1) {
            return "ACTION_FOCUS";
        }
        if (i == 2) {
            return "ACTION_CLEAR_FOCUS";
        }
        switch (i) {
            case 4:
                return "ACTION_SELECT";
            case 8:
                return "ACTION_CLEAR_SELECTION";
            case 16:
                return "ACTION_CLICK";
            case 32:
                return "ACTION_LONG_CLICK";
            case 64:
                return "ACTION_ACCESSIBILITY_FOCUS";
            case 128:
                return "ACTION_CLEAR_ACCESSIBILITY_FOCUS";
            case 256:
                return "ACTION_NEXT_AT_MOVEMENT_GRANULARITY";
            case 512:
                return "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY";
            case 1024:
                return "ACTION_NEXT_HTML_ELEMENT";
            case 2048:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case 4096:
                return "ACTION_SCROLL_FORWARD";
            case 8192:
                return "ACTION_SCROLL_BACKWARD";
            case 16384:
                return "ACTION_COPY";
            case 32768:
                return "ACTION_PASTE";
            case 65536:
                return "ACTION_CUT";
            case 131072:
                return "ACTION_SET_SELECTION";
            default:
                return "ACTION_UNKNOWN";
        }
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f1472a;

        public static a a(int i, int i2, boolean z, int i3) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new a(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                return new a(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z));
            }
            return new a(null);
        }

        a(Object obj) {
            this.f1472a = obj;
        }
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f1473a;

        public static b a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new b(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                return new b(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
            }
            return new b(null);
        }

        b(Object obj) {
            this.f1473a = obj;
        }
    }

    private c(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1471b = accessibilityNodeInfo;
    }

    public static c a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new c(accessibilityNodeInfo);
    }

    public AccessibilityNodeInfo a() {
        return this.f1471b;
    }

    public int b() {
        return this.f1471b.getActions();
    }

    public void a(int i) {
        this.f1471b.addAction(i);
    }

    public void a(Rect rect) {
        this.f1471b.getBoundsInParent(rect);
    }

    public void b(Rect rect) {
        this.f1471b.getBoundsInScreen(rect);
    }

    public boolean c() {
        return this.f1471b.isCheckable();
    }

    public void a(boolean z) {
        this.f1471b.setCheckable(z);
    }

    public boolean d() {
        return this.f1471b.isChecked();
    }

    public void b(boolean z) {
        this.f1471b.setChecked(z);
    }

    public boolean e() {
        return this.f1471b.isFocusable();
    }

    public boolean f() {
        return this.f1471b.isFocused();
    }

    public boolean g() {
        return this.f1471b.isSelected();
    }

    public boolean h() {
        return this.f1471b.isClickable();
    }

    public boolean i() {
        return this.f1471b.isLongClickable();
    }

    public boolean j() {
        return this.f1471b.isEnabled();
    }

    public boolean k() {
        return this.f1471b.isPassword();
    }

    public boolean l() {
        return this.f1471b.isScrollable();
    }

    public void c(boolean z) {
        this.f1471b.setScrollable(z);
    }

    public CharSequence m() {
        return this.f1471b.getPackageName();
    }

    public CharSequence n() {
        return this.f1471b.getClassName();
    }

    public void a(CharSequence charSequence) {
        this.f1471b.setClassName(charSequence);
    }

    public CharSequence o() {
        return this.f1471b.getText();
    }

    public CharSequence p() {
        return this.f1471b.getContentDescription();
    }

    public String q() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f1471b.getViewIdResourceName();
        }
        return null;
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1471b.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((a) obj).f1472a);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1471b.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((b) obj).f1473a);
        }
    }

    public void d(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1471b.setCanOpenPopup(z);
        }
    }

    public void e(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1471b.setDismissable(z);
        }
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1471b;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        AccessibilityNodeInfo accessibilityNodeInfo = this.f1471b;
        if (accessibilityNodeInfo == null) {
            if (cVar.f1471b != null) {
                return false;
            }
        } else if (!accessibilityNodeInfo.equals(cVar.f1471b)) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ");
        sb.append(m());
        sb.append("; className: ");
        sb.append(n());
        sb.append("; text: ");
        sb.append(o());
        sb.append("; contentDescription: ");
        sb.append(p());
        sb.append("; viewId: ");
        sb.append(q());
        sb.append("; checkable: ");
        sb.append(c());
        sb.append("; checked: ");
        sb.append(d());
        sb.append("; focusable: ");
        sb.append(e());
        sb.append("; focused: ");
        sb.append(f());
        sb.append("; selected: ");
        sb.append(g());
        sb.append("; clickable: ");
        sb.append(h());
        sb.append("; longClickable: ");
        sb.append(i());
        sb.append("; enabled: ");
        sb.append(j());
        sb.append("; password: ");
        sb.append(k());
        sb.append("; scrollable: " + l());
        sb.append("; [");
        int iB = b();
        while (iB != 0) {
            int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(iB);
            iB &= iNumberOfTrailingZeros ^ (-1);
            sb.append(b(iNumberOfTrailingZeros));
            if (iB != 0) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
