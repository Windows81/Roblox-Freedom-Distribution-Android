package android.support.v4.view;

import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class a {
    private static final View.AccessibilityDelegate DEFAULT_DELEGATE;
    private static final b IMPL;
    final View.AccessibilityDelegate mBridge = IMPL.a(this);

    static class b {
        b() {
        }

        public View.AccessibilityDelegate a(final a aVar) {
            return new View.AccessibilityDelegate() { // from class: android.support.v4.view.a.b.1
                @Override // android.view.View.AccessibilityDelegate
                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.onInitializeAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    aVar.onInitializeAccessibilityNodeInfo(view, android.support.v4.view.a.b.a(accessibilityNodeInfo));
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.onPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void sendAccessibilityEvent(View view, int i) {
                    aVar.sendAccessibilityEvent(view, i);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                }
            };
        }

        public android.support.v4.view.a.c a(View.AccessibilityDelegate accessibilityDelegate, View view) {
            return null;
        }

        public boolean a(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
            return false;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.view.a$a, reason: collision with other inner class name */
    static class C0027a extends b {
        C0027a() {
        }

        @Override // android.support.v4.view.a.b
        public View.AccessibilityDelegate a(final a aVar) {
            return new View.AccessibilityDelegate() { // from class: android.support.v4.view.a.a.1
                @Override // android.view.View.AccessibilityDelegate
                public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.onInitializeAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    aVar.onInitializeAccessibilityNodeInfo(view, android.support.v4.view.a.b.a(accessibilityNodeInfo));
                }

                @Override // android.view.View.AccessibilityDelegate
                public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.onPopulateAccessibilityEvent(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
                    return aVar.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void sendAccessibilityEvent(View view, int i) {
                    aVar.sendAccessibilityEvent(view, i);
                }

                @Override // android.view.View.AccessibilityDelegate
                public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
                    aVar.sendAccessibilityEventUnchecked(view, accessibilityEvent);
                }

                @Override // android.view.View.AccessibilityDelegate
                public AccessibilityNodeProvider getAccessibilityNodeProvider(View view) {
                    android.support.v4.view.a.c accessibilityNodeProvider = aVar.getAccessibilityNodeProvider(view);
                    if (accessibilityNodeProvider != null) {
                        return (AccessibilityNodeProvider) accessibilityNodeProvider.a();
                    }
                    return null;
                }

                @Override // android.view.View.AccessibilityDelegate
                public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
                    return aVar.performAccessibilityAction(view, i, bundle);
                }
            };
        }

        @Override // android.support.v4.view.a.b
        public android.support.v4.view.a.c a(View.AccessibilityDelegate accessibilityDelegate, View view) {
            AccessibilityNodeProvider accessibilityNodeProvider = accessibilityDelegate.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                return new android.support.v4.view.a.c(accessibilityNodeProvider);
            }
            return null;
        }

        @Override // android.support.v4.view.a.b
        public boolean a(View.AccessibilityDelegate accessibilityDelegate, View view, int i, Bundle bundle) {
            return accessibilityDelegate.performAccessibilityAction(view, i, bundle);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new C0027a();
        } else {
            IMPL = new b();
        }
        DEFAULT_DELEGATE = new View.AccessibilityDelegate();
    }

    View.AccessibilityDelegate getBridge() {
        return this.mBridge;
    }

    public void sendAccessibilityEvent(View view, int i) {
        DEFAULT_DELEGATE.sendAccessibilityEvent(view, i);
    }

    public void sendAccessibilityEventUnchecked(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.sendAccessibilityEventUnchecked(view, accessibilityEvent);
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        return DEFAULT_DELEGATE.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        DEFAULT_DELEGATE.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
        DEFAULT_DELEGATE.onInitializeAccessibilityNodeInfo(view, bVar.a());
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        return DEFAULT_DELEGATE.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    public android.support.v4.view.a.c getAccessibilityNodeProvider(View view) {
        return IMPL.a(DEFAULT_DELEGATE, view);
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return IMPL.a(DEFAULT_DELEGATE, view, i, bundle);
    }
}
