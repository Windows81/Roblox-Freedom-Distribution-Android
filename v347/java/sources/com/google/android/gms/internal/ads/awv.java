package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
final class awv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<axv> f4573a = new ArrayList();

    awv() {
    }

    final void a(axw axwVar) {
        Handler handler = jm.f5184a;
        Iterator<axv> it = this.f4573a.iterator();
        while (it.hasNext()) {
            handler.post(new axu(this, it.next(), axwVar));
        }
        this.f4573a.clear();
    }
}
