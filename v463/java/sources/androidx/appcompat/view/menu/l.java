package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.k;
import androidx.core.h.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class l extends k {
    l(Context context, androidx.core.b.a.b bVar) {
        super(context, bVar);
    }

    @Override // androidx.appcompat.view.menu.k
    k.a a(ActionProvider actionProvider) {
        return new a(this.f802a, actionProvider);
    }

    class a extends k.a implements ActionProvider.VisibilityListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        b.InterfaceC0034b f854c;

        public a(Context context, ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // androidx.core.h.b
        public View onCreateActionView(MenuItem menuItem) {
            return this.f849a.onCreateActionView(menuItem);
        }

        @Override // androidx.core.h.b
        public boolean overridesItemVisibility() {
            return this.f849a.overridesItemVisibility();
        }

        @Override // androidx.core.h.b
        public boolean isVisible() {
            return this.f849a.isVisible();
        }

        @Override // androidx.core.h.b
        public void refreshVisibility() {
            this.f849a.refreshVisibility();
        }

        @Override // androidx.core.h.b
        public void setVisibilityListener(b.InterfaceC0034b interfaceC0034b) {
            this.f854c = interfaceC0034b;
            this.f849a.setVisibilityListener(interfaceC0034b != null ? this : null);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            b.InterfaceC0034b interfaceC0034b = this.f854c;
            if (interfaceC0034b != null) {
                interfaceC0034b.a(z);
            }
        }
    }
}
