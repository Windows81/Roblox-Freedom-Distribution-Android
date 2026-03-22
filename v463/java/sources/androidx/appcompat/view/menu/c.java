package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
abstract class c<T> extends d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f802a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<androidx.core.b.a.b, MenuItem> f803c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<androidx.core.b.a.c, SubMenu> f804d;

    c(Context context, T t) {
        super(t);
        this.f802a = context;
    }

    final MenuItem a(MenuItem menuItem) {
        if (!(menuItem instanceof androidx.core.b.a.b)) {
            return menuItem;
        }
        androidx.core.b.a.b bVar = (androidx.core.b.a.b) menuItem;
        if (this.f803c == null) {
            this.f803c = new androidx.c.a();
        }
        MenuItem menuItem2 = this.f803c.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItem menuItemA = q.a(this.f802a, bVar);
        this.f803c.put(bVar, menuItemA);
        return menuItemA;
    }

    final SubMenu a(SubMenu subMenu) {
        if (!(subMenu instanceof androidx.core.b.a.c)) {
            return subMenu;
        }
        androidx.core.b.a.c cVar = (androidx.core.b.a.c) subMenu;
        if (this.f804d == null) {
            this.f804d = new androidx.c.a();
        }
        SubMenu subMenu2 = this.f804d.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        SubMenu subMenuA = q.a(this.f802a, cVar);
        this.f804d.put(cVar, subMenuA);
        return subMenuA;
    }

    final void a() {
        Map<androidx.core.b.a.b, MenuItem> map = this.f803c;
        if (map != null) {
            map.clear();
        }
        Map<androidx.core.b.a.c, SubMenu> map2 = this.f804d;
        if (map2 != null) {
            map2.clear();
        }
    }

    final void a(int i) {
        Map<androidx.core.b.a.b, MenuItem> map = this.f803c;
        if (map == null) {
            return;
        }
        Iterator<androidx.core.b.a.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getGroupId()) {
                it.remove();
            }
        }
    }

    final void b(int i) {
        Map<androidx.core.b.a.b, MenuItem> map = this.f803c;
        if (map == null) {
            return;
        }
        Iterator<androidx.core.b.a.b> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (i == it.next().getItemId()) {
                it.remove();
                return;
            }
        }
    }
}
