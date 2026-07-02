package com.d.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class z extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f2557a;

    z(Context context) {
        this.f2557a = context;
    }

    @Override // com.d.a.y
    public boolean a(w wVar) {
        if (wVar.e != 0) {
            return true;
        }
        return "android.resource".equals(wVar.f2544d.getScheme());
    }

    @Override // com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        Resources resourcesA = ae.a(this.f2557a, wVar);
        return new y.a(a(resourcesA, ae.a(resourcesA, wVar), wVar), t.d.DISK);
    }

    private static Bitmap a(Resources resources, int i, w wVar) {
        BitmapFactory.Options optionsC = c(wVar);
        if (a(optionsC)) {
            BitmapFactory.decodeResource(resources, i, optionsC);
            a(wVar.h, wVar.i, optionsC, wVar);
        }
        return BitmapFactory.decodeResource(resources, i, optionsC);
    }
}
