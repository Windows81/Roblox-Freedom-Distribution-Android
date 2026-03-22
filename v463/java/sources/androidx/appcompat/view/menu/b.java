package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.o;
import androidx.appcompat.view.menu.p;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class b implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected Context f797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected Context f798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected h f799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected LayoutInflater f800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected LayoutInflater f801e;
    protected p f;
    private o.a g;
    private int h;
    private int i;
    private int j;

    public abstract void a(j jVar, p.a aVar);

    public boolean a(int i, j jVar) {
        return true;
    }

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

    public b(Context context, int i, int i2) {
        this.f797a = context;
        this.f800d = LayoutInflater.from(context);
        this.h = i;
        this.i = i2;
    }

    @Override // androidx.appcompat.view.menu.o
    public void a(Context context, h hVar) {
        this.f798b = context;
        this.f801e = LayoutInflater.from(context);
        this.f799c = hVar;
    }

    public p a(ViewGroup viewGroup) {
        if (this.f == null) {
            p pVar = (p) this.f800d.inflate(this.h, viewGroup, false);
            this.f = pVar;
            pVar.initialize(this.f799c);
            a(true);
        }
        return this.f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.o
    public void a(boolean z) {
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup == null) {
            return;
        }
        h hVar = this.f799c;
        int i = 0;
        if (hVar != null) {
            hVar.k();
            ArrayList<j> arrayListJ = this.f799c.j();
            int size = arrayListJ.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                j jVar = arrayListJ.get(i3);
                if (a(i2, jVar)) {
                    View childAt = viewGroup.getChildAt(i2);
                    j itemData = childAt instanceof p.a ? ((p.a) childAt).getItemData() : null;
                    View viewA = a(jVar, childAt, viewGroup);
                    if (jVar != itemData) {
                        viewA.setPressed(false);
                        viewA.jumpDrawablesToCurrentState();
                    }
                    if (viewA != childAt) {
                        a(viewA, i2);
                    }
                    i2++;
                }
            }
            i = i2;
        }
        while (i < viewGroup.getChildCount()) {
            if (!a(viewGroup, i)) {
                i++;
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

    @Override // androidx.appcompat.view.menu.o
    public void a(o.a aVar) {
        this.g = aVar;
    }

    public o.a a() {
        return this.g;
    }

    public p.a b(ViewGroup viewGroup) {
        return (p.a) this.f800d.inflate(this.i, viewGroup, false);
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

    @Override // androidx.appcompat.view.menu.o
    public void a(h hVar, boolean z) {
        o.a aVar = this.g;
        if (aVar != null) {
            aVar.a(hVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.o
    public boolean a(u uVar) {
        o.a aVar = this.g;
        if (aVar != null) {
            return aVar.a(uVar);
        }
        return false;
    }

    public void a(int i) {
        this.j = i;
    }
}
