package com.roblox.ima;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.roblox.ima.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class AdPlayer extends RelativeLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f7988a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewGroup f7989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7990c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f7991d;
    private VideoAdPlayer e;
    private ContentProgressProvider f;
    private final List<VideoAdPlayer.VideoAdPlayerCallback> g;

    public interface a {
        void a();
    }

    public AdPlayer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ArrayList(1);
    }

    public AdPlayer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ArrayList(1);
    }

    public AdPlayer(Context context) {
        super(context);
        this.g = new ArrayList(1);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        b();
    }

    private void b() {
        Log.i("AdPlayer", "init:");
        this.f7990c = false;
        this.f7988a = (b) getRootView().findViewById(2131231217);
        this.f7989b = (ViewGroup) getRootView().findViewById(2131230757);
        this.e = new VideoAdPlayer() { // from class: com.roblox.ima.AdPlayer.1
            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void playAd() {
                AdPlayer.this.f7990c = true;
                AdPlayer.this.f7988a.a();
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void loadAd(String str) {
                Log.i("AdPlayer", "loadAd: url = " + str);
                AdPlayer.this.f7990c = true;
                AdPlayer.this.f7988a.setVideoPath(str);
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void stopAd() {
                AdPlayer.this.f7988a.stopPlayback();
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void pauseAd() {
                AdPlayer.this.f7988a.pause();
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void resumeAd() {
                playAd();
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void addCallback(VideoAdPlayer.VideoAdPlayerCallback videoAdPlayerCallback) {
                AdPlayer.this.g.add(videoAdPlayerCallback);
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer
            public void removeCallback(VideoAdPlayer.VideoAdPlayerCallback videoAdPlayerCallback) {
                AdPlayer.this.g.remove(videoAdPlayerCallback);
            }

            @Override // com.google.ads.interactivemedia.v3.api.player.AdProgressProvider
            public VideoProgressUpdate getAdProgress() {
                if (AdPlayer.this.f7990c && AdPlayer.this.f7988a.getDuration() > 0) {
                    return new VideoProgressUpdate(AdPlayer.this.f7988a.getCurrentPosition(), AdPlayer.this.f7988a.getDuration());
                }
                return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
            }
        };
        this.f = new ContentProgressProvider() { // from class: com.roblox.ima.AdPlayer.2
            @Override // com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider
            public VideoProgressUpdate getContentProgress() {
                if (!AdPlayer.this.f7990c && AdPlayer.this.f7988a.getDuration() > 0) {
                    return new VideoProgressUpdate(AdPlayer.this.f7988a.getCurrentPosition(), AdPlayer.this.f7988a.getDuration());
                }
                return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
            }
        };
        this.f7988a.a(new b.a() { // from class: com.roblox.ima.AdPlayer.3
            @Override // com.roblox.ima.b.a
            public void a() {
                if (AdPlayer.this.f7990c) {
                    Iterator it = AdPlayer.this.g.iterator();
                    while (it.hasNext()) {
                        ((VideoAdPlayer.VideoAdPlayerCallback) it.next()).onPlay();
                    }
                }
            }

            @Override // com.roblox.ima.b.a
            public void b() {
                if (AdPlayer.this.f7990c) {
                    Iterator it = AdPlayer.this.g.iterator();
                    while (it.hasNext()) {
                        ((VideoAdPlayer.VideoAdPlayerCallback) it.next()).onPause();
                    }
                }
            }

            @Override // com.roblox.ima.b.a
            public void c() {
                if (AdPlayer.this.f7990c) {
                    Iterator it = AdPlayer.this.g.iterator();
                    while (it.hasNext()) {
                        ((VideoAdPlayer.VideoAdPlayerCallback) it.next()).onResume();
                    }
                }
            }

            @Override // com.roblox.ima.b.a
            public void d() {
                if (AdPlayer.this.f7990c) {
                    Iterator it = AdPlayer.this.g.iterator();
                    while (it.hasNext()) {
                        ((VideoAdPlayer.VideoAdPlayerCallback) it.next()).onError();
                    }
                }
            }

            @Override // com.roblox.ima.b.a
            public void e() {
                if (AdPlayer.this.f7990c) {
                    Iterator it = AdPlayer.this.g.iterator();
                    while (it.hasNext()) {
                        ((VideoAdPlayer.VideoAdPlayerCallback) it.next()).onEnded();
                    }
                } else if (AdPlayer.this.f7991d != null) {
                    AdPlayer.this.f7991d.a();
                }
            }
        });
    }

    public void a() {
        this.f7988a.b();
        this.f7988a.stopPlayback();
    }

    public ViewGroup getAdUiContainer() {
        return this.f7989b;
    }

    public VideoAdPlayer getVideoAdPlayer() {
        return this.e;
    }

    public ContentProgressProvider getContentProgressProvider() {
        return this.f;
    }
}
