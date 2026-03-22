package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.IBinder;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.view.menu.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f implements AdapterView.OnItemClickListener, o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f821a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LayoutInflater f822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f823c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ExpandedMenuView f824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f825e;
    int f;
    int g;
    a h;
    private o.a i;

    @Override // androidx.appcompat.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean b() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    public f(Context context, int i) {
        this(i, 0);
        this.f821a = context;
        this.f822b = LayoutInflater.from(context);
    }

    public f(int i, int i2) {
        this.g = i;
        this.f = i2;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(Context context, h hVar) {
        if (this.f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f);
            this.f821a = contextThemeWrapper;
            this.f822b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f821a != null) {
            this.f821a = context;
            if (this.f822b == null) {
                this.f822b = LayoutInflater.from(context);
            }
        }
        this.f823c = hVar;
        a aVar = this.h;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public p a(ViewGroup viewGroup) {
        if (this.f824d == null) {
            this.f824d = (ExpandedMenuView) this.f822b.inflate(a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.f824d.setAdapter((ListAdapter) this.h);
            this.f824d.setOnItemClickListener(this);
        }
        return this.f824d;
    }

    public ListAdapter a() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(boolean z) {
        a aVar = this.h;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(o.a aVar) {
        this.i = aVar;
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a(u uVar) {
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        new i(uVar).a((IBinder) null);
        o.a aVar = this.i;
        if (aVar == null) {
            return true;
        }
        aVar.a(uVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(h hVar, boolean z) {
        o.a aVar = this.i;
        if (aVar != null) {
            aVar.a(hVar, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f823c.a(this.h.getItem(i), this, 0);
    }

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f827b = -1;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public a() {
            a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = f.this.f823c.m().size() - f.this.f825e;
            return this.f827b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public j getItem(int i) {
            ArrayList<j> arrayListM = f.this.f823c.m();
            int i2 = i + f.this.f825e;
            int i3 = this.f827b;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return arrayListM.get(i2);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = f.this.f822b.inflate(f.this.g, viewGroup, false);
            }
            ((p.a) view).a(getItem(i), 0);
            return view;
        }

        void a() {
            j jVarS = f.this.f823c.s();
            if (jVarS != null) {
                ArrayList<j> arrayListM = f.this.f823c.m();
                int size = arrayListM.size();
                for (int i = 0; i < size; i++) {
                    if (arrayListM.get(i) == jVarS) {
                        this.f827b = i;
                        return;
                    }
                }
            }
            this.f827b = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }
}
