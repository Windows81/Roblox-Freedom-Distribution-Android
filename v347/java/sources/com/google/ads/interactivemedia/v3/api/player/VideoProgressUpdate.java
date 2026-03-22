package com.google.ads.interactivemedia.v3.api.player;

import com.google.c.a.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class VideoProgressUpdate {
    public static final VideoProgressUpdate VIDEO_TIME_NOT_READY = new VideoProgressUpdate(-1, -1);
    private float currentTime;
    private float duration;

    public VideoProgressUpdate(long j, long j2) {
        this.currentTime = j / 1000.0f;
        this.duration = j2 / 1000.0f;
    }

    public float getCurrentTime() {
        return this.currentTime;
    }

    public float getDuration() {
        return this.duration;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            VideoProgressUpdate videoProgressUpdate = (VideoProgressUpdate) obj;
            return Float.floatToIntBits(this.currentTime) == Float.floatToIntBits(videoProgressUpdate.currentTime) && Float.floatToIntBits(this.duration) == Float.floatToIntBits(videoProgressUpdate.duration);
        }
        return false;
    }

    public int hashCode() {
        return d.a(Float.valueOf(this.currentTime), Float.valueOf(this.duration));
    }

    public String toString() {
        float f = this.currentTime;
        return new StringBuilder(75).append("VideoProgressUpdate [currentTime=").append(f).append(", duration=").append(this.duration).append("]").toString();
    }
}
