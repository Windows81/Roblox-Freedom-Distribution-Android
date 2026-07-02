package com.google.ads.interactivemedia.v3.impl.a;

import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.impl.x;

/* JADX INFO: loaded from: classes.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f2812a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f2813b;

    public f(x xVar, ViewGroup viewGroup) {
        this.f2812a = viewGroup;
        this.f2813b = xVar.b();
    }

    public void a() {
        ViewGroup viewGroup = (ViewGroup) this.f2813b.getParent();
        if (viewGroup != null) {
            this.f2813b.setVisibility(4);
            viewGroup.removeView(this.f2813b);
        }
        this.f2812a.addView(this.f2813b, new ViewGroup.LayoutParams(-1, -1));
        this.f2813b.setVisibility(0);
    }

    public void b() {
        this.f2813b.setVisibility(4);
        this.f2812a.removeView(this.f2813b);
    }
}
