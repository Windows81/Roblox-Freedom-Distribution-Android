package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.ads.cm;
import com.google.android.gms.internal.ads.kg;

/* JADX INFO: loaded from: classes.dex */
@cm
final class g extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    boolean f3161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private kg f3162b;

    public g(Context context, String str, String str2) {
        super(context);
        this.f3162b = new kg(context, str);
        this.f3162b.b(str2);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f3161a) {
            return false;
        }
        this.f3162b.a(motionEvent);
        return false;
    }
}
