package com.google.ads.interactivemedia.v3.impl;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.Ad;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.player.ContentProgressProvider;
import com.google.ads.interactivemedia.v3.api.player.VideoProgressUpdate;
import com.google.ads.interactivemedia.v3.impl.data.CompanionData;
import com.google.ads.interactivemedia.v3.impl.w;
import com.google.ads.interactivemedia.v3.impl.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public class h implements AdsManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f2856a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f2857b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private af f2858c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.ads.interactivemedia.v3.impl.data.b f2859d;
    private List<CompanionData> e;
    private r f;
    private List<Float> g;
    private s h;
    private boolean i;
    private final w.a j;
    private final List<AdEvent.AdEventListener> k;
    private final t l;
    private com.google.ads.interactivemedia.v3.impl.a m;
    private boolean n;
    private final String o;

    public h(String str, x xVar, z zVar, BaseDisplayContainer baseDisplayContainer, ContentProgressProvider contentProgressProvider, List<Float> list, SortedSet<Float> sortedSet, Context context, boolean z, String str2, boolean z2) throws AdError {
        this(str, xVar, zVar, baseDisplayContainer, contentProgressProvider, list, sortedSet, null, null, null, context, z, str2, z2);
    }

    h(String str, x xVar, z zVar, BaseDisplayContainer baseDisplayContainer, ContentProgressProvider contentProgressProvider, List<Float> list, SortedSet<Float> sortedSet, af afVar, s sVar, com.google.ads.interactivemedia.v3.impl.a aVar, Context context, boolean z, String str2, boolean z2) throws AdError {
        this.i = false;
        this.k = new ArrayList(1);
        this.l = new t();
        this.f2857b = str;
        this.f2856a = xVar;
        this.n = z;
        this.o = z ? str2 : null;
        this.j = zVar.b();
        if (afVar != null) {
            this.f2858c = afVar;
        } else if (z) {
            this.f2858c = new ae(str, zVar, xVar, this, (StreamDisplayContainer) baseDisplayContainer, context);
            ((ae) this.f2858c).f();
        } else {
            switch (this.j) {
                case webViewUi:
                case nativeUi:
                    this.f2858c = new aa(str, zVar, xVar, this, (AdDisplayContainer) baseDisplayContainer, context);
                    break;
                default:
                    AdError.AdErrorType adErrorType = AdError.AdErrorType.PLAY;
                    AdError.AdErrorCode adErrorCode = AdError.AdErrorCode.INTERNAL_ERROR;
                    String strValueOf = String.valueOf(this.j.name());
                    throw new AdError(adErrorType, adErrorCode, strValueOf.length() != 0 ? "UI style not supported: ".concat(strValueOf) : new String("UI style not supported: "));
            }
        }
        addAdErrorListener(this.f2858c);
        this.g = list;
        if (aVar != null) {
            this.m = aVar;
        } else {
            this.m = new com.google.ads.interactivemedia.v3.impl.a(str, xVar, baseDisplayContainer.getAdContainer());
        }
        this.m.a(z2);
        if (sortedSet != null && !sortedSet.isEmpty()) {
            if (contentProgressProvider == null) {
                throw new AdError(AdError.AdErrorType.PLAY, AdError.AdErrorCode.PLAYLIST_NO_CONTENT_TRACKING, "Unable to handle cue points, no content progress provider configured.");
            }
            if (sVar != null) {
                this.h = sVar;
            } else {
                this.h = new s(contentProgressProvider, zVar.a());
            }
            this.f = new r(xVar, sortedSet, str);
            this.h.a(this.f);
            this.h.b();
        }
        xVar.a(this.f2858c, str);
        xVar.a(new a(), str);
        this.m.a();
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void init() {
        init(null);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void init(AdsRenderingSettings adsRenderingSettings) {
        VideoProgressUpdate videoProgressUpdateA;
        HashMap map = new HashMap();
        map.put("adsRenderingSettings", adsRenderingSettings == null ? new k() : adsRenderingSettings);
        if (this.h != null && (videoProgressUpdateA = this.h.a()) != VideoProgressUpdate.VIDEO_TIME_NOT_READY) {
            double currentTime = videoProgressUpdateA.getCurrentTime();
            Log.d("IMASDK", new StringBuilder(68).append("AdsManager.init -> Setting contentStartTime ").append(currentTime).toString());
            map.put("contentStartTime", Double.valueOf(currentTime));
        }
        this.f2858c.a();
        this.f2856a.a(adsRenderingSettings);
        this.f2856a.b(new w(w.b.adsManager, w.c.init, this.f2857b, map));
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void start() {
        a(w.c.start);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void pause() {
        a(w.c.pause);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void resume() {
        a(w.c.resume);
    }

    @Override // com.google.ads.interactivemedia.v3.api.player.AdProgressProvider
    public VideoProgressUpdate getAdProgress() {
        return this.f2858c.getAdProgress();
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void destroy() {
        a(w.c.destroy);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public List<Float> getAdCuePoints() {
        return this.g;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public Ad getCurrentAd() {
        return this.f2859d;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public String getStreamId() {
        return this.o;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public boolean isCustomPlaybackUsed() {
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void addAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.l.a(adErrorListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void removeAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.l.b(adErrorListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void addAdEventListener(AdEvent.AdEventListener adEventListener) {
        this.k.add(adEventListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void removeAdEventListener(AdEvent.AdEventListener adEventListener) {
        this.k.remove(adEventListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void skip() {
        a(w.c.skip);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsManager
    public void discardAdBreak() {
        a(w.c.discardAdBreak);
    }

    public boolean a() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f2858c.e();
        if (this.h != null) {
            this.h.c();
        }
        this.m.b();
        this.f2856a.c(this.f2857b);
        this.f2859d = null;
        this.e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(w.c cVar) {
        this.f2856a.b(new w(w.b.adsManager, cVar, this.f2857b));
    }

    void a(AdEvent.AdEventType adEventType) {
        a(adEventType, (Map<String, String>) null);
    }

    void a(AdEvent.AdEventType adEventType, Map<String, String> map) {
        d dVar = new d(adEventType, this.f2859d, map);
        Iterator<AdEvent.AdEventListener> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().onAdEvent(dVar);
        }
    }

    void a(AdErrorEvent adErrorEvent) {
        this.l.a(adErrorEvent);
    }

    void a(com.google.ads.interactivemedia.v3.impl.data.b bVar) {
        this.f2859d = bVar;
    }

    void a(Map<String, CompanionData> map) {
        this.e = null;
        if (map != null) {
            this.e = com.google.c.b.x.a((Collection) map.values());
        }
    }

    private List<CompanionData> getCurrentCompanions() {
        return this.e;
    }

    private void onCompanionRendered(String str) {
        this.f2856a.a(str, this.f2857b);
    }

    private class a implements x.c {
        private a() {
        }

        @Override // com.google.ads.interactivemedia.v3.impl.x.c
        public void a(AdEvent.AdEventType adEventType, com.google.ads.interactivemedia.v3.impl.data.b bVar) {
            switch (adEventType) {
                case LOADED:
                    h.this.a(bVar);
                    break;
                case STARTED:
                    if (bVar != null) {
                        h.this.a(bVar);
                    }
                    h.this.f2858c.a(bVar);
                    break;
                case COMPLETED:
                case SKIPPED:
                    h.this.f2858c.b();
                    break;
                case CONTENT_PAUSE_REQUESTED:
                    if (h.this.h != null) {
                        h.this.h.c();
                    }
                    h.this.m.c();
                    break;
                case CONTENT_RESUME_REQUESTED:
                    if (h.this.h != null) {
                        h.this.h.b();
                    }
                    h.this.m.d();
                    break;
                case ALL_ADS_COMPLETED:
                    if (!h.this.a()) {
                        h.this.b();
                        if (!h.this.i) {
                            h.this.a(w.c.destroy);
                        }
                    }
                    break;
                case CLICKED:
                    String clickThruUrl = bVar.getClickThruUrl();
                    if (!com.google.ads.interactivemedia.v3.impl.b.b.a(clickThruUrl)) {
                        h.this.f2856a.d(clickThruUrl);
                    }
                    break;
                case AD_BREAK_STARTED:
                    if (h.this.a()) {
                        h.this.f2858c.c();
                    }
                    break;
                case AD_BREAK_ENDED:
                    if (h.this.a()) {
                        h.this.f2858c.d();
                    }
                    break;
            }
            h.this.a(adEventType);
            if (adEventType == AdEvent.AdEventType.COMPLETED || adEventType == AdEvent.AdEventType.SKIPPED) {
                h.this.a((com.google.ads.interactivemedia.v3.impl.data.b) null);
                h.this.a((Map<String, CompanionData>) null);
            }
        }

        @Override // com.google.ads.interactivemedia.v3.impl.x.c
        public void a(AdEvent.AdEventType adEventType, com.google.ads.interactivemedia.v3.impl.data.b bVar, Map<String, String> map) {
            if (bVar != null) {
                h.this.a(bVar);
            }
            h.this.a(adEventType, map);
        }

        @Override // com.google.ads.interactivemedia.v3.impl.x.c
        public void a(AdError.AdErrorType adErrorType, int i, String str) {
            h.this.a(new c(new AdError(adErrorType, i, str)));
        }

        @Override // com.google.ads.interactivemedia.v3.impl.x.c
        public void a(AdError.AdErrorType adErrorType, AdError.AdErrorCode adErrorCode, String str) {
            h.this.a(new c(new AdError(adErrorType, adErrorCode, str)));
        }

        @Override // com.google.ads.interactivemedia.v3.impl.x.c
        public void a(Map<String, CompanionData> map) {
            h.this.a(map);
        }
    }
}
