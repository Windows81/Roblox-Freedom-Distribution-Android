package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.view.b;
import android.support.v7.view.menu.k;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class l extends k {
    l(Context context, android.support.v4.c.a.b bVar) {
        super(context, bVar);
    }

    @Override // android.support.v7.view.menu.k
    k.a a(ActionProvider actionProvider) {
        return new a(this.f1369a, actionProvider);
    }

    class a extends k.a implements ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        b.InterfaceC0029b f1416c;

        public a(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // android.support.v4.view.b
        public View onCreateActionView(MenuItem menuItem) {
            return this.f1411a.onCreateActionView(menuItem);
        }

        @Override // android.support.v4.view.b
        public boolean overridesItemVisibility() {
            return this.f1411a.overridesItemVisibility();
        }

        @Override // android.support.v4.view.b
        public boolean isVisible() {
            return this.f1411a.isVisible();
        }

        @Override // android.support.v4.view.b
        public void refreshVisibility() {
            this.f1411a.refreshVisibility();
        }

        @Override // android.support.v4.view.b
        public void setVisibilityListener(b.InterfaceC0029b interfaceC0029b) {
            this.f1416c = interfaceC0029b;
            ActionProvider actionProvider = this.f1411a;
            if (interfaceC0029b == null) {
                this = null;
            }
            actionProvider.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            if (this.f1416c != null) {
                this.f1416c.a(z);
            }
        }
    }
}
