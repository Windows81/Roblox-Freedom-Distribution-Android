package androidx.recyclerview.widget;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f2378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f2381e;
    boolean h;
    boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f2377a = true;
    int f = 0;
    int g = 0;

    f() {
    }

    boolean a(RecyclerView.t tVar) {
        int i = this.f2379c;
        return i >= 0 && i < tVar.e();
    }

    View a(RecyclerView.p pVar) {
        View viewC = pVar.c(this.f2379c);
        this.f2379c += this.f2380d;
        return viewC;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f2378b + ", mCurrentPosition=" + this.f2379c + ", mItemDirection=" + this.f2380d + ", mLayoutDirection=" + this.f2381e + ", mStartLine=" + this.f + ", mEndLine=" + this.g + '}';
    }
}
