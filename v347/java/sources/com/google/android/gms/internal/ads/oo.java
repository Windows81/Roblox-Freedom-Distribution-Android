package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: loaded from: classes.dex */
@cm
@ParametersAreNonnullByDefault
public final class oo extends FrameLayout implements ol {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final pc f5384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FrameLayout f5385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final asb f5386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final pe f5387d;
    private final long e;
    private om f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private long l;
    private String m;
    private Bitmap n;
    private ImageView o;
    private boolean p;

    public oo(Context context, pc pcVar, int i, boolean z, asb asbVar, pb pbVar) {
        super(context);
        this.f5384a = pcVar;
        this.f5386c = asbVar;
        this.f5385b = new FrameLayout(context);
        addView(this.f5385b, new FrameLayout.LayoutParams(-1, -1));
        com.google.android.gms.common.internal.b.a(pcVar.e());
        this.f = pcVar.e().f3070b.a(context, pcVar, i, z, asbVar, pbVar);
        if (this.f != null) {
            this.f5385b.addView(this.f, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) aoo.f().a(aro.w)).booleanValue()) {
                m();
            }
        }
        this.o = new ImageView(context);
        this.e = ((Long) aoo.f().a(aro.A)).longValue();
        this.j = ((Boolean) aoo.f().a(aro.y)).booleanValue();
        if (this.f5386c != null) {
            this.f5386c.a("spinner_used", this.j ? "1" : "0");
        }
        this.f5387d = new pe(this);
        if (this.f != null) {
            this.f.a(this);
        }
        if (this.f == null) {
            a("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public static void a(pc pcVar) {
        HashMap map = new HashMap();
        map.put("event", "no_video_view");
        pcVar.a("onVideoEvent", map);
    }

    public static void a(pc pcVar, String str) {
        HashMap map = new HashMap();
        map.put("event", "decoderProps");
        map.put("error", str);
        pcVar.a("onVideoEvent", map);
    }

    public static void a(pc pcVar, Map<String, List<Map<String, Object>>> map) {
        HashMap map2 = new HashMap();
        map2.put("event", "decoderProps");
        map2.put("mimeTypes", map);
        pcVar.a("onVideoEvent", map2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, String... strArr) {
        HashMap map = new HashMap();
        map.put("event", str);
        int length = strArr.length;
        int i = 0;
        String str2 = null;
        while (i < length) {
            String str3 = strArr[i];
            if (str2 != null) {
                map.put(str2, str3);
                str3 = null;
            }
            i++;
            str2 = str3;
        }
        this.f5384a.a("onVideoEvent", map);
    }

    private final boolean p() {
        return this.o.getParent() != null;
    }

    private final void q() {
        if (this.f5384a.d() == null || !this.h || this.i) {
            return;
        }
        this.f5384a.d().getWindow().clearFlags(128);
        this.h = false;
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a() {
        this.f5387d.b();
        jm.f5184a.post(new oq(this));
    }

    public final void a(float f, float f2) {
        if (this.f != null) {
            this.f.a(f, f2);
        }
    }

    public final void a(int i) {
        if (this.f == null) {
            return;
        }
        this.f.a(i);
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(int i, int i2) {
        if (this.j) {
            int iMax = Math.max(i / ((Integer) aoo.f().a(aro.z)).intValue(), 1);
            int iMax2 = Math.max(i2 / ((Integer) aoo.f().a(aro.z)).intValue(), 1);
            if (this.n != null && this.n.getWidth() == iMax && this.n.getHeight() == iMax2) {
                return;
            }
            this.n = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.p = false;
        }
    }

    public final void a(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.f5385b.setLayoutParams(layoutParams);
        requestLayout();
    }

    @TargetApi(14)
    public final void a(MotionEvent motionEvent) {
        if (this.f == null) {
            return;
        }
        this.f.dispatchTouchEvent(motionEvent);
    }

    public final void a(String str) {
        this.m = str;
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(String str, String str2) {
        a("error", "what", str, "extra", str2);
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void b() {
        if (this.f != null && this.l == 0) {
            a("canplaythrough", "duration", String.valueOf(this.f.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.f.getVideoWidth()), "videoHeight", String.valueOf(this.f.getVideoHeight()));
        }
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void c() {
        if (this.f5384a.d() != null && !this.h) {
            this.i = (this.f5384a.d().getWindow().getAttributes().flags & 128) != 0;
            if (!this.i) {
                this.f5384a.d().getWindow().addFlags(128);
                this.h = true;
            }
        }
        this.g = true;
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void d() {
        a("pause", new String[0]);
        q();
        this.g = false;
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void e() {
        a("ended", new String[0]);
        q();
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void f() {
        if (this.p && this.n != null && !p()) {
            this.o.setImageBitmap(this.n);
            this.o.invalidate();
            this.f5385b.addView(this.o, new FrameLayout.LayoutParams(-1, -1));
            this.f5385b.bringChildToFront(this.o);
        }
        this.f5387d.a();
        this.l = this.k;
        jm.f5184a.post(new or(this));
    }

    public final void finalize() throws Throwable {
        try {
            this.f5387d.a();
            if (this.f != null) {
                om omVar = this.f;
                Executor executor = nj.f5346a;
                omVar.getClass();
                executor.execute(op.a(omVar));
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void g() {
        if (this.g && p()) {
            this.f5385b.removeView(this.o);
        }
        if (this.n != null) {
            long jB = com.google.android.gms.ads.internal.aw.l().b();
            if (this.f.getBitmap(this.n) != null) {
                this.p = true;
            }
            long jB2 = com.google.android.gms.ads.internal.aw.l().b() - jB;
            if (jd.a()) {
                jd.a(new StringBuilder(46).append("Spinner frame grab took ").append(jB2).append("ms").toString());
            }
            if (jB2 > this.e) {
                jd.e("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.j = false;
                this.n = null;
                if (this.f5386c != null) {
                    this.f5386c.a("spinner_jank", Long.toString(jB2));
                }
            }
        }
    }

    public final void h() {
        if (this.f == null) {
            return;
        }
        if (TextUtils.isEmpty(this.m)) {
            a("no_src", new String[0]);
        } else {
            this.f.setVideoPath(this.m);
        }
    }

    public final void i() {
        if (this.f == null) {
            return;
        }
        this.f.d();
    }

    public final void j() {
        if (this.f == null) {
            return;
        }
        this.f.c();
    }

    public final void k() {
        if (this.f == null) {
            return;
        }
        om omVar = this.f;
        omVar.f5383b.a(true);
        omVar.e();
    }

    public final void l() {
        if (this.f == null) {
            return;
        }
        om omVar = this.f;
        omVar.f5383b.a(false);
        omVar.e();
    }

    @TargetApi(14)
    public final void m() {
        if (this.f == null) {
            return;
        }
        TextView textView = new TextView(this.f.getContext());
        String strValueOf = String.valueOf(this.f.a());
        textView.setText(strValueOf.length() != 0 ? "AdMob - ".concat(strValueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f5385b.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f5385b.bringChildToFront(textView);
    }

    public final void n() {
        this.f5387d.a();
        if (this.f != null) {
            this.f.b();
        }
        q();
    }

    final void o() {
        if (this.f == null) {
            return;
        }
        long currentPosition = this.f.getCurrentPosition();
        if (this.k == currentPosition || currentPosition <= 0) {
            return;
        }
        a("timeupdate", "time", String.valueOf(currentPosition / 1000.0f));
        this.k = currentPosition;
    }

    @Override // android.view.View, com.google.android.gms.internal.ads.ol
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        if (i == 0) {
            this.f5387d.b();
            z = true;
        } else {
            this.f5387d.a();
            this.l = this.k;
            z = false;
        }
        jm.f5184a.post(new os(this, z));
    }

    public final void setVolume(float f) {
        if (this.f == null) {
            return;
        }
        om omVar = this.f;
        omVar.f5383b.a(f);
        omVar.e();
    }
}
