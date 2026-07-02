package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: classes.dex */
public class aa implements af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final VideoAdPlayer f2814a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f f2815b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f2816c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f2817d;
    private final e e;

    public aa(String str, z zVar, x xVar, h hVar, AdDisplayContainer adDisplayContainer, Context context) throws AdError {
        this(str, zVar, xVar, hVar, adDisplayContainer, null, null, context);
    }

    public aa(String str, z zVar, x xVar, h hVar, AdDisplayContainer adDisplayContainer, f fVar, j jVar, Context context) throws AdError {
        this.f2814a = adDisplayContainer.getPlayer();
        if (this.f2814a == null) {
            throw new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad Player was not provided.");
        }
        if (fVar != null) {
            this.f2815b = fVar;
        } else {
            this.f2815b = new f(this.f2814a, zVar.a());
        }
        this.f2816c = hVar;
        if (jVar != null) {
            this.f2817d = jVar;
        } else {
            this.f2817d = new j(str, zVar, xVar, adDisplayContainer, context);
        }
        this.e = new e(xVar, str, this.f2815b);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void a() {
        this.f2815b.a(this.f2817d);
        this.f2815b.a(this.e);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.AdProgressProvider
    public VideoProgressUpdate getAdProgress() {
        return this.f2814a.getAdProgress();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public boolean a(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        switch (cVar) {
            case play:
                this.f2814a.playAd();
                return true;
            case pause:
                this.f2814a.pauseAd();
                return true;
            case resume:
                this.f2814a.resumeAd();
                return true;
            case load:
                if (jVar != null && jVar.videoUrl != null) {
                    this.f2814a.loadAd(jVar.videoUrl);
                } else {
                    this.f2816c.a(new c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Load message must contain video url.")));
                }
                return true;
            case startTracking:
                this.f2815b.b();
                return true;
            case stopTracking:
                this.f2815b.c();
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public boolean b(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        switch (cVar) {
            case showVideo:
                this.f2814a.addCallback(this.e);
                return true;
            case hide:
                this.f2814a.removeCallback(this.e);
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void a(com.google.ads.interactivemedia.v3.impl.data.b bVar) {
        this.f2817d.a(bVar);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void b() {
        this.f2814a.stopAd();
        this.f2817d.a();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void c() {
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void d() {
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener
    public void onAdError(AdErrorEvent adErrorEvent) {
        this.f2817d.a();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void e() {
        Log.d("SDK_DEBUG", "Destroying NativeVideoDisplay");
        this.f2815b.c();
        this.f2815b.b(this.f2817d);
        this.f2815b.b(this.e);
        this.f2817d.a();
        this.f2814a.removeCallback(this.e);
    }
}
