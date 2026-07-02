package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.qd;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f3163a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewGroup.LayoutParams f3164b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f3165c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f3166d;

    public h(qd qdVar) throws f {
        this.f3164b = qdVar.getLayoutParams();
        ViewParent parent = qdVar.getParent();
        this.f3166d = qdVar.q();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new f("Could not get the parent of the WebView for an overlay.");
        }
        this.f3165c = (ViewGroup) parent;
        this.f3163a = this.f3165c.indexOfChild(qdVar.getView());
        this.f3165c.removeView(qdVar.getView());
        qdVar.b(true);
    }
}
