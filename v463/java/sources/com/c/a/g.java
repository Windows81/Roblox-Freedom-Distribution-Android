package com.c.a;

import android.content.Context;
import com.c.a.t;
import com.c.a.y;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class g extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f3128a;

    g(Context context) {
        this.f3128a = context;
    }

    @Override // com.c.a.y
    public boolean a(w wVar) {
        return "content".equals(wVar.f3207d.getScheme());
    }

    @Override // com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(b(wVar), t.d.DISK);
    }

    InputStream b(w wVar) throws FileNotFoundException {
        return this.f3128a.getContentResolver().openInputStream(wVar.f3207d);
    }
}
