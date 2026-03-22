package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.view.menu.h;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class u extends h implements SubMenu {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private h f1430d;
    private j e;

    public u(Context context, h hVar, j jVar) {
        super(context);
        this.f1430d = hVar;
        this.e = jVar;
    }

    @Override // android.support.v7.view.menu.h, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f1430d.setQwertyMode(z);
    }

    @Override // android.support.v7.view.menu.h
    public boolean b() {
        return this.f1430d.b();
    }

    @Override // android.support.v7.view.menu.h
    public boolean c() {
        return this.f1430d.c();
    }

    public Menu s() {
        return this.f1430d;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.e;
    }

    @Override // android.support.v7.view.menu.h
    public void a(h.a aVar) {
        this.f1430d.a(aVar);
    }

    @Override // android.support.v7.view.menu.h
    public h p() {
        return this.f1430d.p();
    }

    @Override // android.support.v7.view.menu.h
    boolean a(h hVar, MenuItem menuItem) {
        return super.a(hVar, menuItem) || this.f1430d.a(hVar, menuItem);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.e.setIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.e.setIcon(i);
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

    @Override // android.support.v7.view.menu.h
    public boolean c(j jVar) {
        return this.f1430d.c(jVar);
    }

    @Override // android.support.v7.view.menu.h
    public boolean d(j jVar) {
        return this.f1430d.d(jVar);
    }

    @Override // android.support.v7.view.menu.h
    public String a() {
        int itemId = this.e != null ? this.e.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.a() + ":" + itemId;
    }
}
