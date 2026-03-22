package com.c.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.c.a.t;
import com.c.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class b extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f3113a = 22;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AssetManager f3114b;

    public b(Context context) {
        this.f3114b = context.getAssets();
    }

    @Override // com.c.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f3207d;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.c.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(this.f3114b.open(b(wVar)), t.d.DISK);
    }

    static String b(w wVar) {
        return wVar.f3207d.toString().substring(f3113a);
    }
}
