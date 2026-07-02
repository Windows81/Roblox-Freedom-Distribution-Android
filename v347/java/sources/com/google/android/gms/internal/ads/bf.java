package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Looper;
import android.os.SystemClock;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
final class bf implements lc<ass> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ boolean f4840a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final /* synthetic */ double f4841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final /* synthetic */ boolean f4842c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ String f4843d;
    private final /* synthetic */ ay e;

    bf(ay ayVar, boolean z, double d2, boolean z2, String str) {
        this.e = ayVar;
        this.f4840a = z;
        this.f4841b = d2;
        this.f4842c = z2;
        this.f4843d = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.ads.lc
    @TargetApi(19)
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ass a(InputStream inputStream) {
        Bitmap bitmapDecodeStream;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (160.0d * this.f4841b);
        if (!this.f4842c) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        long jUptimeMillis = SystemClock.uptimeMillis();
        try {
            bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
        } catch (Exception e) {
            jd.b("Error grabbing image.", e);
            bitmapDecodeStream = null;
        }
        if (bitmapDecodeStream == null) {
            this.e.a(2, this.f4840a);
            return null;
        }
        long jUptimeMillis2 = SystemClock.uptimeMillis();
        if (com.google.android.gms.common.util.n.g() && jd.a()) {
            int width = bitmapDecodeStream.getWidth();
            jd.a(new StringBuilder(108).append("Decoded image w: ").append(width).append(" h:").append(bitmapDecodeStream.getHeight()).append(" bytes: ").append(bitmapDecodeStream.getAllocationByteCount()).append(" time: ").append(jUptimeMillis2 - jUptimeMillis).append(" on ui thread: ").append(Looper.getMainLooper().getThread() == Thread.currentThread()).toString());
        }
        return new ass(new BitmapDrawable(Resources.getSystem(), bitmapDecodeStream), Uri.parse(this.f4843d), this.f4841b);
    }

    @Override // com.google.android.gms.internal.ads.lc
    public final /* synthetic */ ass a() {
        this.e.a(2, this.f4840a);
        return null;
    }
}
