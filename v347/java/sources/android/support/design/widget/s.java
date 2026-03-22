package android.support.design.widget;

import android.content.Context;
import android.support.design.widget.CoordinatorLayout;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class s<V extends View> extends CoordinatorLayout.a<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private t f453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f455c;

    public s() {
        this.f454b = 0;
        this.f455c = 0;
    }

    public s(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f454b = 0;
        this.f455c = 0;
    }

    @Override // android.support.design.widget.CoordinatorLayout.a
    public boolean a(CoordinatorLayout coordinatorLayout, V v, int i) {
        b(coordinatorLayout, v, i);
        if (this.f453a == null) {
            this.f453a = new t(v);
        }
        this.f453a.a();
        if (this.f454b != 0) {
            this.f453a.a(this.f454b);
            this.f454b = 0;
        }
        if (this.f455c != 0) {
            this.f453a.b(this.f455c);
            this.f455c = 0;
            return true;
        }
        return true;
    }

    protected void b(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.a(v, i);
    }

    public boolean a(int i) {
        if (this.f453a != null) {
            return this.f453a.a(i);
        }
        this.f454b = i;
        return false;
    }

    public int b() {
        if (this.f453a != null) {
            return this.f453a.b();
        }
        return 0;
    }
}
