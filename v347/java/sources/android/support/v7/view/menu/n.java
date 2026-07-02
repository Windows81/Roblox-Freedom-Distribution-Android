package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.support.v7.a.a;
import android.support.v7.view.menu.o;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;

/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f1419a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f1420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f1421c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f1422d;
    private final int e;
    private View f;
    private int g;
    private boolean h;
    private o.a i;
    private m j;
    private PopupWindow.OnDismissListener k;
    private final PopupWindow.OnDismissListener l;

    public n(Context context, h hVar, View view, boolean z, int i) {
        this(context, hVar, view, z, i, 0);
    }

    public n(Context context, h hVar, View view, boolean z, int i, int i2) {
        this.g = 8388611;
        this.l = new PopupWindow.OnDismissListener() { // from class: android.support.v7.view.menu.n.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n.this.f();
            }
        };
        this.f1419a = context;
        this.f1420b = hVar;
        this.f = view;
        this.f1421c = z;
        this.f1422d = i;
        this.e = i2;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void a(View view) {
        this.f = view;
    }

    public void a(boolean z) {
        this.h = z;
        if (this.j != null) {
            this.j.a(z);
        }
    }

    public void a(int i) {
        this.g = i;
    }

    public int a() {
        return this.g;
    }

    public void b() {
        if (!d()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public m c() {
        if (this.j == null) {
            this.j = h();
        }
        return this.j;
    }

    public boolean d() {
        if (g()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public boolean a(int i, int i2) {
        if (g()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(i, i2, true, true);
        return true;
    }

    private m h() {
        m tVar;
        Display defaultDisplay = ((WindowManager) this.f1419a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f1419a.getResources().getDimensionPixelSize(a.d.abc_cascading_menus_min_smallest_width)) {
            tVar = new e(this.f1419a, this.f, this.f1422d, this.e, this.f1421c);
        } else {
            tVar = new t(this.f1419a, this.f1420b, this.f, this.f1422d, this.e, this.f1421c);
        }
        tVar.a(this.f1420b);
        tVar.a(this.l);
        tVar.a(this.f);
        tVar.a(this.i);
        tVar.a(this.h);
        tVar.a(this.g);
        return tVar;
    }

    private void a(int i, int i2, boolean z, boolean z2) {
        m mVarC = c();
        mVarC.c(z2);
        if (z) {
            if ((android.support.v4.view.d.a(this.g, android.support.v4.view.s.e(this.f)) & 7) == 5) {
                i += this.f.getWidth();
            }
            mVarC.b(i);
            mVarC.c(i2);
            int i3 = (int) ((this.f1419a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            mVarC.a(new Rect(i - i3, i2 - i3, i + i3, i3 + i2));
        }
        mVarC.show();
    }

    public void e() {
        if (g()) {
            this.j.dismiss();
        }
    }

    protected void f() {
        this.j = null;
        if (this.k != null) {
            this.k.onDismiss();
        }
    }

    public boolean g() {
        return this.j != null && this.j.isShowing();
    }

    public void a(o.a aVar) {
        this.i = aVar;
        if (this.j != null) {
            this.j.a(aVar);
        }
    }
}
