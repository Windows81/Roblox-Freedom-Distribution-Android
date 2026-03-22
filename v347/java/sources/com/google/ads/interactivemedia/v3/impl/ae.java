package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.api.player.VideoStreamPlayer;
import com.google.ads.interactivemedia.v3.impl.ab;
import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ae implements VideoStreamPlayer.VideoStreamPlayerCallback, ab.b, af {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VideoStreamPlayer f2829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private x f2830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private h f2831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s f2832d;
    private j e;
    private String f;

    static abstract class a {
        abstract String TXXX();

        a() {
        }

        public static a create(String str) {
            return new n(str);
        }
    }

    public ae(String str, z zVar, x xVar, h hVar, StreamDisplayContainer streamDisplayContainer, Context context) throws AdError {
        this(str, zVar, xVar, hVar, streamDisplayContainer, null, null, context);
    }

    public ae(String str, z zVar, x xVar, h hVar, StreamDisplayContainer streamDisplayContainer, s sVar, j jVar, Context context) throws AdError {
        this.f2829a = streamDisplayContainer.getVideoStreamPlayer();
        if (this.f2829a == null) {
            throw new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Server-side ad insertion player was not provided.");
        }
        this.f2831c = hVar;
        this.f = str;
        this.f2830b = xVar;
        this.f2832d = sVar;
        if (this.f2832d == null) {
            this.f2832d = new s(this.f2829a, zVar.a());
        }
        this.e = jVar;
        if (this.e == null) {
            try {
                this.e = new j(str, zVar, xVar, streamDisplayContainer, context);
            } catch (AdError e) {
                Log.e("IMASDK", "Error creating ad UI: ", e);
            }
        }
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void a() {
        this.f2832d.a(this.e);
        this.f2832d.a(this);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.AdProgressProvider
    public VideoProgressUpdate getAdProgress() {
        return this.f2829a.getContentProgress();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public boolean a(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        switch (cVar) {
            case loadStream:
                if (jVar != null && jVar.streamUrl != null) {
                    this.f2832d.b();
                    this.f2829a.loadUrl(jVar.streamUrl);
                } else {
                    this.f2831c.a(new c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Load message must contain video url.")));
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public boolean b(w.c cVar, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        return false;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void a(com.google.ads.interactivemedia.v3.impl.data.b bVar) {
        this.e.a(bVar);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void b() {
        this.e.a();
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener
    public void onAdError(AdErrorEvent adErrorEvent) {
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void e() {
        Log.d("SDK_DEBUG", "Destroying StreamVideoDisplay");
        g();
        this.f2829a = null;
        this.f2830b = null;
        if (this.f2832d != null) {
            this.f2832d.b(this.e);
            this.f2832d.b(this);
        }
        this.f2832d = null;
        this.e = null;
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoStreamPlayer.VideoStreamPlayerCallback
    public void onUserTextReceived(String str) {
        a(w.c.timedMetadata, a.create(str));
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab.b
    public void a(VideoProgressUpdate videoProgressUpdate) {
        a(w.c.timeupdate, videoProgressUpdate);
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void c() {
        this.f2829a.onAdBreakStarted();
    }

    @Override // com.google.ads.interactivemedia.v3.impl.af
    public void d() {
        this.f2829a.onAdBreakEnded();
    }

    public void f() {
        this.f2829a.addCallback(this);
    }

    public void g() {
        this.f2829a.removeCallback(this);
    }

    private void a(w.c cVar, Object obj) {
        this.f2830b.b(new w(w.b.videoDisplay, cVar, this.f, obj));
    }
}
