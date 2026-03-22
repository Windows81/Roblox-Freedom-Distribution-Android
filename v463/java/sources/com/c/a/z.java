package com.c.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class z extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f3223a;

    z(Context context) {
        this.f3223a = context;
    }

    @Override // com.c.a.y
    public boolean a(w wVar) {
        if (wVar.f3208e != 0) {
            return true;
        }
        return "android.resource".equals(wVar.f3207d.getScheme());
    }

    @Override // com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        Resources resourcesA = ae.a(this.f3223a, wVar);
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
