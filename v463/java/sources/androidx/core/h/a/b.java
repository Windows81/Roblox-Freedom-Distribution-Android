package androidx.core.h.a;

import android.os.Build;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class b {

    public interface a {
        void a(boolean z);
    }

    public static boolean a(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.addTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0033b(aVar));
    }

    public static boolean b(AccessibilityManager accessibilityManager, a aVar) {
        if (Build.VERSION.SDK_INT < 19 || aVar == null) {
            return false;
        }
        return accessibilityManager.removeTouchExplorationStateChangeListener(new AccessibilityManagerTouchExplorationStateChangeListenerC0033b(aVar));
    }

    /* JADX INFO: renamed from: androidx.core.h.a.b$b, reason: collision with other inner class name */
    private static class AccessibilityManagerTouchExplorationStateChangeListenerC0033b implements AccessibilityManager.TouchExplorationStateChangeListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a f1469a;

        AccessibilityManagerTouchExplorationStateChangeListenerC0033b(a aVar) {
            this.f1469a = aVar;
        }

        public int hashCode() {
            return this.f1469a.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f1469a.equals(((AccessibilityManagerTouchExplorationStateChangeListenerC0033b) obj).f1469a);
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public void onTouchExplorationStateChanged(boolean z) {
            this.f1469a.a(z);
        }
    }
}
