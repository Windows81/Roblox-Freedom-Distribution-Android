package com.google.ads.interactivemedia.v3.impl;

import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class b extends o implements AdDisplayContainer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private VideoAdPlayer f2834a;

    @Override // com.google.ads.interactivemedia.v3.api.AdDisplayContainer
    public VideoAdPlayer getPlayer() {
        return this.f2834a;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdDisplayContainer
    public void setPlayer(VideoAdPlayer videoAdPlayer) {
        this.f2834a = videoAdPlayer;
    }
}
