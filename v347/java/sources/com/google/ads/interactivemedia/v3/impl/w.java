package com.google.ads.interactivemedia.v3.impl;

import android.net.Uri;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.UiElement;
import com.google.c.b.y;
import java.lang.reflect.Type;
import java.net.MalformedURLException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.google.ads.interactivemedia.v3.a.f f2907a = new com.google.ads.interactivemedia.v3.a.g().a(UiElement.class, com.google.ads.interactivemedia.v3.impl.data.k.GSON_TYPE_ADAPTER).a(CompanionAdSlot.class, new com.google.ads.interactivemedia.v3.a.s<CompanionAdSlot>() { // from class: com.google.ads.interactivemedia.v3.impl.w.1
        @Override // com.google.ads.interactivemedia.v3.a.s
        public com.google.ads.interactivemedia.v3.a.l a(CompanionAdSlot companionAdSlot, Type type, com.google.ads.interactivemedia.v3.a.r rVar) {
            int width = companionAdSlot.getWidth();
            return new com.google.ads.interactivemedia.v3.a.q(new StringBuilder(23).append(width).append("x").append(companionAdSlot.getHeight()).toString());
        }
    }).a(new com.google.b.c()).a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b f2908b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f2909c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f2910d;
    private final c e;

    public enum a {
        nativeUi,
        webViewUi,
        none
    }

    public enum b {
        activityMonitor,
        adsManager,
        adsLoader,
        contentTimeUpdate,
        displayContainer,
        i18n,
        log,
        videoDisplay,
        webViewLoaded
    }

    public enum c {
        adBreakEnded,
        adBreakReady,
        adBreakStarted,
        adMetadata,
        adsLoaded,
        allAdsCompleted,
        appStateChanged,
        click,
        complete,
        companionView,
        contentComplete,
        contentPauseRequested,
        contentResumeRequested,
        contentTimeUpdate,
        csi,
        discardAdBreak,
        displayCompanions,
        destroy,
        end,
        error,
        firstquartile,
        fullscreen,
        getViewability,
        hide,
        impression,
        init,
        initialized,
        load,
        loaded,
        loadStream,
        log,
        midpoint,
        mute,
        pause,
        play,
        reportVastEvent,
        resume,
        requestAds,
        requestStream,
        setPlaybackOptions,
        showVideo,
        skip,
        skippableStateChanged,
        skipShown,
        start,
        startTracking,
        stop,
        stopTracking,
        streamInitialized,
        thirdquartile,
        timedMetadata,
        timeupdate,
        unmute,
        viewability,
        videoClicked,
        adRemainingTime,
        learnMore,
        preSkipButton,
        skipButton
    }

    public static w a(String str) throws MalformedURLException, com.google.ads.interactivemedia.v3.a.t {
        Uri uri = Uri.parse(str);
        String strSubstring = uri.getPath().substring(1);
        if (uri.getQueryParameter("sid") == null) {
            throw new MalformedURLException("Session id must be provided in message.");
        }
        return new w(b.valueOf(strSubstring), c.valueOf(uri.getQueryParameter("type")), uri.getQueryParameter("sid"), f2907a.a(uri.getQueryParameter("data"), com.google.ads.interactivemedia.v3.impl.data.j.class));
    }

    public w(b bVar, c cVar, String str, Object obj) {
        this.f2908b = bVar;
        this.e = cVar;
        this.f2910d = str;
        this.f2909c = obj;
    }

    public w(b bVar, c cVar, String str) {
        this(bVar, cVar, str, null);
    }

    public b a() {
        return this.f2908b;
    }

    public c b() {
        return this.e;
    }

    public Object c() {
        return this.f2909c;
    }

    public String d() {
        return this.f2910d;
    }

    public String e() {
        y.a aVarA = new y.a().a("type", this.e).a("sid", this.f2910d);
        if (this.f2909c != null) {
            aVarA.a("data", this.f2909c);
        }
        return String.format("%s('%s', %s);", "javascript:adsense.mobileads.afmanotify.receiveMessage", this.f2908b, f2907a.a(aVarA.a()));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof w)) {
            w wVar = (w) obj;
            return this.f2908b == wVar.f2908b && com.google.c.a.d.a(this.f2909c, wVar.f2909c) && com.google.c.a.d.a(this.f2910d, wVar.f2910d) && this.e == wVar.e;
        }
        return false;
    }

    public int hashCode() {
        return com.google.c.a.d.a(this.f2908b, this.f2909c, this.f2910d, this.e);
    }

    public String toString() {
        return String.format("JavaScriptMessage [command=%s, type=%s, sid=%s, data=%s]", this.f2908b, this.e, this.f2910d, this.f2909c);
    }
}
