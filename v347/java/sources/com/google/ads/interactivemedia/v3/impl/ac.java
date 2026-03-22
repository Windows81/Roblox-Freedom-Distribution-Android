package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoStreamPlayer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ac extends o implements StreamDisplayContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VideoStreamPlayer f2824a;

    @Override // com.google.ads.interactivemedia.v3.api.StreamDisplayContainer
    public VideoStreamPlayer getVideoStreamPlayer() {
        return this.f2824a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.StreamDisplayContainer
    public void setVideoStreamPlayer(VideoStreamPlayer videoStreamPlayer) {
        this.f2824a = videoStreamPlayer;
    }
}
