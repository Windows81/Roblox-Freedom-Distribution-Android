package android.support.v7.view.menu;

import android.content.Context;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f1365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f1366b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected h f1367c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected LayoutInflater f1368d;
    protected LayoutInflater e;
    protected p f;
    private o.a g;
    private int h;
    private int i;
    private int j;

    public abstract void a(j jVar, p.a aVar);

    public b(Context context, int i, int i2) {
        this.f1365a = context;
        this.f1368d = LayoutInflater.from(context);
        this.h = i;
        this.i = i2;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
        this.f1366b = context;
        this.e = LayoutInflater.from(this.f1366b);
        this.f1367c = hVar;
    }

    public p a(ViewGroup viewGroup) {
        if (this.f == null) {
            this.f = (p) this.f1368d.inflate(this.h, viewGroup, false);
            this.f.initialize(this.f1367c);
            b(true);
        }
        return this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.support.v7.view.menu.o
    public void b(boolean z) {
        int i;
        int i2;
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup != null) {
            if (this.f1367c != null) {
                this.f1367c.j();
                ArrayList<j> arrayListI = this.f1367c.i();
                int size = arrayListI.size();
                int i3 = 0;
                i = 0;
                while (i3 < size) {
                    j jVar = arrayListI.get(i3);
                    if (a(i, jVar)) {
                        View childAt = viewGroup.getChildAt(i);
                        j itemData = childAt instanceof p.a ? ((p.a) childAt).getItemData() : null;
                        View viewA = a(jVar, childAt, viewGroup);
                        if (jVar != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            a(viewA, i);
                        }
                        i2 = i + 1;
                    } else {
                        i2 = i;
                    }
                    i3++;
                    i = i2;
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (!a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    protected void a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f).addView(view, i);
    }

    protected boolean a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.g = aVar;
    }

    public o.a a() {
        return this.g;
    }

    public p.a b(ViewGroup viewGroup) {
        return (p.a) this.f1368d.inflate(this.i, viewGroup, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View a(j jVar, View view, ViewGroup viewGroup) {
        p.a aVarB;
        if (view instanceof p.a) {
            aVarB = (p.a) view;
        } else {
            aVarB = b(viewGroup);
        }
        a(jVar, aVarB);
        return (View) aVarB;
    }

    public boolean a(int i, j jVar) {
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (this.g != null) {
            this.g.a(hVar, z);
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (this.g != null) {
            return this.g.a(uVar);
        }
        return false;
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

    public void a(int i) {
        this.j = i;
    }
}
