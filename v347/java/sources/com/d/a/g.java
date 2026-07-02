package com.d.a;

import android.content.Context;
import com.d.a.t;
import com.d.a.y;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
class g extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f2474a;

    g(Context context) {
        this.f2474a = context;
    }

    @Override // com.d.a.y
    public boolean a(w wVar) {
        return "content".equals(wVar.f2544d.getScheme());
    }

    @Override // com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(b(wVar), t.d.DISK);
    }

    InputStream b(w wVar) throws FileNotFoundException {
        return this.f2474a.getContentResolver().openInputStream(wVar.f2544d);
    }
}
