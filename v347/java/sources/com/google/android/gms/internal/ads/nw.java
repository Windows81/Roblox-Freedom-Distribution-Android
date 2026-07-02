package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: loaded from: classes.dex */
@cm
public final class nw {
    public static void a(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        new nx(view, onGlobalLayoutListener).a();
    }

    public static void a(View view, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        new ny(view, onScrollChangedListener).a();
    }
}
