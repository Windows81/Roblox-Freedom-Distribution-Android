package android.support.v7.view.menu;

import android.R;
import android.content.Context;
import android.support.v7.view.menu.h;
import android.support.v7.widget.TintTypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements h.b, p, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[] f1354a = {R.attr.background, R.attr.divider};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f1355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1356c;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, f1354a, i, 0);
        if (tintTypedArrayObtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable(tintTypedArrayObtainStyledAttributes.getDrawable(0));
        }
        if (tintTypedArrayObtainStyledAttributes.hasValue(1)) {
            setDivider(tintTypedArrayObtainStyledAttributes.getDrawable(1));
        }
        tintTypedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.support.v7.view.menu.p
    public void initialize(h hVar) {
        this.f1355b = hVar;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.support.v7.view.menu.h.b
    public boolean invokeItem(j jVar) {
        return this.f1355b.a(jVar, 0);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        invokeItem((j) getAdapter().getItem(i));
    }

    public int getWindowAnimations() {
        return this.f1356c;
    }
}
