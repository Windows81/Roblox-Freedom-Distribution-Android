package android.support.v7.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerViewAccessibilityDelegate extends android.support.v4.view.a {
    final android.support.v4.view.a mItemDelegate = new ItemDelegate(this);
    final RecyclerView mRecyclerView;

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    boolean shouldIgnore() {
        return this.mRecyclerView.hasPendingAdapterUpdates();
    }

    @Override // android.support.v4.view.a
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) {
            return this.mRecyclerView.getLayoutManager().performAccessibilityAction(i, bundle);
        }
        return false;
    }

    @Override // android.support.v4.view.a
    public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
        super.onInitializeAccessibilityNodeInfo(view, bVar);
        bVar.a((CharSequence) RecyclerView.class.getName());
        if (!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) {
            this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(bVar);
        }
    }

    @Override // android.support.v4.view.a
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !shouldIgnore()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
            }
        }
    }

    public android.support.v4.view.a getItemDelegate() {
        return this.mItemDelegate;
    }

    public static class ItemDelegate extends android.support.v4.view.a {
        final RecyclerViewAccessibilityDelegate mRecyclerViewDelegate;

        public ItemDelegate(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
            this.mRecyclerViewDelegate = recyclerViewAccessibilityDelegate;
        }

        @Override // android.support.v4.view.a
        public void onInitializeAccessibilityNodeInfo(View view, android.support.v4.view.a.b bVar) {
            super.onInitializeAccessibilityNodeInfo(view, bVar);
            if (!this.mRecyclerViewDelegate.shouldIgnore() && this.mRecyclerViewDelegate.mRecyclerView.getLayoutManager() != null) {
                this.mRecyclerViewDelegate.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, bVar);
            }
        }

        @Override // android.support.v4.view.a
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (super.performAccessibilityAction(view, i, bundle)) {
                return true;
            }
            if (!this.mRecyclerViewDelegate.shouldIgnore() && this.mRecyclerViewDelegate.mRecyclerView.getLayoutManager() != null) {
                return this.mRecyclerViewDelegate.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, i, bundle);
            }
            return false;
        }
    }
}
