package androidx.appcompat.view;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.q;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class f extends ActionMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f751a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f752b;

    public f(Context context, b bVar) {
        this.f751a = context;
        this.f752b = bVar;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.f752b.j();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.f752b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.f752b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.f752b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.f752b.d();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.f752b.c();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return q.a(this.f751a, (androidx.core.b.a.a) this.f752b.b());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.f752b.f();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.f752b.a(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.f752b.g();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.f752b.b(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.f752b.i();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.f752b.a(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.f752b.a();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.f752b.k();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.f752b.a(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.f752b.h();
    }

    public static class a implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ActionMode.Callback f753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Context f754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<f> f755c = new ArrayList<>();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final androidx.c.g<Menu, Menu> f756d = new androidx.c.g<>();

        public a(Context context, ActionMode.Callback callback) {
            this.f754b = context;
            this.f753a = callback;
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f753a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f753a.onPrepareActionMode(b(bVar), a(menu));
        }

        @Override // androidx.appcompat.view.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f753a.onActionItemClicked(b(bVar), q.a(this.f754b, (androidx.core.b.a.b) menuItem));
        }

        @Override // androidx.appcompat.view.b.a
        public void a(b bVar) {
            this.f753a.onDestroyActionMode(b(bVar));
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.f756d.get(menu);
            if (menu2 != null) {
                return menu2;
            }
            Menu menuA = q.a(this.f754b, (androidx.core.b.a.a) menu);
            this.f756d.put(menu, menuA);
            return menuA;
        }

        public ActionMode b(b bVar) {
            int size = this.f755c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.f755c.get(i);
                if (fVar != null && fVar.f752b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.f754b, bVar);
            this.f755c.add(fVar2);
            return fVar2;
        }
    }
}
