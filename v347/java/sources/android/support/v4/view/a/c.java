package android.support.v4.view.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1066a;

    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final c f1067a;

        a(c cVar) {
            this.f1067a = cVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            android.support.v4.view.a.b bVarA = this.f1067a.a(i);
            if (bVarA == null) {
                return null;
            }
            return bVarA.a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<android.support.v4.view.a.b> listA = this.f1067a.a(str, i);
            if (listA == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = listA.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList.add(listA.get(i2).a());
            }
            return arrayList;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public boolean performAction(int i, int i2, Bundle bundle) {
            return this.f1067a.a(i, i2, bundle);
        }
    }

    static class b extends a {
        b(c cVar) {
            super(cVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            android.support.v4.view.a.b bVarB = this.f1067a.b(i);
            if (bVarB == null) {
                return null;
            }
            return bVarB.a();
        }
    }

    public c() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1066a = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f1066a = new a(this);
        } else {
            this.f1066a = null;
        }
    }

    public c(Object obj) {
        this.f1066a = obj;
    }

    public Object a() {
        return this.f1066a;
    }

    public android.support.v4.view.a.b a(int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public List<android.support.v4.view.a.b> a(String str, int i) {
        return null;
    }

    public android.support.v4.view.a.b b(int i) {
        return null;
    }
}
