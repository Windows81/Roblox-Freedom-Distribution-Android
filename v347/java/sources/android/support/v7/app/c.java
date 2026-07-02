package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.app.aj;
import android.support.v4.app.x;
import android.support.v7.view.b;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.VectorEnabledTintResources;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* JADX INFO: loaded from: classes.dex */
public class c extends android.support.v4.app.h implements aj.a, d {
    private e m;
    private int n = 0;
    private Resources o;

    @Override // android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onCreate(Bundle bundle) {
        e eVarI = i();
        eVarI.h();
        eVarI.a(bundle);
        if (eVarI.i() && this.n != 0) {
            if (Build.VERSION.SDK_INT >= 23) {
                onApplyThemeResource(getTheme(), this.n, false);
            } else {
                setTheme(this.n);
            }
        }
        super.onCreate(bundle);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        this.n = i;
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        i().b(bundle);
    }

    public a f() {
        return i().a();
    }

    public void a(Toolbar toolbar) {
        i().a(toolbar);
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return i().b();
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        i().b(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        i().a(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i().a(view, layoutParams);
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i().b(view, layoutParams);
    }

    @Override // android.support.v4.app.h, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i().a(configuration);
        if (this.o != null) {
            this.o.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        i().e();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        i().c();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        super.onStop();
        i().d();
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) i().a(i);
    }

    @Override // android.support.v4.app.h, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        a aVarF = f();
        if (menuItem.getItemId() == 16908332 && aVarF != null && (aVarF.a() & 4) != 0) {
            return g();
        }
        return false;
    }

    @Override // android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        i().g();
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        i().a(charSequence);
    }

    @Override // android.support.v4.app.h
    public void c() {
        i().f();
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        i().f();
    }

    @Override // android.support.v7.app.d
    public void a(android.support.v7.view.b bVar) {
    }

    @Override // android.support.v7.app.d
    public void b(android.support.v7.view.b bVar) {
    }

    @Override // android.support.v7.app.d
    public android.support.v7.view.b a(b.a aVar) {
        return null;
    }

    public void a(aj ajVar) {
        ajVar.a((Activity) this);
    }

    public void b(aj ajVar) {
    }

    public boolean g() {
        Intent intentA = a();
        if (intentA != null) {
            if (a(intentA)) {
                aj ajVarA = aj.a((Context) this);
                a(ajVarA);
                b(ajVarA);
                ajVarA.a();
                try {
                    android.support.v4.app.a.a((Activity) this);
                } catch (IllegalStateException e) {
                    finish();
                }
            } else {
                b(intentA);
            }
            return true;
        }
        return false;
    }

    @Override // android.support.v4.app.aj.a
    public Intent a() {
        return x.a(this);
    }

    public boolean a(Intent intent) {
        return x.a(this, intent);
    }

    public void b(Intent intent) {
        x.b(this, intent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        h();
    }

    @Deprecated
    public void h() {
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    @Override // android.support.v4.app.h, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        i().c(bundle);
    }

    public e i() {
        if (this.m == null) {
            this.m = e.a(this, this);
        }
        return this.m;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        a aVarF = f();
        if (keyCode == 82 && aVarF != null && aVarF.a(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.o == null && VectorEnabledTintResources.shouldBeUsed()) {
            this.o = new VectorEnabledTintResources(this, super.getResources());
        }
        return this.o == null ? super.getResources() : this.o;
    }

    private boolean a(int i, KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        a aVarF = f();
        if (getWindow().hasFeature(0)) {
            if (aVarF == null || !aVarF.c()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        a aVarF = f();
        if (getWindow().hasFeature(0)) {
            if (aVarF == null || !aVarF.d()) {
                super.closeOptionsMenu();
            }
        }
    }
}
