package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class j {
    static int a(RecyclerView.t tVar, h hVar, View view, View view2, RecyclerView.i iVar, boolean z, boolean z2) {
        int iMax;
        if (iVar.v() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        int iMin = Math.min(iVar.d(view), iVar.d(view2));
        int iMax2 = Math.max(iVar.d(view), iVar.d(view2));
        if (z2) {
            iMax = Math.max(0, (tVar.e() - iMax2) - 1);
        } else {
            iMax = Math.max(0, iMin);
        }
        if (!z) {
            return iMax;
        }
        return Math.round((iMax * (Math.abs(hVar.b(view2) - hVar.a(view)) / (Math.abs(iVar.d(view) - iVar.d(view2)) + 1))) + (hVar.c() - hVar.a(view)));
    }

    static int a(RecyclerView.t tVar, h hVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.v() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(iVar.d(view) - iVar.d(view2)) + 1;
        }
        return Math.min(hVar.f(), hVar.b(view2) - hVar.a(view));
    }

    static int b(RecyclerView.t tVar, h hVar, View view, View view2, RecyclerView.i iVar, boolean z) {
        if (iVar.v() == 0 || tVar.e() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return tVar.e();
        }
        return (int) (((hVar.b(view2) - hVar.a(view)) / (Math.abs(iVar.d(view) - iVar.d(view2)) + 1)) * tVar.e());
    }
}
