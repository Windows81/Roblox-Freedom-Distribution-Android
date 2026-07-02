package com.google.ads.interactivemedia.v3.api;

import com.google.ads.interactivemedia.v3.api.player.VideoAdPlayer;

/* JADX INFO: loaded from: classes.dex */
public interface AdDisplayContainer extends BaseDisplayContainer {
    VideoAdPlayer getPlayer();

    void setPlayer(VideoAdPlayer videoAdPlayer);
}
