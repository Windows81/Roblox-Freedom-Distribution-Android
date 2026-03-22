package androidx.core.h.a;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f1474a;

    public c a(int i) {
        return null;
    }

    public List<c> a(String str, int i) {
        return null;
    }

    public boolean a(int i, int i2, Bundle bundle) {
        return false;
    }

    public c b(int i) {
        return null;
    }

    static class a extends AccessibilityNodeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final d f1475a;

        a(d dVar) {
            this.f1475a = dVar;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            c cVarA = this.f1475a.a(i);
            if (cVarA == null) {
                return null;
            }
            return cVarA.a();
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public List<AccessibilityNodeInfo> findAccessibilityNodeInfosByText(String str, int i) {
            List<c> listA = this.f1475a.a(str, i);
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
            return this.f1475a.a(i, i2, bundle);
        }
    }

    static class b extends a {
        b(d dVar) {
            super(dVar);
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public AccessibilityNodeInfo findFocus(int i) {
            c cVarB = this.f1475a.b(i);
            if (cVarB == null) {
                return null;
            }
            return cVarB.a();
        }
    }

    public d() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f1474a = new b(this);
        } else if (Build.VERSION.SDK_INT >= 16) {
            this.f1474a = new a(this);
        } else {
            this.f1474a = null;
        }
    }

    public d(Object obj) {
        this.f1474a = obj;
    }

    public Object a() {
        return this.f1474a;
    }
}
