package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.a.e;
import com.google.ads.interactivemedia.v3.impl.ab;
import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: classes.dex */
public class j implements ab.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f2866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BaseDisplayContainer f2867c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.ads.interactivemedia.v3.impl.a.e f2868d;
    private com.google.ads.interactivemedia.v3.impl.a.f e;
    private Context f;
    private com.google.ads.interactivemedia.v3.impl.data.b g;
    private a h;
    private z i;

    public j(String str, z zVar, x xVar, BaseDisplayContainer baseDisplayContainer, Context context) throws AdError {
        if (zVar.b() != w.a.nativeUi && zVar.b() != w.a.webViewUi) {
            AdError.AdErrorType adErrorType = AdError.AdErrorType.PLAY;
            AdError.AdErrorCode adErrorCode = AdError.AdErrorCode.INTERNAL_ERROR;
            String strValueOf = String.valueOf(zVar.b());
            throw new AdError(adErrorType, adErrorCode, new StringBuilder(String.valueOf(strValueOf).length() + 50).append("AdsManagerUi is used for an unsupported UI style: ").append(strValueOf).toString());
        }
        this.i = zVar;
        this.f2866b = xVar;
        this.f = context;
        this.f2865a = str;
        this.f2867c = baseDisplayContainer;
        this.h = new a();
    }

    public void a(com.google.ads.interactivemedia.v3.impl.data.b bVar) {
        if (this.g != null) {
            a();
        }
        if (bVar.isLinear()) {
            this.g = bVar;
            a((Ad) bVar);
        }
    }

    public void a() {
        if (this.f2868d != null) {
            this.f2868d.b();
            this.f2867c.getAdContainer().removeView(this.f2868d.a());
            this.f2868d = null;
            this.f2866b.a(this.f2865a);
        } else if (this.e != null) {
            this.e.b();
            this.e = null;
        }
        this.g = null;
    }

    private void a(Ad ad) {
        if (this.i.b() == w.a.nativeUi) {
            this.f2868d = new com.google.ads.interactivemedia.v3.impl.a.e(this.f, com.google.ads.interactivemedia.v3.impl.a.d.a(ad), this.f2866b, this.f2865a);
            this.f2866b.a(this.f2868d, this.f2865a);
            this.f2868d.a(this.h);
            this.f2867c.getAdContainer().addView(this.f2868d.a());
            this.f2868d.a(ad);
            return;
        }
        this.e = new com.google.ads.interactivemedia.v3.impl.a.f(this.f2866b, this.f2867c.getAdContainer());
        this.e.a();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab.b
    public void a(VideoProgressUpdate videoProgressUpdate) {
        if (this.f2868d != null) {
            this.f2868d.a(videoProgressUpdate);
        }
    }

    private class a implements e.a {
        private a() {
        }

        @Override // com.google.ads.interactivemedia.v3.impl.a.e.a
        public void a() {
            j.this.f2866b.b(new w(w.b.videoDisplay, w.c.skip, j.this.f2865a));
        }

        @Override // com.google.ads.interactivemedia.v3.impl.a.e.a
        public void b() {
            j.this.f2866b.b(new w(w.b.videoDisplay, w.c.skipShown, j.this.f2865a));
        }

        @Override // com.google.ads.interactivemedia.v3.impl.a.a.InterfaceC0059a
        public void c() {
            j.this.f2866b.b(new w(w.b.videoDisplay, w.c.click, j.this.f2865a));
        }
    }
}
