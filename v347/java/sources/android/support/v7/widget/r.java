package android.support.v7.widget;

import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1712c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1713d;
    int e;
    boolean h;
    boolean i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f1710a = true;
    int f = 0;
    int g = 0;

    r() {
    }

    boolean a(RecyclerView.State state) {
        return this.f1712c >= 0 && this.f1712c < state.getItemCount();
    }

    View a(RecyclerView.Recycler recycler) {
        View viewForPosition = recycler.getViewForPosition(this.f1712c);
        this.f1712c += this.f1713d;
        return viewForPosition;
    }

    public String toString() {
        return "LayoutState{mAvailable=" + this.f1711b + ", mCurrentPosition=" + this.f1712c + ", mItemDirection=" + this.f1713d + ", mLayoutDirection=" + this.e + ", mStartLine=" + this.f + ", mEndLine=" + this.g + '}';
    }
}
