package com.google.ads.interactivemedia.v3.impl.a;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.a.a;
import com.google.ads.interactivemedia.v3.impl.ab;
import com.google.ads.interactivemedia.v3.impl.w;
import com.google.ads.interactivemedia.v3.impl.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends RelativeLayout implements View.OnClickListener, ab.b, x.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private FrameLayout f2802a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<a> f2803b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final float f2804c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2805d;
    private x e;
    private boolean f;
    private float g;
    private String h;
    private b i;
    private com.google.ads.interactivemedia.v3.impl.a.b j;
    private d k;
    private com.google.ads.interactivemedia.v3.impl.a.a l;
    private int m;
    private int n;

    public interface a extends a.InterfaceC0059a {
        void a();

        void b();
    }

    private enum b {
        NOT_SKIPPABLE,
        WAITING_TO_SKIP,
        SKIPPABLE
    }

    public e(Context context, d dVar, x xVar, String str) {
        this(context, dVar, xVar, str, null, null);
    }

    e(Context context, d dVar, x xVar, String str, com.google.ads.interactivemedia.v3.impl.a.a aVar, com.google.ads.interactivemedia.v3.impl.a.b bVar) {
        super(context);
        this.f2803b = new ArrayList();
        this.f = false;
        this.e = xVar;
        this.f2805d = str;
        this.k = dVar;
        this.l = aVar;
        this.j = bVar;
        this.f2804c = getResources().getDisplayMetrics().density;
        d(context);
        if (dVar.f2799b) {
            c(context);
        }
        a(this.f);
    }

    public View a() {
        return this;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.x.d
    public void a(w.c cVar, String str) {
        switch (cVar) {
            case adRemainingTime:
                a(str);
                break;
            case learnMore:
                b(str);
                break;
            case preSkipButton:
                this.j.a(str);
                break;
            case skipButton:
                this.j.a(str);
                this.i = b.SKIPPABLE;
                Iterator<a> it = this.f2803b.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
                break;
        }
    }

    private void c(Context context) {
        a(context);
        this.f2802a = new FrameLayout(context);
        this.f2802a.addView(this.j, new RelativeLayout.LayoutParams(-2, -2));
        int iA = c.a(this.k.r, this.f2804c);
        this.f2802a.setPadding(iA, iA, 0, iA);
        this.f2802a.setOnClickListener(this);
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.addView(this.f2802a, new RelativeLayout.LayoutParams(-2, -2));
        frameLayout.setPadding(0, 0, 0, c.a(this.k.s, this.f2804c));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        frameLayout.setLayoutParams(layoutParams);
        addView(frameLayout);
    }

    private void d(Context context) {
        b(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        addView(this.l, layoutParams);
        this.l.a(new a.InterfaceC0059a() { // from class: com.google.ads.interactivemedia.v3.impl.a.e.1
            @Override // com.google.ads.interactivemedia.v3.impl.a.a.InterfaceC0059a
            public void c() {
                Iterator it = e.this.f2803b.iterator();
                while (it.hasNext()) {
                    ((a) it.next()).c();
                }
            }
        });
    }

    private void a(String str) {
        if (!this.f) {
            this.l.a(str);
        } else {
            if (!TextUtils.isEmpty(this.h)) {
                com.google.ads.interactivemedia.v3.impl.a.a aVar = this.l;
                String str2 = this.h;
                aVar.a(new StringBuilder(String.valueOf(str).length() + 3 + String.valueOf(str2).length()).append(str).append(": ").append(str2).append("»").toString());
                return;
            }
            this.l.a(str);
        }
    }

    private void b(String str) {
        this.l.b(str);
    }

    public void a(a aVar) {
        this.f2803b.add(aVar);
    }

    public void a(Ad ad) {
        this.m = ad.getAdPodInfo().getAdPosition();
        this.n = ad.getAdPodInfo().getTotalAds();
        a("");
        if (this.k.m) {
            b(this.k.n);
            this.e.b(new w(w.b.i18n, w.c.learnMore, this.f2805d));
        }
        if (ad.isSkippable()) {
            this.i = b.WAITING_TO_SKIP;
            this.f2802a.setVisibility(0);
            HashMap map = new HashMap(1);
            map.put("seconds", 5);
            this.e.b(new w(w.b.i18n, w.c.preSkipButton, this.f2805d, map));
        } else {
            this.i = b.NOT_SKIPPABLE;
            if (this.f2802a != null) {
                this.f2802a.setVisibility(4);
            }
        }
        setVisibility(0);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab.b
    public void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() >= 0.0f) {
            float duration = videoProgressUpdate.getDuration() - videoProgressUpdate.getCurrentTime();
            boolean z = Math.floor((double) duration) != Math.floor((double) this.g);
            if (z) {
                HashMap map = new HashMap(4);
                map.put("minutes", Integer.valueOf(((int) duration) / 60));
                map.put("seconds", Integer.valueOf(((int) duration) % 60));
                map.put("adPosition", Integer.valueOf(this.m));
                map.put("totalAds", Integer.valueOf(this.n));
                this.e.b(new w(w.b.i18n, w.c.adRemainingTime, this.f2805d, map));
            }
            this.g = duration;
            if (this.i == b.WAITING_TO_SKIP) {
                float currentTime = 5.0f - videoProgressUpdate.getCurrentTime();
                if (currentTime <= 0.0f) {
                    this.e.b(new w(w.b.i18n, w.c.skipButton, this.f2805d));
                } else if (z) {
                    HashMap map2 = new HashMap(1);
                    map2.put("seconds", Float.valueOf(currentTime));
                    this.e.b(new w(w.b.i18n, w.c.preSkipButton, this.f2805d, map2));
                }
            }
        }
    }

    public void a(boolean z) {
        this.f = z;
    }

    public void b() {
        setVisibility(4);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f2802a && this.i == b.SKIPPABLE) {
            Iterator<a> it = this.f2803b.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    protected void a(Context context) {
        this.j = new com.google.ads.interactivemedia.v3.impl.a.b(context, this.k);
    }

    protected void b(Context context) {
        this.l = new com.google.ads.interactivemedia.v3.impl.a.a(context, this.k);
    }
}
