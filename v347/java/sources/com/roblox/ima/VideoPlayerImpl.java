package com.roblox.ima;

import android.content.Context;
import android.media.MediaPlayer;
import android.util.AttributeSet;
import android.widget.MediaController;
import android.widget.VideoView;
import com.roblox.ima.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class VideoPlayerImpl extends VideoView implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private MediaController f7995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f7996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<b.a> f7997c;

    private enum a {
        STOPPED,
        PAUSED,
        PLAYING
    }

    public VideoPlayerImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7997c = new ArrayList(1);
        d();
    }

    public VideoPlayerImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7997c = new ArrayList(1);
        d();
    }

    public VideoPlayerImpl(Context context) {
        super(context);
        this.f7997c = new ArrayList(1);
        d();
    }

    private void d() {
        this.f7996b = a.STOPPED;
        this.f7995a = new MediaController(getContext());
        this.f7995a.setAnchorView(this);
        c();
        super.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.roblox.ima.VideoPlayerImpl.1
            @Override // android.media.MediaPlayer.OnCompletionListener
            public void onCompletion(MediaPlayer mediaPlayer) {
                VideoPlayerImpl.this.b();
                mediaPlayer.reset();
                mediaPlayer.setDisplay(VideoPlayerImpl.this.getHolder());
                VideoPlayerImpl.this.c();
                VideoPlayerImpl.this.f7996b = a.STOPPED;
                Iterator it = VideoPlayerImpl.this.f7997c.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).e();
                }
            }
        });
        super.setOnErrorListener(new MediaPlayer.OnErrorListener() { // from class: com.roblox.ima.VideoPlayerImpl.2
            @Override // android.media.MediaPlayer.OnErrorListener
            public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
                VideoPlayerImpl.this.f7996b = a.STOPPED;
                Iterator it = VideoPlayerImpl.this.f7997c.iterator();
                while (it.hasNext()) {
                    ((b.a) it.next()).d();
                }
                return true;
            }
        });
    }

    @Override // android.widget.VideoView
    public void setOnCompletionListener(MediaPlayer.OnCompletionListener onCompletionListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.widget.VideoView
    public void setOnErrorListener(MediaPlayer.OnErrorListener onErrorListener) {
        throw new UnsupportedOperationException();
    }

    @Override // com.roblox.ima.b
    public void a() {
        start();
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public void start() {
        super.start();
        a aVar = this.f7996b;
        this.f7996b = a.PLAYING;
        switch (aVar) {
            case STOPPED:
                Iterator<b.a> it = this.f7997c.iterator();
                while (it.hasNext()) {
                    it.next().a();
                }
                break;
            case PAUSED:
                Iterator<b.a> it2 = this.f7997c.iterator();
                while (it2.hasNext()) {
                    it2.next().c();
                }
                break;
        }
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl, com.roblox.ima.b
    public void pause() {
        super.pause();
        this.f7996b = a.PAUSED;
        Iterator<b.a> it = this.f7997c.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    @Override // android.widget.VideoView, com.roblox.ima.b
    public void stopPlayback() {
        super.stopPlayback();
        this.f7996b = a.STOPPED;
    }

    @Override // com.roblox.ima.b
    public void b() {
        setMediaController(null);
    }

    public void c() {
        setMediaController(this.f7995a);
    }

    @Override // com.roblox.ima.b
    public void a(b.a aVar) {
        this.f7997c.add(aVar);
    }
}
