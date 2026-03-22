package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.aul;
import com.google.android.gms.internal.ads.mj;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static WeakHashMap<View, f> f2974a = new WeakHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private aul f2975b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<View> f2976c;

    private final void a(com.google.android.gms.b.a aVar) {
        View view = this.f2976c != null ? this.f2976c.get() : null;
        if (view == null) {
            mj.e("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!f2974a.containsKey(view)) {
            f2974a.put(view, this);
        }
        if (this.f2975b != null) {
            try {
                this.f2975b.a(aVar);
            } catch (RemoteException e) {
                mj.b("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void a(c cVar) {
        a((com.google.android.gms.b.a) cVar.a());
    }

    public final void a(j jVar) {
        a((com.google.android.gms.b.a) jVar.k());
    }
}
