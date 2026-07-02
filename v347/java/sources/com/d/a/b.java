package com.d.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.d.a.t;
import com.d.a.y;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class b extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f2460a = "file:///android_asset/".length();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AssetManager f2461b;

    public b(Context context) {
        this.f2461b = context.getAssets();
    }

    @Override // com.d.a.y
    public boolean a(w wVar) {
        Uri uri = wVar.f2544d;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // com.d.a.y
    public y.a a(w wVar, int i) throws IOException {
        return new y.a(this.f2461b.open(b(wVar)), t.d.DISK);
    }

    static String b(w wVar) {
        return wVar.f2544d.toString().substring(f2460a);
    }
}
