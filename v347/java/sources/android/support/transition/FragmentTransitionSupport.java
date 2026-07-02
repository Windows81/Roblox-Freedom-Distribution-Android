package android.support.transition;

import android.graphics.Rect;
import android.support.transition.u;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FragmentTransitionSupport extends android.support.v4.app.s {
    @Override // android.support.v4.app.s
    public boolean a(Object obj) {
        return obj instanceof u;
    }

    @Override // android.support.v4.app.s
    public Object b(Object obj) {
        if (obj == null) {
            return null;
        }
        return ((u) obj).clone();
    }

    @Override // android.support.v4.app.s
    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        y yVar = new y();
        yVar.b((u) obj);
        return yVar;
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, View view, ArrayList<View> arrayList) {
        y yVar = (y) obj;
        List<View> listG = yVar.g();
        listG.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            a(listG, arrayList.get(i));
        }
        listG.add(view);
        arrayList.add(view);
        a(yVar, arrayList);
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, View view) {
        if (view != null) {
            final Rect rect = new Rect();
            a(view, rect);
            ((u) obj).a(new u.b() { // from class: android.support.transition.FragmentTransitionSupport.1
            });
        }
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, ArrayList<View> arrayList) {
        u uVar = (u) obj;
        if (uVar != null) {
            if (uVar instanceof y) {
                y yVar = (y) uVar;
                int iO = yVar.o();
                for (int i = 0; i < iO; i++) {
                    a(yVar.b(i), arrayList);
                }
                return;
            }
            if (!a(uVar) && a((List) uVar.g())) {
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    uVar.b(arrayList.get(i2));
                }
            }
        }
    }

    private static boolean a(u uVar) {
        return (a((List) uVar.f()) && a((List) uVar.h()) && a((List) uVar.i())) ? false : true;
    }

    @Override // android.support.v4.app.s
    public Object a(Object obj, Object obj2, Object obj3) {
        y yVar = new y();
        if (obj != null) {
            yVar.b((u) obj);
        }
        if (obj2 != null) {
            yVar.b((u) obj2);
        }
        if (obj3 != null) {
            yVar.b((u) obj3);
        }
        return yVar;
    }

    @Override // android.support.v4.app.s
    public void b(Object obj, final View view, final ArrayList<View> arrayList) {
        ((u) obj).a(new u.c() { // from class: android.support.transition.FragmentTransitionSupport.2
            @Override // android.support.transition.u.c
            public void d(u uVar) {
            }

            @Override // android.support.transition.u.c
            public void a(u uVar) {
                uVar.b(this);
                view.setVisibility(8);
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    ((View) arrayList.get(i)).setVisibility(0);
                }
            }

            @Override // android.support.transition.u.c
            public void b(u uVar) {
            }

            @Override // android.support.transition.u.c
            public void c(u uVar) {
            }
        });
    }

    @Override // android.support.v4.app.s
    public Object b(Object obj, Object obj2, Object obj3) {
        u uVarA = null;
        u uVar = (u) obj;
        u uVar2 = (u) obj2;
        u uVar3 = (u) obj3;
        if (uVar != null && uVar2 != null) {
            uVarA = new y().b(uVar).b(uVar2).a(1);
        } else if (uVar != null) {
            uVarA = uVar;
        } else if (uVar2 != null) {
            uVarA = uVar2;
        }
        if (uVar3 == null) {
            return uVarA;
        }
        y yVar = new y();
        if (uVarA != null) {
            yVar.b(uVarA);
        }
        yVar.b(uVar3);
        return yVar;
    }

    @Override // android.support.v4.app.s
    public void a(ViewGroup viewGroup, Object obj) {
        w.a(viewGroup, (u) obj);
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, final Object obj2, final ArrayList<View> arrayList, final Object obj3, final ArrayList<View> arrayList2, final Object obj4, final ArrayList<View> arrayList3) {
        ((u) obj).a(new u.c() { // from class: android.support.transition.FragmentTransitionSupport.3
            @Override // android.support.transition.u.c
            public void d(u uVar) {
                if (obj2 != null) {
                    FragmentTransitionSupport.this.b(obj2, arrayList, (ArrayList<View>) null);
                }
                if (obj3 != null) {
                    FragmentTransitionSupport.this.b(obj3, arrayList2, (ArrayList<View>) null);
                }
                if (obj4 != null) {
                    FragmentTransitionSupport.this.b(obj4, arrayList3, (ArrayList<View>) null);
                }
            }

            @Override // android.support.transition.u.c
            public void a(u uVar) {
            }

            @Override // android.support.transition.u.c
            public void b(u uVar) {
            }

            @Override // android.support.transition.u.c
            public void c(u uVar) {
            }
        });
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        y yVar = (y) obj;
        if (yVar != null) {
            yVar.g().clear();
            yVar.g().addAll(arrayList2);
            b((Object) yVar, arrayList, arrayList2);
        }
    }

    @Override // android.support.v4.app.s
    public void b(Object obj, ArrayList<View> arrayList, ArrayList<View> arrayList2) {
        u uVar = (u) obj;
        if (uVar instanceof y) {
            y yVar = (y) uVar;
            int iO = yVar.o();
            for (int i = 0; i < iO; i++) {
                b((Object) yVar.b(i), arrayList, arrayList2);
            }
            return;
        }
        if (!a(uVar)) {
            List<View> listG = uVar.g();
            if (listG.size() == arrayList.size() && listG.containsAll(arrayList)) {
                int size = arrayList2 == null ? 0 : arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    uVar.b(arrayList2.get(i2));
                }
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    uVar.c(arrayList.get(size2));
                }
            }
        }
    }

    @Override // android.support.v4.app.s
    public void b(Object obj, View view) {
        if (obj != null) {
            ((u) obj).b(view);
        }
    }

    @Override // android.support.v4.app.s
    public void c(Object obj, View view) {
        if (obj != null) {
            ((u) obj).c(view);
        }
    }

    @Override // android.support.v4.app.s
    public void a(Object obj, final Rect rect) {
        if (obj != null) {
            ((u) obj).a(new u.b() { // from class: android.support.transition.FragmentTransitionSupport.4
            });
        }
    }
}
