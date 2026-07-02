package android.support.v7.app;

import android.content.Context;
import android.support.v7.app.j;
import android.support.v7.app.k;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class g extends j {
    g(Context context, Window window, d dVar) {
        super(context, window, dVar);
    }

    @Override // android.support.v7.app.j, android.support.v7.app.i, android.support.v7.app.f
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    class a extends j.a {
        a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i) {
            k.d dVarA = g.this.a(0, true);
            if (dVarA != null && dVarA.j != null) {
                super.onProvideKeyboardShortcuts(list, dVarA.j, i);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i);
            }
        }
    }
}
