package com.d.a;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class k extends g {
    k(Context context) {
        super(context);
    }

    @Override // com.d.a.g, com.d.a.y
    public boolean a(w wVar) {
        return "file".equals(wVar.f2544d.getScheme());
    }

    @Override // com.d.a.g, com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(null, b(wVar), t.d.DISK, a(wVar.f2544d));
    }

    static int a(Uri uri) throws IOException {
        switch (new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1)) {
            case 3:
                return 180;
            case 4:
            case 5:
            case 7:
            default:
                return 0;
            case 6:
                return 90;
            case 8:
                return 270;
        }
    }
}
