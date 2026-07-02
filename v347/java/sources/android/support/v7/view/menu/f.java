package android.support.v7.view.menu;

import android.content.Context;
import android.os.IBinder;
import android.support.v7.a.a;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f implements o, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f1387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    LayoutInflater f1388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    h f1389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ExpandedMenuView f1390d;
    int e;
    int f;
    int g;
    a h;
    private o.a i;

    public f(Context context, int i) {
        this(i, 0);
        this.f1387a = context;
        this.f1388b = LayoutInflater.from(this.f1387a);
    }

    public f(int i, int i2) {
        this.g = i;
        this.f = i2;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
        if (this.f != 0) {
            this.f1387a = new ContextThemeWrapper(context, this.f);
            this.f1388b = LayoutInflater.from(this.f1387a);
        } else if (this.f1387a != null) {
            this.f1387a = context;
            if (this.f1388b == null) {
                this.f1388b = LayoutInflater.from(this.f1387a);
            }
        }
        this.f1389c = hVar;
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    public p a(ViewGroup viewGroup) {
        if (this.f1390d == null) {
            this.f1390d = (ExpandedMenuView) this.f1388b.inflate(a.g.abc_expanded_menu_layout, viewGroup, false);
            if (this.h == null) {
                this.h = new a();
            }
            this.f1390d.setAdapter((ListAdapter) this.h);
            this.f1390d.setOnItemClickListener(this);
        }
        return this.f1390d;
    }

    public ListAdapter a() {
        if (this.h == null) {
            this.h = new a();
        }
        return this.h;
    }

    @Override // android.support.v7.view.menu.o
    public void b(boolean z) {
        if (this.h != null) {
            this.h.notifyDataSetChanged();
        }
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.i = aVar;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (!uVar.hasVisibleItems()) {
            return false;
        }
        new i(uVar).a((IBinder) null);
        if (this.i != null) {
            this.i.a(uVar);
        }
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (this.i != null) {
            this.i.a(hVar, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.f1389c.a(this.h.getItem(i), this, 0);
    }

    @Override // android.support.v7.view.menu.o
    public boolean b() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1392b = -1;

        public a() {
            a();
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = f.this.f1389c.l().size() - f.this.e;
            return this.f1392b < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public j getItem(int i) {
            ArrayList<j> arrayListL = f.this.f1389c.l();
            int i2 = f.this.e + i;
            if (this.f1392b >= 0 && i2 >= this.f1392b) {
                i2++;
            }
            return arrayListL.get(i2);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewInflate = view == null ? f.this.f1388b.inflate(f.this.g, viewGroup, false) : view;
            ((p.a) viewInflate).a(getItem(i), 0);
            return viewInflate;
        }

        void a() {
            j jVarR = f.this.f1389c.r();
            if (jVarR != null) {
                ArrayList<j> arrayListL = f.this.f1389c.l();
                int size = arrayListL.size();
                for (int i = 0; i < size; i++) {
                    if (arrayListL.get(i) == jVarR) {
                        this.f1392b = i;
                        return;
                    }
                }
            }
            this.f1392b = -1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }
}
