package androidx.appcompat.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.appcompat.a;
import androidx.appcompat.app.b;
import androidx.appcompat.view.menu.o;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class i implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.appcompat.app.b f840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o.a f841d;

    public i(h hVar) {
        this.f839b = hVar;
    }

    public void a(IBinder iBinder) {
        h hVar = this.f839b;
        b.a aVar = new b.a(hVar.f());
        f fVar = new f(aVar.a(), a.g.abc_list_menu_item_layout);
        this.f838a = fVar;
        fVar.a(this);
        this.f839b.a(this.f838a);
        aVar.a(this.f838a.a(), this);
        View viewP = hVar.p();
        if (viewP != null) {
            aVar.a(viewP);
        } else {
            aVar.a(hVar.o()).a(hVar.n());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        androidx.appcompat.app.b bVarB = aVar.b();
        this.f840c = bVarB;
        bVarB.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f840c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f840c.show();
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f840c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f840c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f839b.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f839b.performShortcut(i, keyEvent, 0);
    }

    public void a() {
        androidx.appcompat.app.b bVar = this.f840c;
        if (bVar != null) {
            bVar.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f838a.a(this.f839b, true);
    }

    @Override // androidx.appcompat.view.menu.o.a
    public void a(h hVar, boolean z) {
        if (z || hVar == this.f839b) {
            a();
        }
        o.a aVar = this.f841d;
        if (aVar != null) {
            aVar.a(hVar, z);
        }
    }

    @Override // androidx.appcompat.view.menu.o.a
    public boolean a(h hVar) {
        o.a aVar = this.f841d;
        if (aVar != null) {
            return aVar.a(hVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f839b.a((j) this.f838a.a().getItem(i), 0);
    }
}
