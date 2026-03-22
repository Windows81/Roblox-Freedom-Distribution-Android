package android.support.v4.view.a;

import android.graphics.Rect;
import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f1062a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AccessibilityNodeInfo f1063b;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f1064a;

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
            this.f1064a = obj;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.view.a.b$b, reason: collision with other inner class name */
    public static class C0028b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Object f1065a;

        public static C0028b a(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            if (Build.VERSION.SDK_INT >= 21) {
                return new C0028b(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2));
            }
            if (Build.VERSION.SDK_INT >= 19) {
                return new C0028b(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z));
            }
            return new C0028b(null);
        }

        C0028b(Object obj) {
            this.f1065a = obj;
        }
    }

    private b(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.f1063b = accessibilityNodeInfo;
    }

    public static b a(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new b(accessibilityNodeInfo);
    }

    public AccessibilityNodeInfo a() {
        return this.f1063b;
    }

    public int b() {
        return this.f1063b.getActions();
    }

    public void a(int i) {
        this.f1063b.addAction(i);
    }

    public void a(Rect rect) {
        this.f1063b.getBoundsInParent(rect);
    }

    public void b(Rect rect) {
        this.f1063b.getBoundsInScreen(rect);
    }

    public boolean c() {
        return this.f1063b.isCheckable();
    }

    public void a(boolean z) {
        this.f1063b.setCheckable(z);
    }

    public boolean d() {
        return this.f1063b.isChecked();
    }

    public void b(boolean z) {
        this.f1063b.setChecked(z);
    }

    public boolean e() {
        return this.f1063b.isFocusable();
    }

    public boolean f() {
        return this.f1063b.isFocused();
    }

    public boolean g() {
        return this.f1063b.isSelected();
    }

    public boolean h() {
        return this.f1063b.isClickable();
    }

    public boolean i() {
        return this.f1063b.isLongClickable();
    }

    public boolean j() {
        return this.f1063b.isEnabled();
    }

    public boolean k() {
        return this.f1063b.isPassword();
    }

    public boolean l() {
        return this.f1063b.isScrollable();
    }

    public void c(boolean z) {
        this.f1063b.setScrollable(z);
    }

    public CharSequence m() {
        return this.f1063b.getPackageName();
    }

    public CharSequence n() {
        return this.f1063b.getClassName();
    }

    public void a(CharSequence charSequence) {
        this.f1063b.setClassName(charSequence);
    }

    public CharSequence o() {
        return this.f1063b.getText();
    }

    public void b(CharSequence charSequence) {
        this.f1063b.setText(charSequence);
    }

    public CharSequence p() {
        return this.f1063b.getContentDescription();
    }

    public String q() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.f1063b.getViewIdResourceName();
        }
        return null;
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1063b.setCollectionInfo((AccessibilityNodeInfo.CollectionInfo) ((a) obj).f1064a);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1063b.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) ((C0028b) obj).f1065a);
        }
    }

    public void d(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1063b.setContentInvalid(z);
        }
    }

    public void c(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1063b.setError(charSequence);
        }
    }

    public void a(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1063b.setLabelFor(view);
        }
    }

    public void e(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1063b.setCanOpenPopup(z);
        }
    }

    public int hashCode() {
        if (this.f1063b == null) {
            return 0;
        }
        return this.f1063b.hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b bVar = (b) obj;
            return this.f1063b == null ? bVar.f1063b == null : this.f1063b.equals(bVar.f1063b);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        a(rect);
        sb.append("; boundsInParent: " + rect);
        b(rect);
        sb.append("; boundsInScreen: " + rect);
        sb.append("; packageName: ").append(m());
        sb.append("; className: ").append(n());
        sb.append("; text: ").append(o());
        sb.append("; contentDescription: ").append(p());
        sb.append("; viewId: ").append(q());
        sb.append("; checkable: ").append(c());
        sb.append("; checked: ").append(d());
        sb.append("; focusable: ").append(e());
        sb.append("; focused: ").append(f());
        sb.append("; selected: ").append(g());
        sb.append("; clickable: ").append(h());
        sb.append("; longClickable: ").append(i());
        sb.append("; enabled: ").append(j());
        sb.append("; password: ").append(k());
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

    private static String b(int i) {
        switch (i) {
            case 1:
                return "ACTION_FOCUS";
            case 2:
                return "ACTION_CLEAR_FOCUS";
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
            case RecyclerView.ItemAnimator.FLAG_MOVED /* 2048 */:
                return "ACTION_PREVIOUS_HTML_ELEMENT";
            case RecyclerView.ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT /* 4096 */:
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
}
