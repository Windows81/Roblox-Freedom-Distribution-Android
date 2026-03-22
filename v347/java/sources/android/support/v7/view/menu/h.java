package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.a.a;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h implements android.support.v4.c.a.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[] f1397d = {1, 4, 5, 3, 2, 0};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    CharSequence f1398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Drawable f1399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f1400c;
    private final Context e;
    private final Resources f;
    private boolean g;
    private boolean h;
    private a i;
    private ContextMenu.ContextMenuInfo q;
    private j y;
    private boolean z;
    private int p = 0;
    private boolean r = false;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private ArrayList<j> w = new ArrayList<>();
    private CopyOnWriteArrayList<WeakReference<o>> x = new CopyOnWriteArrayList<>();
    private ArrayList<j> j = new ArrayList<>();
    private ArrayList<j> k = new ArrayList<>();
    private boolean l = true;
    private ArrayList<j> m = new ArrayList<>();
    private ArrayList<j> n = new ArrayList<>();
    private boolean o = true;

    public interface a {
        void a(h hVar);

        boolean a(h hVar, MenuItem menuItem);
    }

    public interface b {
        boolean invokeItem(j jVar);
    }

    public h(Context context) {
        this.e = context;
        this.f = context.getResources();
        e(true);
    }

    public h a(int i) {
        this.p = i;
        return this;
    }

    public void a(o oVar) {
        a(oVar, this.e);
    }

    public void a(o oVar, Context context) {
        this.x.add(new WeakReference<>(oVar));
        oVar.a(context, this);
        this.o = true;
    }

    public void b(o oVar) {
        for (WeakReference<o> weakReference : this.x) {
            o oVar2 = weakReference.get();
            if (oVar2 == null || oVar2 == oVar) {
                this.x.remove(weakReference);
            }
        }
    }

    private void d(boolean z) {
        if (!this.x.isEmpty()) {
            g();
            for (WeakReference<o> weakReference : this.x) {
                o oVar = weakReference.get();
                if (oVar == null) {
                    this.x.remove(weakReference);
                } else {
                    oVar.b(z);
                }
            }
            h();
        }
    }

    private boolean a(u uVar, o oVar) {
        if (this.x.isEmpty()) {
            return false;
        }
        boolean zA = oVar != null ? oVar.a(uVar) : false;
        Iterator<WeakReference<o>> it = this.x.iterator();
        while (true) {
            boolean zA2 = zA;
            if (!it.hasNext()) {
                return zA2;
            }
            WeakReference<o> next = it.next();
            o oVar2 = next.get();
            if (oVar2 == null) {
                this.x.remove(next);
            } else if (!zA2) {
                zA2 = oVar2.a(uVar);
            }
            zA = zA2;
        }
    }

    public void a(Bundle bundle) {
        int size = size();
        int i = 0;
        SparseArray<? extends Parcelable> sparseArray = null;
        while (i < size) {
            MenuItem item = getItem(i);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            SparseArray<? extends Parcelable> sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((u) item.getSubMenu()).a(bundle);
            }
            i++;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(a(), sparseArray);
        }
    }

    public void b(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle != null) {
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(a());
            int size = size();
            for (int i = 0; i < size; i++) {
                MenuItem item = getItem(i);
                View actionView = item.getActionView();
                if (actionView != null && actionView.getId() != -1) {
                    actionView.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((u) item.getSubMenu()).b(bundle);
                }
            }
            int i2 = bundle.getInt("android:menu:expandedactionview");
            if (i2 > 0 && (menuItemFindItem = findItem(i2)) != null) {
                menuItemFindItem.expandActionView();
            }
        }
    }

    protected String a() {
        return "android:menu:actionviewstates";
    }

    public void a(a aVar) {
        this.i = aVar;
    }

    protected MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        int iF = f(i3);
        j jVarA = a(i, i2, i3, iF, charSequence, this.p);
        if (this.q != null) {
            jVarA.a(this.q);
        }
        this.j.add(a(this.j, iF), jVarA);
        b(true);
        return jVarA;
    }

    private j a(int i, int i2, int i3, int i4, CharSequence charSequence, int i5) {
        return new j(this, i, i2, i3, i4, charSequence, i5);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return a(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return a(i, i2, i3, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return a(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return addSubMenu(0, 0, 0, this.f.getString(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        j jVar = (j) a(i, i2, i3, charSequence);
        u uVar = new u(this.e, this, jVar);
        jVar.a(uVar);
        return uVar;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return addSubMenu(i, i2, i3, this.f.getString(i4));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        PackageManager packageManager = this.e.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i4 & 1) == 0) {
            removeGroup(i);
        }
        for (int i5 = 0; i5 < size; i5++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i5);
            Intent intent2 = new Intent(resolveInfo.specificIndex < 0 ? intent : intentArr[resolveInfo.specificIndex]);
            intent2.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            MenuItem intent3 = add(i, i2, i3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && resolveInfo.specificIndex >= 0) {
                menuItemArr[resolveInfo.specificIndex] = intent3;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        a(b(i), true);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        int iC = c(i);
        if (iC >= 0) {
            int size = this.j.size() - iC;
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                if (i2 >= size || this.j.get(iC).getGroupId() != i) {
                    break;
                }
                a(iC, false);
                i2 = i3;
            }
            b(true);
        }
    }

    private void a(int i, boolean z) {
        if (i >= 0 && i < this.j.size()) {
            this.j.remove(i);
            if (z) {
                b(true);
            }
        }
    }

    @Override // android.view.Menu
    public void clear() {
        if (this.y != null) {
            d(this.y);
        }
        this.j.clear();
        b(true);
    }

    void a(MenuItem menuItem) {
        int groupId = menuItem.getGroupId();
        int size = this.j.size();
        g();
        for (int i = 0; i < size; i++) {
            j jVar = this.j.get(i);
            if (jVar.getGroupId() == groupId && jVar.g() && jVar.isCheckable()) {
                jVar.b(jVar == menuItem);
            }
        }
        h();
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.a(z2);
                jVar.setCheckable(z);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        int size = this.j.size();
        int i2 = 0;
        boolean z2 = false;
        while (i2 < size) {
            j jVar = this.j.get(i2);
            i2++;
            z2 = (jVar.getGroupId() == i && jVar.c(z)) ? true : z2;
        }
        if (z2) {
            b(true);
        }
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        int size = this.j.size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getGroupId() == i) {
                jVar.setEnabled(z);
            }
        }
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.z) {
            return true;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (this.j.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        MenuItem menuItemFindItem;
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = this.j.get(i2);
            if (jVar.getItemId() != i) {
                if (jVar.hasSubMenu() && (menuItemFindItem = jVar.getSubMenu().findItem(i)) != null) {
                    return menuItemFindItem;
                }
            } else {
                return jVar;
            }
        }
        return null;
    }

    public int b(int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (this.j.get(i2).getItemId() == i) {
                return i2;
            }
        }
        return -1;
    }

    public int c(int i) {
        return a(i, 0);
    }

    public int a(int i, int i2) {
        int size = size();
        if (i2 < 0) {
            i2 = 0;
        }
        for (int i3 = i2; i3 < size; i3++) {
            if (this.j.get(i3).getGroupId() == i) {
                return i3;
            }
        }
        return -1;
    }

    @Override // android.view.Menu
    public int size() {
        return this.j.size();
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return this.j.get(i);
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return a(i, keyEvent) != null;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.g = z;
        b(false);
    }

    private static int f(int i) {
        int i2 = ((-65536) & i) >> 16;
        if (i2 < 0 || i2 >= f1397d.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        return (f1397d[i2] << 16) | (65535 & i);
    }

    boolean b() {
        return this.g;
    }

    private void e(boolean z) {
        this.h = z && this.f.getConfiguration().keyboard != 1 && this.f.getBoolean(a.b.abc_config_showMenuShortcutsWhenKeyboardPresent);
    }

    public boolean c() {
        return this.h;
    }

    Resources d() {
        return this.f;
    }

    public Context e() {
        return this.e;
    }

    boolean a(h hVar, MenuItem menuItem) {
        return this.i != null && this.i.a(hVar, menuItem);
    }

    public void f() {
        if (this.i != null) {
            this.i.a(this);
        }
    }

    private static int a(ArrayList<j> arrayList, int i) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size).c() <= i) {
                return size + 1;
            }
        }
        return 0;
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        j jVarA = a(i, keyEvent);
        boolean zA = false;
        if (jVarA != null) {
            zA = a(jVarA, i2);
        }
        if ((i2 & 2) != 0) {
            a(true);
        }
        return zA;
    }

    void a(List<j> list, int i, KeyEvent keyEvent) {
        boolean zB = b();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i == 67) {
            int size = this.j.size();
            for (int i2 = 0; i2 < size; i2++) {
                j jVar = this.j.get(i2);
                if (jVar.hasSubMenu()) {
                    ((h) jVar.getSubMenu()).a(list, i, keyEvent);
                }
                char alphabeticShortcut = zB ? jVar.getAlphabeticShortcut() : jVar.getNumericShortcut();
                if (((modifiers & 69647) == ((zB ? jVar.getAlphabeticModifiers() : jVar.getNumericModifiers()) & 69647)) && alphabeticShortcut != 0 && ((alphabeticShortcut == keyData.meta[0] || alphabeticShortcut == keyData.meta[2] || (zB && alphabeticShortcut == '\b' && i == 67)) && jVar.isEnabled())) {
                    list.add(jVar);
                }
            }
        }
    }

    j a(int i, KeyEvent keyEvent) {
        ArrayList<j> arrayList = this.w;
        arrayList.clear();
        a(arrayList, i, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return arrayList.get(0);
        }
        boolean zB = b();
        for (int i2 = 0; i2 < size; i2++) {
            j jVar = arrayList.get(i2);
            char alphabeticShortcut = zB ? jVar.getAlphabeticShortcut() : jVar.getNumericShortcut();
            if (alphabeticShortcut == keyData.meta[0] && (metaState & 2) == 0) {
                return jVar;
            }
            if (alphabeticShortcut == keyData.meta[2] && (metaState & 2) != 0) {
                return jVar;
            }
            if (zB && alphabeticShortcut == '\b' && i == 67) {
                return jVar;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return a(findItem(i), i2);
    }

    public boolean a(MenuItem menuItem, int i) {
        return a(menuItem, (o) null, i);
    }

    public boolean a(MenuItem menuItem, o oVar, int i) {
        j jVar = (j) menuItem;
        if (jVar == null || !jVar.isEnabled()) {
            return false;
        }
        boolean zB = jVar.b();
        android.support.v4.view.b bVarA = jVar.a();
        boolean z = bVarA != null && bVarA.hasSubMenu();
        if (jVar.n()) {
            boolean zExpandActionView = jVar.expandActionView() | zB;
            if (zExpandActionView) {
                a(true);
                return zExpandActionView;
            }
            return zExpandActionView;
        }
        if (jVar.hasSubMenu() || z) {
            if ((i & 4) == 0) {
                a(false);
            }
            if (!jVar.hasSubMenu()) {
                jVar.a(new u(e(), this, jVar));
            }
            u uVar = (u) jVar.getSubMenu();
            if (z) {
                bVarA.onPrepareSubMenu(uVar);
            }
            boolean zA = a(uVar, oVar) | zB;
            if (!zA) {
                a(true);
                return zA;
            }
            return zA;
        }
        if ((i & 1) == 0) {
            a(true);
        }
        return zB;
    }

    public final void a(boolean z) {
        if (!this.v) {
            this.v = true;
            for (WeakReference<o> weakReference : this.x) {
                o oVar = weakReference.get();
                if (oVar == null) {
                    this.x.remove(weakReference);
                } else {
                    oVar.a(this, z);
                }
            }
            this.v = false;
        }
    }

    @Override // android.view.Menu
    public void close() {
        a(true);
    }

    public void b(boolean z) {
        if (!this.r) {
            if (z) {
                this.l = true;
                this.o = true;
            }
            d(z);
            return;
        }
        this.s = true;
        if (z) {
            this.t = true;
        }
    }

    public void g() {
        if (!this.r) {
            this.r = true;
            this.s = false;
            this.t = false;
        }
    }

    public void h() {
        this.r = false;
        if (this.s) {
            this.s = false;
            b(this.t);
        }
    }

    void a(j jVar) {
        this.l = true;
        b(true);
    }

    void b(j jVar) {
        this.o = true;
        b(true);
    }

    public ArrayList<j> i() {
        if (!this.l) {
            return this.k;
        }
        this.k.clear();
        int size = this.j.size();
        for (int i = 0; i < size; i++) {
            j jVar = this.j.get(i);
            if (jVar.isVisible()) {
                this.k.add(jVar);
            }
        }
        this.l = false;
        this.o = true;
        return this.k;
    }

    public void j() {
        boolean zB;
        ArrayList<j> arrayListI = i();
        if (this.o) {
            boolean z = false;
            for (WeakReference<o> weakReference : this.x) {
                o oVar = weakReference.get();
                if (oVar == null) {
                    this.x.remove(weakReference);
                    zB = z;
                } else {
                    zB = oVar.b() | z;
                }
                z = zB;
            }
            if (z) {
                this.m.clear();
                this.n.clear();
                int size = arrayListI.size();
                for (int i = 0; i < size; i++) {
                    j jVar = arrayListI.get(i);
                    if (jVar.j()) {
                        this.m.add(jVar);
                    } else {
                        this.n.add(jVar);
                    }
                }
            } else {
                this.m.clear();
                this.n.clear();
                this.n.addAll(i());
            }
            this.o = false;
        }
    }

    public ArrayList<j> k() {
        j();
        return this.m;
    }

    public ArrayList<j> l() {
        j();
        return this.n;
    }

    public void clearHeader() {
        this.f1399b = null;
        this.f1398a = null;
        this.f1400c = null;
        b(false);
    }

    private void a(int i, CharSequence charSequence, int i2, Drawable drawable, View view) {
        Resources resourcesD = d();
        if (view != null) {
            this.f1400c = view;
            this.f1398a = null;
            this.f1399b = null;
        } else {
            if (i > 0) {
                this.f1398a = resourcesD.getText(i);
            } else if (charSequence != null) {
                this.f1398a = charSequence;
            }
            if (i2 > 0) {
                this.f1399b = android.support.v4.a.c.a(e(), i2);
            } else if (drawable != null) {
                this.f1399b = drawable;
            }
            this.f1400c = null;
        }
        b(false);
    }

    protected h a(CharSequence charSequence) {
        a(0, charSequence, 0, null, null);
        return this;
    }

    protected h d(int i) {
        a(i, null, 0, null, null);
        return this;
    }

    protected h a(Drawable drawable) {
        a(0, null, 0, drawable, null);
        return this;
    }

    protected h e(int i) {
        a(0, null, i, null, null);
        return this;
    }

    protected h a(View view) {
        a(0, null, 0, null, view);
        return this;
    }

    public CharSequence m() {
        return this.f1398a;
    }

    public Drawable n() {
        return this.f1399b;
    }

    public View o() {
        return this.f1400c;
    }

    public h p() {
        return this;
    }

    boolean q() {
        return this.u;
    }

    public boolean c(j jVar) {
        boolean zA = false;
        if (!this.x.isEmpty()) {
            g();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (true) {
                boolean z = zA;
                if (!it.hasNext()) {
                    zA = z;
                    break;
                }
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                    zA = z;
                } else {
                    zA = oVar.a(this, jVar);
                    if (zA) {
                        break;
                    }
                }
            }
            h();
            if (zA) {
                this.y = jVar;
            }
        }
        return zA;
    }

    public boolean d(j jVar) {
        boolean zB = false;
        if (!this.x.isEmpty() && this.y == jVar) {
            g();
            Iterator<WeakReference<o>> it = this.x.iterator();
            while (true) {
                boolean z = zB;
                if (!it.hasNext()) {
                    zB = z;
                    break;
                }
                WeakReference<o> next = it.next();
                o oVar = next.get();
                if (oVar == null) {
                    this.x.remove(next);
                    zB = z;
                } else {
                    zB = oVar.b(this, jVar);
                    if (zB) {
                        break;
                    }
                }
            }
            h();
            if (zB) {
                this.y = null;
            }
        }
        return zB;
    }

    public j r() {
        return this.y;
    }

    public void c(boolean z) {
        this.z = z;
    }
}
