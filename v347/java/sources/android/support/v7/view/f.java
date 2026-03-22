package android.support.v7.view;

import android.content.Context;
import android.support.v4.g.m;
import android.support.v7.view.b;
import android.support.v7.view.menu.q;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f1326a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f1327b;

    public f(Context context, b bVar) {
        this.f1326a = context;
        this.f1327b = bVar;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f1327b.j();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f1327b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f1327b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f1327b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f1327b.d();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f1327b.c();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return q.a(this.f1326a, (android.support.v4.c.a.a) this.f1327b.b());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f1327b.f();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f1327b.a(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f1327b.g();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f1327b.b(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f1327b.i();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f1327b.a(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f1327b.a();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f1327b.k();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f1327b.a(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f1327b.h();
    }

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f1328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f1329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<f> f1330c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final m<Menu, Menu> f1331d = new m<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f1329b = context;
            this.f1328a = callback;
        }

        @Override // android.support.v7.view.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f1328a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // android.support.v7.view.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f1328a.onPrepareActionMode(b(bVar), a(menu));
        }

        @Override // android.support.v7.view.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f1328a.onActionItemClicked(b(bVar), q.a(this.f1329b, (android.support.v4.c.a.b) menuItem));
        }

        @Override // android.support.v7.view.b.a
        public void a(b bVar) {
            this.f1328a.onDestroyActionMode(b(bVar));
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f1331d.get(menu);
            if (menu2 == null) {
                Menu menuA = q.a(this.f1329b, (android.support.v4.c.a.a) menu);
                this.f1331d.put(menu, menuA);
                return menuA;
            }
            return menu2;
        }

        public ActionMode b(b bVar) {
            int size = this.f1330c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.f1330c.get(i);
                if (fVar != null && fVar.f1327b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f1329b, bVar);
            this.f1330c.add(fVar2);
            return fVar2;
        }
    }
}
