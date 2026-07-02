package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.ab;
import com.google.ads.interactivemedia.v3.impl.w;

/* JADX INFO: loaded from: classes.dex */
public class e implements VideoAdPlayer.VideoAdPlayerCallback, ab.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private x f2840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f2841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2842c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2843d = false;
    private f e;

    public e(x xVar, String str, f fVar) {
        this.f2840a = xVar;
        this.f2841b = str;
        this.e = fVar;
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onPlay() {
        this.f2843d = false;
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onPause() {
        this.e.c();
        a(w.c.pause);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onResume() {
        this.e.b();
        a(w.c.play);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onEnded() {
        a(w.c.end);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onError() {
        a(w.c.error);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer.VideoAdPlayerCallback
    public void onVolumeChanged(int i) {
        if (i == 0 && !this.f2842c) {
            a(w.c.mute);
            this.f2842c = true;
        }
        if (i != 0 && this.f2842c) {
            a(w.c.unmute);
            this.f2842c = false;
        }
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab.b
    public void a(VideoProgressUpdate videoProgressUpdate) {
        if (videoProgressUpdate != null && videoProgressUpdate.getDuration() > 0.0f) {
            if (!this.f2843d && videoProgressUpdate.getCurrentTime() > 0.0f) {
                a(w.c.start);
                this.f2843d = true;
            }
            a(w.c.timeupdate, videoProgressUpdate);
        }
    }

    void a(w.c cVar) {
        a(cVar, null);
    }

    void a(w.c cVar, VideoProgressUpdate videoProgressUpdate) {
        this.f2840a.b(new w(w.b.videoDisplay, cVar, this.f2841b, videoProgressUpdate));
    }
}
