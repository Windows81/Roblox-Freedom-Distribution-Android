package android.support.v7.widget.util;

import android.support.v7.f.a;
import android.support.v7.widget.RecyclerView;

/* JADX INFO: loaded from: classes.dex */
public abstract class SortedListAdapterCallback<T2> extends a.AbstractC0036a<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    public void onInserted(int i, int i2) {
        this.mAdapter.notifyItemRangeInserted(i, i2);
    }

    public void onRemoved(int i, int i2) {
        this.mAdapter.notifyItemRangeRemoved(i, i2);
    }

    public void onMoved(int i, int i2) {
        this.mAdapter.notifyItemMoved(i, i2);
    }

    @Override // android.support.v7.f.a.AbstractC0036a
    public void onChanged(int i, int i2) {
        this.mAdapter.notifyItemRangeChanged(i, i2);
    }
}
