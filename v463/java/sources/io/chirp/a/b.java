package io.chirp.a;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.AudioTrack;
import android.os.Build;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7926a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f7927b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7928c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f7929d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f7930e;
    private int f;
    private int g;

    public b a() {
        int[] iArr = {48000, 44100, 22050, 16000, 11025, 8000};
        for (int i = 0; i < 6; i++) {
            int i2 = iArr[i];
            if (AudioRecord.getMinBufferSize(i2, 1, 2) > 0) {
                this.f7926a = i2;
                return this;
            }
        }
        return this;
    }

    public int b() {
        return this.f7926a;
    }

    public int c() {
        return this.g;
    }

    public b d() {
        a();
        this.f7927b = 2;
        this.f7928c = 1;
        this.f7929d = 3;
        this.f7930e = 2;
        this.f = 4;
        this.g = AudioTrack.getMinBufferSize(this.f7926a, 4, 2);
        return this;
    }

    public AudioTrack e() {
        return Build.VERSION.SDK_INT >= 21 ? new AudioTrack(new AudioAttributes.Builder().setContentType(this.f7927b).setUsage(this.f7928c).setLegacyStreamType(this.f7929d).build(), new AudioFormat.Builder().setSampleRate(this.f7926a).setEncoding(this.f7930e).setChannelMask(this.f).build(), this.g, 1, 0) : new AudioTrack(3, this.f7926a, this.f, this.f7930e, this.g, 1);
    }
}
