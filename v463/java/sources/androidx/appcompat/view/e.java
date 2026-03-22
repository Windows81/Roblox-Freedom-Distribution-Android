package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.h;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class e extends b implements h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ActionBarContextView f747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b.a f748c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakReference<View> f749d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f750e;
    private boolean f;
    private androidx.appcompat.view.menu.h g;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z) {
        this.f746a = context;
        this.f747b = actionBarContextView;
        this.f748c = aVar;
        androidx.appcompat.view.menu.h hVarA = new androidx.appcompat.view.menu.h(actionBarContextView.getContext()).a(1);
        this.g = hVarA;
        hVarA.a(this);
        this.f = z;
    }

    @Override // androidx.appcompat.view.b
    public void b(CharSequence charSequence) {
        this.f747b.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void a(CharSequence charSequence) {
        this.f747b.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void a(int i) {
        b(this.f746a.getString(i));
    }

    @Override // androidx.appcompat.view.b
    public void b(int i) {
        a((CharSequence) this.f746a.getString(i));
    }

    @Override // androidx.appcompat.view.b
    public void a(boolean z) {
        super.a(z);
        this.f747b.setTitleOptional(z);
    }

    @Override // androidx.appcompat.view.b
    public boolean h() {
        return this.f747b.isTitleOptional();
    }

    @Override // androidx.appcompat.view.b
    public void a(View view) {
        this.f747b.setCustomView(view);
        this.f749d = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.b
    public void d() {
        this.f748c.b(this, this.g);
    }

    @Override // androidx.appcompat.view.b
    public void c() {
        if (this.f750e) {
            return;
        }
        this.f750e = true;
        this.f747b.sendAccessibilityEvent(32);
        this.f748c.a(this);
    }

    @Override // androidx.appcompat.view.b
    public Menu b() {
        return this.g;
    }

    @Override // androidx.appcompat.view.b
    public CharSequence f() {
        return this.f747b.getTitle();
    }

    @Override // androidx.appcompat.view.b
    public CharSequence g() {
        return this.f747b.getSubtitle();
    }

    @Override // androidx.appcompat.view.b
    public View i() {
        WeakReference<View> weakReference = this.f749d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.b
    public MenuInflater a() {
        return new g(this.f747b.getContext());
    }

    @Override // androidx.appcompat.view.menu.h.a
    public boolean a(androidx.appcompat.view.menu.h hVar, MenuItem menuItem) {
        return this.f748c.a(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.h.a
    public void a(androidx.appcompat.view.menu.h hVar) {
        d();
        this.f747b.showOverflowMenu();
    }
}
