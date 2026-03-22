package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.a;
import androidx.appcompat.view.menu.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f861e;
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
        this.l = new PopupWindow.OnDismissListener() { // from class: androidx.appcompat.view.menu.n.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n.this.f();
            }
        };
        this.f857a = context;
        this.f858b = hVar;
        this.f = view;
        this.f859c = z;
        this.f860d = i;
        this.f861e = i2;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void a(View view) {
        this.f = view;
    }

    public void a(boolean z) {
        this.h = z;
        m mVar = this.j;
        if (mVar != null) {
            mVar.b(z);
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
            this.j = i();
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

    private m i() {
        m tVar;
        Display defaultDisplay = ((WindowManager) this.f857a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else {
            defaultDisplay.getSize(point);
        }
        if (Math.min(point.x, point.y) >= this.f857a.getResources().getDimensionPixelSize(a.d.abc_cascading_menus_min_smallest_width)) {
            tVar = new e(this.f857a, this.f, this.f860d, this.f861e, this.f859c);
        } else {
            tVar = new t(this.f857a, this.f858b, this.f, this.f860d, this.f861e, this.f859c);
        }
        tVar.a(this.f858b);
        tVar.a(this.l);
        tVar.a(this.f);
        tVar.a(this.i);
        tVar.b(this.h);
        tVar.a(this.g);
        return tVar;
    }

    private void a(int i, int i2, boolean z, boolean z2) {
        m mVarC = c();
        mVarC.c(z2);
        if (z) {
            if ((androidx.core.h.c.a(this.g, androidx.core.h.r.f(this.f)) & 7) == 5) {
                i -= this.f.getWidth();
            }
            mVarC.b(i);
            mVarC.c(i2);
            int i3 = (int) ((this.f857a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            mVarC.a(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
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
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public boolean g() {
        m mVar = this.j;
        return mVar != null && mVar.isShowing();
    }

    public void a(o.a aVar) {
        this.i = aVar;
        m mVar = this.j;
        if (mVar != null) {
            mVar.a(aVar);
        }
    }

    public ListView h() {
        return c().getListView();
    }
}
