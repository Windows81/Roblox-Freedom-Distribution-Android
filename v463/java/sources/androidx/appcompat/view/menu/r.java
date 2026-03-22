package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class r extends c<androidx.core.b.a.a> implements Menu {
    r(Context context, androidx.core.b.a.a aVar) {
        super(context, aVar);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(((androidx.core.b.a.a) this.f805b).add(charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(((androidx.core.b.a.a) this.f805b).add(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(((androidx.core.b.a.a) this.f805b).add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(((androidx.core.b.a.a) this.f805b).add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return a(((androidx.core.b.a.a) this.f805b).addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return a(((androidx.core.b.a.a) this.f805b).addSubMenu(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return a(((androidx.core.b.a.a) this.f805b).addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return a(((androidx.core.b.a.a) this.f805b).addSubMenu(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = ((androidx.core.b.a.a) this.f805b).addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = a(menuItemArr2[i5]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        b(i);
        ((androidx.core.b.a.a) this.f805b).removeItem(i);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        a(i);
        ((androidx.core.b.a.a) this.f805b).removeGroup(i);
    }

    @Override // android.view.Menu
    public void clear() {
        a();
        ((androidx.core.b.a.a) this.f805b).clear();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        ((androidx.core.b.a.a) this.f805b).setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        ((androidx.core.b.a.a) this.f805b).setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        ((androidx.core.b.a.a) this.f805b).setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return ((androidx.core.b.a.a) this.f805b).hasVisibleItems();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return a(((androidx.core.b.a.a) this.f805b).findItem(i));
    }

    @Override // android.view.Menu
    public int size() {
        return ((androidx.core.b.a.a) this.f805b).size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return a(((androidx.core.b.a.a) this.f805b).getItem(i));
    }

    @Override // android.view.Menu
    public void close() {
        ((androidx.core.b.a.a) this.f805b).close();
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return ((androidx.core.b.a.a) this.f805b).performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return ((androidx.core.b.a.a) this.f805b).isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return ((androidx.core.b.a.a) this.f805b).performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        ((androidx.core.b.a.a) this.f805b).setQwertyMode(z);
    }
}
