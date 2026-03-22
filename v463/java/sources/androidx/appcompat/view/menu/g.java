package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f829b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f830c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f831d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayoutInflater f832e;
    private final int f;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public g(h hVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f831d = z;
        this.f832e = layoutInflater;
        this.f828a = hVar;
        this.f = i;
        b();
    }

    public void a(boolean z) {
        this.f830c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<j> arrayListM = this.f831d ? this.f828a.m() : this.f828a.j();
        if (this.f829b < 0) {
            return arrayListM.size();
        }
        return arrayListM.size() - 1;
    }

    public h a() {
        return this.f828a;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public j getItem(int i) {
        ArrayList<j> arrayListM = this.f831d ? this.f828a.m() : this.f828a.j();
        int i2 = this.f829b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return arrayListM.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f832e.inflate(this.f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f828a.b() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        p.a aVar = (p.a) view;
        if (this.f830c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.a(getItem(i), 0);
        return view;
    }

    void b() {
        j jVarS = this.f828a.s();
        if (jVarS != null) {
            ArrayList<j> arrayListM = this.f828a.m();
            int size = arrayListM.size();
            for (int i = 0; i < size; i++) {
                if (arrayListM.get(i) == jVarS) {
                    this.f829b = i;
                    return;
                }
            }
        }
        this.f829b = -1;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        b();
        super.notifyDataSetChanged();
    }
}
