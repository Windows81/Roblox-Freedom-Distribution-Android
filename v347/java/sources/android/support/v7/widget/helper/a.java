package android.support.v7.widget.helper;

import android.graphics.Canvas;
import android.support.v4.view.s;
import android.support.v7.d.a;
import android.support.v7.widget.RecyclerView;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
class a {

    /* JADX INFO: renamed from: android.support.v7.widget.helper.a$a, reason: collision with other inner class name */
    static class C0038a extends b {
        C0038a() {
        }

        @Override // android.support.v7.widget.helper.a.b, android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            if (z && view.getTag(a.b.item_touch_helper_previous_elevation) == null) {
                Float fValueOf = Float.valueOf(s.k(view));
                s.a(view, 1.0f + a(recyclerView, view));
                view.setTag(a.b.item_touch_helper_previous_elevation, fValueOf);
            }
            super.onDraw(canvas, recyclerView, view, f, f2, i, z);
        }

        private float a(RecyclerView recyclerView, View view) {
            int childCount = recyclerView.getChildCount();
            float f = 0.0f;
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (childAt != view) {
                    float fK = s.k(childAt);
                    if (fK > f) {
                        f = fK;
                    }
                }
            }
            return f;
        }

        @Override // android.support.v7.widget.helper.a.b, android.support.v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            Object tag = view.getTag(a.b.item_touch_helper_previous_elevation);
            if (tag != null && (tag instanceof Float)) {
                s.a(view, ((Float) tag).floatValue());
            }
            view.setTag(a.b.item_touch_helper_previous_elevation, null);
            super.clearView(view);
        }
    }

    static class b implements ItemTouchUIUtil {
        b() {
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void clearView(View view) {
            view.setTranslationX(0.0f);
            view.setTranslationY(0.0f);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onSelected(View view) {
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDraw(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
            view.setTranslationX(f);
            view.setTranslationY(f2);
        }

        @Override // android.support.v7.widget.helper.ItemTouchUIUtil
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, View view, float f, float f2, int i, boolean z) {
        }
    }
}
