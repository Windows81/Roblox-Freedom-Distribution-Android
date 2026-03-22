package com.google.ads.interactivemedia.v3.impl;

import android.util.Log;
import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class s extends ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final ContentProgressProvider f2894a;

    public s(ContentProgressProvider contentProgressProvider, long j) {
        super(j);
        this.f2894a = contentProgressProvider;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.ab
    public VideoProgressUpdate a() {
        VideoProgressUpdate contentProgress = this.f2894a.getContentProgress();
        if (contentProgress == null) {
            Log.w("IMASDK", "ContentProgressProvider.getContentProgress() is null. Use VideoProgressUpdate.VIDEO_TIME_NOT_READY instead.");
            return VideoProgressUpdate.VIDEO_TIME_NOT_READY;
        }
        return contentProgress;
    }
}
