package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.support.v7.app.i;
import android.view.ActionMode;
import android.view.Window;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class j extends i {
    private final UiModeManager t;

    j(Context context, Window window, d dVar) {
        super(context, window, dVar);
        this.t = (UiModeManager) context.getSystemService("uimode");
    }

    @Override // android.support.v7.app.i, android.support.v7.app.f
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    @Override // android.support.v7.app.i
    int d(int i) {
        if (i == 0 && this.t.getNightMode() == 0) {
            return -1;
        }
        return super.d(i);
    }

    class a extends i.a {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            if (j.this.o()) {
                switch (i) {
                    case 0:
                        return a(callback);
                }
            }
            return super.onWindowStartingActionMode(callback, i);
        }

        @Override // android.support.v7.app.i.a, android.support.v7.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return null;
        }
    }
}
