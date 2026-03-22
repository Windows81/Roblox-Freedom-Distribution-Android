package android.support.v7.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
abstract class c<T> extends d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f1369a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<android.support.v4.c.a.b, MenuItem> f1370c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<android.support.v4.c.a.c, SubMenu> f1371d;

    c(Context context, T t) {
        super(t);
        this.f1369a = context;
    }

    final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof android.support.v4.c.a.b)) {
            return menuItem;
        }
        android.support.v4.c.a.b bVar = (android.support.v4.c.a.b) menuItem;
        if (this.f1370c == null) {
            this.f1370c = new android.support.v4.g.a();
        }
        MenuItem menuItem2 = this.f1370c.get(menuItem);
        if (menuItem2 == null) {
            MenuItem menuItemA = q.a(this.f1369a, bVar);
            this.f1370c.put(bVar, menuItemA);
            return menuItemA;
        }
        return menuItem2;
    }

    final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof android.support.v4.c.a.c)) {
            return subMenu;
        }
        android.support.v4.c.a.c cVar = (android.support.v4.c.a.c) subMenu;
        if (this.f1371d == null) {
            this.f1371d = new android.support.v4.g.a();
        }
        SubMenu subMenu2 = this.f1371d.get(cVar);
        if (subMenu2 == null) {
            SubMenu subMenuA = q.a(this.f1369a, cVar);
            this.f1371d.put(cVar, subMenuA);
            return subMenuA;
        }
        return subMenu2;
    }

    final void a() {
        if (this.f1370c != null) {
            this.f1370c.clear();
        }
        if (this.f1371d != null) {
            this.f1371d.clear();
        }
    }

    final void a(int i) {
        if (this.f1370c != null) {
            Iterator<android.support.v4.c.a.b> it = this.f1370c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getGroupId()) {
                    it.remove();
                }
            }
        }
    }

    final void b(int i) {
        if (this.f1370c != null) {
            Iterator<android.support.v4.c.a.b> it = this.f1370c.keySet().iterator();
            while (it.hasNext()) {
                if (i == it.next().getItemId()) {
                    it.remove();
                    return;
                }
            }
        }
    }
}
