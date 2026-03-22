package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Bundle;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends androidx.fragment.app.b {
    @Override // androidx.fragment.app.b
    public Dialog a(Bundle bundle) {
        return new g(p(), d());
    }

    @Override // androidx.fragment.app.b
    public void a(Dialog dialog, int i) {
        if (dialog instanceof g) {
            g gVar = (g) dialog;
            if (i != 1 && i != 2) {
                if (i != 3) {
                    return;
                } else {
                    dialog.getWindow().addFlags(24);
                }
            }
            gVar.b(1);
            return;
        }
        super.a(dialog, i);
    }
}
