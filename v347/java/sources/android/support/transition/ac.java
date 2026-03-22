package android.support.transition;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class ac extends aj implements ae {
    ac(Context context, ViewGroup viewGroup, View view) {
        super(context, viewGroup, view);
    }

    static ac a(ViewGroup viewGroup) {
        return (ac) aj.d(viewGroup);
    }

    @Override // android.support.transition.ae
    public void a(View view) {
        this.f490a.a(view);
    }

    @Override // android.support.transition.ae
    public void b(View view) {
        this.f490a.b(view);
    }
}
