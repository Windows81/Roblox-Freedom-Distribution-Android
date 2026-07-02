package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.os.IBinder;
import android.support.v7.a.a;
import android.support.v7.app.b;
import android.support.v7.view.menu.o;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes.dex */
class i implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, o.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    f f1401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f1402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.support.v7.app.b f1403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private o.a f1404d;

    public i(h hVar) {
        this.f1402b = hVar;
    }

    public void a(IBinder iBinder) {
        h hVar = this.f1402b;
        b.a aVar = new b.a(hVar.e());
        this.f1401a = new f(aVar.a(), a.g.abc_list_menu_item_layout);
        this.f1401a.a(this);
        this.f1402b.a(this.f1401a);
        aVar.a(this.f1401a.a(), this);
        View viewO = hVar.o();
        if (viewO != null) {
            aVar.a(viewO);
        } else {
            aVar.a(hVar.n()).a(hVar.m());
        }
        aVar.a((DialogInterface.OnKeyListener) this);
        this.f1403c = aVar.b();
        this.f1403c.setOnDismissListener(this);
        WindowManager.LayoutParams attributes = this.f1403c.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= 131072;
        this.f1403c.show();
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
                Window window2 = this.f1403c.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f1403c.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.f1402b.a(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.f1402b.performShortcut(i, keyEvent, 0);
    }

    public void a() {
        if (this.f1403c != null) {
            this.f1403c.dismiss();
        }
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        this.f1401a.a(this.f1402b, true);
    }

    @Override // android.support.v7.view.menu.o.a
    public void a(h hVar, boolean z) {
        if (z || hVar == this.f1402b) {
            a();
        }
        if (this.f1404d != null) {
            this.f1404d.a(hVar, z);
        }
    }

    @Override // android.support.v7.view.menu.o.a
    public boolean a(h hVar) {
        if (this.f1404d != null) {
            return this.f1404d.a(hVar);
        }
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.f1402b.a((j) this.f1401a.a().getItem(i), 0);
    }
}
