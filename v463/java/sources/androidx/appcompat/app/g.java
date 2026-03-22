package androidx.appcompat.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.a;
import androidx.appcompat.view.b;
import androidx.core.h.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g extends Dialog implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private e f665a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d.a f666b;

    @Override // androidx.appcompat.app.d
    public androidx.appcompat.view.b a(b.a aVar) {
        return null;
    }

    @Override // androidx.appcompat.app.d
    public void a(androidx.appcompat.view.b bVar) {
    }

    @Override // androidx.appcompat.app.d
    public void b(androidx.appcompat.view.b bVar) {
    }

    public g(Context context, int i) {
        super(context, a(context, i));
        this.f666b = new d.a() { // from class: androidx.appcompat.app.g.1
            @Override // androidx.core.h.d.a
            public boolean a(KeyEvent keyEvent) {
                return g.this.a(keyEvent);
            }
        };
        a().a((Bundle) null);
        a().i();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        a().h();
        super.onCreate(bundle);
        a().a(bundle);
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        a().b(i);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        a().a(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().a(view, layoutParams);
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) a().a(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().a(charSequence);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        a().a(getContext().getString(i));
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().b(view, layoutParams);
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
        a().d();
    }

    public boolean b(int i) {
        return a().c(i);
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        a().f();
    }

    public e a() {
        if (this.f665a == null) {
            this.f665a = e.a(this, this);
        }
        return this.f665a;
    }

    private static int a(Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.C0012a.dialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    boolean a(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return androidx.core.h.d.a(this.f666b, getWindow().getDecorView(), this, keyEvent);
    }
}
