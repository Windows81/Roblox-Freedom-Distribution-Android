package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.WeakHashMap;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
public final class fe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakHashMap<Context, fg> f5011a = new WeakHashMap<>();

    public final Future<fc> a(Context context) {
        return jk.a(new ff(this, context));
    }
}
