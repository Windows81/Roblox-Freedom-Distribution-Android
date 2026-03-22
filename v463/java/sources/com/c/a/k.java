package com.c.a;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class k extends g {
    k(Context context) {
        super(context);
    }

    @Override // com.c.a.g, com.c.a.y
    public boolean a(w wVar) {
        return "file".equals(wVar.f3207d.getScheme());
    }

    @Override // com.c.a.g, com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(null, b(wVar), t.d.DISK, a(wVar.f3207d));
    }

    static int a(Uri uri) throws IOException {
        int attributeInt = new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }
}
