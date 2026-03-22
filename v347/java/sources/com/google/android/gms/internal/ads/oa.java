package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
@cm
@TargetApi(14)
public final class oa extends om implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnVideoSizeChangedListener, TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<Integer, String> f5366c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final pd f5367d;
    private final boolean e;
    private int f;
    private int g;
    private MediaPlayer h;
    private Uri i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private pa o;
    private boolean p;
    private int q;
    private ol r;

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f5366c.put(-1004, "MEDIA_ERROR_IO");
            f5366c.put(-1007, "MEDIA_ERROR_MALFORMED");
            f5366c.put(-1010, "MEDIA_ERROR_UNSUPPORTED");
            f5366c.put(-110, "MEDIA_ERROR_TIMED_OUT");
            f5366c.put(3, "MEDIA_INFO_VIDEO_RENDERING_START");
        }
        f5366c.put(100, "MEDIA_ERROR_SERVER_DIED");
        f5366c.put(1, "MEDIA_ERROR_UNKNOWN");
        f5366c.put(1, "MEDIA_INFO_UNKNOWN");
        f5366c.put(700, "MEDIA_INFO_VIDEO_TRACK_LAGGING");
        f5366c.put(701, "MEDIA_INFO_BUFFERING_START");
        f5366c.put(702, "MEDIA_INFO_BUFFERING_END");
        f5366c.put(800, "MEDIA_INFO_BAD_INTERLEAVING");
        f5366c.put(801, "MEDIA_INFO_NOT_SEEKABLE");
        f5366c.put(802, "MEDIA_INFO_METADATA_UPDATE");
        if (Build.VERSION.SDK_INT >= 19) {
            f5366c.put(901, "MEDIA_INFO_UNSUPPORTED_SUBTITLE");
            f5366c.put(902, "MEDIA_INFO_SUBTITLE_TIMED_OUT");
        }
    }

    public oa(Context context, boolean z, boolean z2, pb pbVar, pd pdVar) {
        super(context);
        this.f = 0;
        this.g = 0;
        setSurfaceTextureListener(this);
        this.f5367d = pdVar;
        this.p = z;
        this.e = z2;
        this.f5367d.a(this);
    }

    private final void a(float f) {
        if (this.h == null) {
            jd.e("AdMediaPlayerView setMediaPlayerVolume() called before onPrepared().");
        } else {
            try {
                this.h.setVolume(f, f);
            } catch (IllegalStateException e) {
            }
        }
    }

    private final void a(boolean z) {
        jd.a("AdMediaPlayerView release");
        if (this.o != null) {
            this.o.b();
            this.o = null;
        }
        if (this.h != null) {
            this.h.reset();
            this.h.release();
            this.h = null;
            c(0);
            if (z) {
                this.g = 0;
                this.g = 0;
            }
        }
    }

    private final void c(int i) {
        if (i == 3) {
            this.f5367d.c();
            this.f5383b.b();
        } else if (this.f == 3) {
            this.f5367d.d();
            this.f5383b.c();
        }
        this.f = i;
    }

    private final void f() {
        SurfaceTexture surfaceTextureC;
        jd.a("AdMediaPlayerView init MediaPlayer");
        SurfaceTexture surfaceTexture = getSurfaceTexture();
        if (this.i == null || surfaceTexture == null) {
            return;
        }
        a(false);
        try {
            com.google.android.gms.ads.internal.aw.v();
            this.h = new MediaPlayer();
            this.h.setOnBufferingUpdateListener(this);
            this.h.setOnCompletionListener(this);
            this.h.setOnErrorListener(this);
            this.h.setOnInfoListener(this);
            this.h.setOnPreparedListener(this);
            this.h.setOnVideoSizeChangedListener(this);
            this.l = 0;
            if (this.p) {
                this.o = new pa(getContext());
                this.o.a(surfaceTexture, getWidth(), getHeight());
                this.o.start();
                surfaceTextureC = this.o.c();
                if (surfaceTextureC == null) {
                    this.o.b();
                    this.o = null;
                    surfaceTextureC = surfaceTexture;
                }
            } else {
                surfaceTextureC = surfaceTexture;
            }
            this.h.setDataSource(getContext(), this.i);
            com.google.android.gms.ads.internal.aw.w();
            this.h.setSurface(new Surface(surfaceTextureC));
            this.h.setAudioStreamType(3);
            this.h.setScreenOnWhilePlaying(true);
            this.h.prepareAsync();
            c(1);
        } catch (IOException | IllegalArgumentException | IllegalStateException e) {
            String strValueOf = String.valueOf(this.i);
            jd.c(new StringBuilder(String.valueOf(strValueOf).length() + 36).append("Failed to initialize MediaPlayer at ").append(strValueOf).toString(), e);
            onError(this.h, 1, 0);
        }
    }

    private final void g() {
        if (this.e && h() && this.h.getCurrentPosition() > 0 && this.g != 3) {
            jd.a("AdMediaPlayerView nudging MediaPlayer");
            a(0.0f);
            this.h.start();
            int currentPosition = this.h.getCurrentPosition();
            long jA = com.google.android.gms.ads.internal.aw.l().a();
            while (h() && this.h.getCurrentPosition() == currentPosition && com.google.android.gms.ads.internal.aw.l().a() - jA <= 250) {
            }
            this.h.pause();
            e();
        }
    }

    private final boolean h() {
        return (this.h == null || this.f == -1 || this.f == 0 || this.f == 1) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final String a() {
        String strValueOf = String.valueOf(this.p ? " spherical" : "");
        return strValueOf.length() != 0 ? "MediaPlayer".concat(strValueOf) : new String("MediaPlayer");
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void a(float f, float f2) {
        if (this.o != null) {
            this.o.a(f, f2);
        }
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void a(int i) {
        jd.a(new StringBuilder(34).append("AdMediaPlayerView seek ").append(i).toString());
        if (!h()) {
            this.q = i;
        } else {
            this.h.seekTo(i);
            this.q = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void a(ol olVar) {
        this.r = olVar;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void b() {
        jd.a("AdMediaPlayerView stop");
        if (this.h != null) {
            this.h.stop();
            this.h.release();
            this.h = null;
            c(0);
            this.g = 0;
        }
        this.f5367d.b();
    }

    final /* synthetic */ void b(int i) {
        if (this.r != null) {
            this.r.onWindowVisibilityChanged(i);
        }
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void c() {
        jd.a("AdMediaPlayerView play");
        if (h()) {
            this.h.start();
            c(3);
            this.f5382a.a();
            jm.f5184a.post(new oj(this));
        }
        this.g = 3;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void d() {
        jd.a("AdMediaPlayerView pause");
        if (h() && this.h.isPlaying()) {
            this.h.pause();
            c(4);
            jm.f5184a.post(new ok(this));
        }
        this.g = 4;
    }

    @Override // com.google.android.gms.internal.ads.om, com.google.android.gms.internal.ads.ph
    public final void e() {
        a(this.f5383b.a());
    }

    @Override // com.google.android.gms.internal.ads.om
    public final int getCurrentPosition() {
        if (h()) {
            return this.h.getCurrentPosition();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final int getDuration() {
        if (h()) {
            return this.h.getDuration();
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final int getVideoHeight() {
        if (this.h != null) {
            return this.h.getVideoHeight();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.om
    public final int getVideoWidth() {
        if (this.h != null) {
            return this.h.getVideoWidth();
        }
        return 0;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
        this.l = i;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        jd.a("AdMediaPlayerView completion");
        c(5);
        this.g = 5;
        jm.f5184a.post(new od(this));
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f5366c.get(Integer.valueOf(i));
        String str2 = f5366c.get(Integer.valueOf(i2));
        jd.e(new StringBuilder(String.valueOf(str).length() + 38 + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer error: ").append(str).append(":").append(str2).toString());
        c(-1);
        this.g = -1;
        jm.f5184a.post(new oe(this, str, str2));
        return true;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
        String str = f5366c.get(Integer.valueOf(i));
        String str2 = f5366c.get(Integer.valueOf(i2));
        jd.a(new StringBuilder(String.valueOf(str).length() + 37 + String.valueOf(str2).length()).append("AdMediaPlayerView MediaPlayer info: ").append(str).append(":").append(str2).toString());
        return true;
    }

    @Override // android.view.View
    protected final void onMeasure(int i, int i2) {
        int defaultSize = getDefaultSize(this.j, i);
        int defaultSize2 = getDefaultSize(this.k, i2);
        if (this.j > 0 && this.k > 0 && this.o == null) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            defaultSize2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                if (this.j * defaultSize2 < this.k * size) {
                    defaultSize = (this.j * defaultSize2) / this.k;
                } else if (this.j * defaultSize2 > this.k * size) {
                    defaultSize2 = (this.k * size) / this.j;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode == 1073741824) {
                int i3 = (this.k * size) / this.j;
                if (mode2 != Integer.MIN_VALUE || i3 <= defaultSize2) {
                    defaultSize2 = i3;
                    defaultSize = size;
                } else {
                    defaultSize = size;
                }
            } else if (mode2 == 1073741824) {
                defaultSize = (this.j * defaultSize2) / this.k;
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize = size;
                }
            } else {
                int i4 = this.j;
                int i5 = this.k;
                if (mode2 != Integer.MIN_VALUE || i5 <= defaultSize2) {
                    defaultSize2 = i5;
                    defaultSize = i4;
                } else {
                    defaultSize = (this.j * defaultSize2) / this.k;
                }
                if (mode == Integer.MIN_VALUE && defaultSize > size) {
                    defaultSize2 = (this.k * size) / this.j;
                    defaultSize = size;
                }
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
        if (this.o != null) {
            this.o.a(defaultSize, defaultSize2);
        }
        if (Build.VERSION.SDK_INT == 16) {
            if ((this.m > 0 && this.m != defaultSize) || (this.n > 0 && this.n != defaultSize2)) {
                g();
            }
            this.m = defaultSize;
            this.n = defaultSize2;
        }
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        jd.a("AdMediaPlayerView prepared");
        c(2);
        this.f5367d.a();
        jm.f5184a.post(new oc(this));
        this.j = mediaPlayer.getVideoWidth();
        this.k = mediaPlayer.getVideoHeight();
        if (this.q != 0) {
            a(this.q);
        }
        g();
        int i = this.j;
        jd.d(new StringBuilder(62).append("AdMediaPlayerView stream dimensions: ").append(i).append(" x ").append(this.k).toString());
        if (this.g == 3) {
            c();
        }
        e();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        jd.a("AdMediaPlayerView surface created");
        f();
        jm.f5184a.post(new og(this));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        jd.a("AdMediaPlayerView surface destroyed");
        if (this.h != null && this.q == 0) {
            this.q = this.h.getCurrentPosition();
        }
        if (this.o != null) {
            this.o.b();
        }
        jm.f5184a.post(new oi(this));
        a(true);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        jd.a("AdMediaPlayerView surface changed");
        boolean z = this.g == 3;
        boolean z2 = this.j == i && this.k == i2;
        if (this.h != null && z && z2) {
            if (this.q != 0) {
                a(this.q);
            }
            c();
        }
        if (this.o != null) {
            this.o.a(i, i2);
        }
        jm.f5184a.post(new oh(this, i, i2));
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.f5367d.b(this);
        this.f5382a.a(surfaceTexture, this.r);
    }

    @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
    public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
        jd.a(new StringBuilder(57).append("AdMediaPlayerView size changed: ").append(i).append(" x ").append(i2).toString());
        this.j = mediaPlayer.getVideoWidth();
        this.k = mediaPlayer.getVideoHeight();
        if (this.j == 0 || this.k == 0) {
            return;
        }
        requestLayout();
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(final int i) {
        jd.a(new StringBuilder(58).append("AdMediaPlayerView window visibility changed to ").append(i).toString());
        jm.f5184a.post(new Runnable(this, i) { // from class: com.google.android.gms.internal.ads.ob

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final oa f5368a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final int f5369b;

            {
                this.f5368a = this;
                this.f5369b = i;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f5368a.b(this.f5369b);
            }
        });
        super.onWindowVisibilityChanged(i);
    }

    @Override // com.google.android.gms.internal.ads.om
    public final void setVideoPath(String str) {
        Uri uri = Uri.parse(str);
        zzhl zzhlVarA = zzhl.a(uri);
        if (zzhlVarA != null) {
            uri = Uri.parse(zzhlVarA.f5795a);
        }
        this.i = uri;
        this.q = 0;
        f();
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public final String toString() {
        String name = getClass().getName();
        String hexString = Integer.toHexString(hashCode());
        return new StringBuilder(String.valueOf(name).length() + 1 + String.valueOf(hexString).length()).append(name).append("@").append(hexString).toString();
    }
}
