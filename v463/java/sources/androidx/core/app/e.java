package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.core.h.d;
import androidx.lifecycle.g;
import androidx.lifecycle.t;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends Activity implements d.a, androidx.lifecycle.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.c.g<Class<? extends Object>, Object> f1276a = new androidx.c.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private androidx.lifecycle.k f1277b = new androidx.lifecycle.k(this);

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t.a(this);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        this.f1277b.a(g.b.CREATED);
        super.onSaveInstanceState(bundle);
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.g g() {
        return this.f1277b;
    }

    @Override // androidx.core.h.d.a
    public boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.h.d.a(decorView, keyEvent)) {
            return super.dispatchKeyShortcutEvent(keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView == null || !androidx.core.h.d.a(decorView, keyEvent)) {
            return androidx.core.h.d.a(this, decorView, this, keyEvent);
        }
        return true;
    }
}
