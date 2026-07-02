package android.support.v7.view.menu;

import android.support.v7.a.a;
import android.support.v7.view.menu.p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class g extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final int f1393a = a.g.abc_popup_menu_item_layout;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    h f1394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1395c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1396d;
    private final boolean e;
    private final LayoutInflater f;

    public g(h hVar, LayoutInflater layoutInflater, boolean z) {
        this.e = z;
        this.f = layoutInflater;
        this.f1394b = hVar;
        b();
    }

    public void a(boolean z) {
        this.f1396d = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<j> arrayListL = this.e ? this.f1394b.l() : this.f1394b.i();
        if (this.f1395c < 0) {
            return arrayListL.size();
        }
        return arrayListL.size() - 1;
    }

    public h a() {
        return this.f1394b;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j getItem(int i) {
        ArrayList<j> arrayListL = this.e ? this.f1394b.l() : this.f1394b.i();
        if (this.f1395c >= 0 && i >= this.f1395c) {
            i++;
        }
        return arrayListL.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate = view == null ? this.f.inflate(f1393a, viewGroup, false) : view;
        p.a aVar = (p.a) viewInflate;
        if (this.f1396d) {
            ((ListMenuItemView) viewInflate).setForceShowIcon(true);
        }
        aVar.a(getItem(i), 0);
        return viewInflate;
    }

    void b() {
        j jVarR = this.f1394b.r();
        if (jVarR != null) {
            ArrayList<j> arrayListL = this.f1394b.l();
            int size = arrayListL.size();
            for (int i = 0; i < size; i++) {
                if (arrayListL.get(i) == jVarR) {
                    this.f1395c = i;
                    return;
                }
            }
        }
        this.f1395c = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
