package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.h;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class u extends h implements SubMenu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f870d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private j f871e;

    public u(Context context, h hVar, j jVar) {
        super(context);
        this.f870d = hVar;
        this.f871e = jVar;
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f870d.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean c() {
        return this.f870d.c();
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean d() {
        return this.f870d.d();
    }

    public Menu t() {
        return this.f870d;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f871e;
    }

    @Override // androidx.appcompat.view.menu.h
    public void a(h.a aVar) {
        this.f870d.a(aVar);
    }

    @Override // androidx.appcompat.view.menu.h
    public h q() {
        return this.f870d.q();
    }

    @Override // androidx.appcompat.view.menu.h
    boolean a(h hVar, MenuItem menuItem) {
        return super.a(hVar, menuItem) || this.f870d.a(hVar, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f871e.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f871e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) super.a(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return (SubMenu) super.e(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) super.a(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return (SubMenu) super.d(i);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) super.a(view);
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean c(j jVar) {
        return this.f870d.c(jVar);
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean d(j jVar) {
        return this.f870d.d(jVar);
    }

    @Override // androidx.appcompat.view.menu.h
    public String a() {
        j jVar = this.f871e;
        int itemId = jVar != null ? jVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }

    @Override // androidx.appcompat.view.menu.h, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f870d.setGroupDividerEnabled(z);
    }

    @Override // androidx.appcompat.view.menu.h
    public boolean b() {
        return this.f870d.b();
    }
}
