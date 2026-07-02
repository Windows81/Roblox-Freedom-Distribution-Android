package com.google.ads.interactivemedia.v3.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsRenderingSettings;
import com.google.ads.interactivemedia.v3.api.BaseDisplayContainer;
import com.google.ads.interactivemedia.v3.api.CompanionAdSlot;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.impl.data.CompanionData;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.ads.interactivemedia.v3.impl.w;
import com.google.ads.interactivemedia.v3.impl.y;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes.dex */
public class x implements y.a {
    private final Context g;
    private final y h;
    private z i;
    private long l;
    private TestingConfiguration m;
    private String n;
    private AdsRenderingSettings o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Map<String, c> f2917a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Map<String, a> f2918b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Map<String, b> f2919c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map<String, d> f2920d = new HashMap();
    private Map<String, af> e = new HashMap();
    private Map<String, BaseDisplayContainer> f = new HashMap();
    private boolean j = false;
    private Queue<w> k = new LinkedList();

    public interface a {
        void a(String str, String str2);

        void a(String str, String str2, String str3);
    }

    public interface b {
        void a(String str, AdError.AdErrorType adErrorType, int i, String str2);

        void a(String str, AdError.AdErrorType adErrorType, AdError.AdErrorCode adErrorCode, String str2);

        void a(String str, z zVar, String str2, boolean z);

        void a(String str, z zVar, List<Float> list, SortedSet<Float> sortedSet, boolean z);
    }

    public interface c {
        void a(AdError.AdErrorType adErrorType, int i, String str);

        void a(AdError.AdErrorType adErrorType, AdError.AdErrorCode adErrorCode, String str);

        void a(AdEvent.AdEventType adEventType, com.google.ads.interactivemedia.v3.impl.data.b bVar);

        void a(AdEvent.AdEventType adEventType, com.google.ads.interactivemedia.v3.impl.data.b bVar, Map<String, String> map);

        void a(Map<String, CompanionData> map);
    }

    public interface d {
        void a(w.c cVar, String str);
    }

    protected Uri a(Uri uri, ImaSdkSettings imaSdkSettings) {
        Uri.Builder builderAppendQueryParameter = uri.buildUpon().appendQueryParameter("sdk_version", "a.3.3.2").appendQueryParameter("hl", imaSdkSettings.getLanguage()).appendQueryParameter("wvr", "2").appendQueryParameter("app", this.g.getApplicationContext().getPackageName());
        if (this.m != null) {
            builderAppendQueryParameter.appendQueryParameter(TestingConfiguration.PARAMETER_KEY, new com.google.ads.interactivemedia.v3.a.g().a(new com.google.b.c()).a(new com.google.b.b()).a().a(this.m));
        }
        return builderAppendQueryParameter.build();
    }

    public x(Context context, Uri uri, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        this.g = context;
        this.m = testingConfiguration;
        this.h = new y(context, this);
        this.n = a(uri, imaSdkSettings).toString();
    }

    public void a() {
        this.l = SystemClock.elapsedRealtime();
        this.h.a(this.n);
    }

    public void a(AdsRenderingSettings adsRenderingSettings) {
        this.o = adsRenderingSettings;
    }

    public WebView b() {
        return this.h.a();
    }

    public z c() {
        return this.i;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.y.a
    public void a(w wVar) {
        com.google.ads.interactivemedia.v3.impl.data.j jVar = (com.google.ads.interactivemedia.v3.impl.data.j) wVar.c();
        String strD = wVar.d();
        w.c cVarB = wVar.b();
        switch (wVar.a()) {
            case adsManager:
                f(cVarB, strD, jVar);
                break;
            case activityMonitor:
                g(cVarB, strD, jVar);
                break;
            case videoDisplay:
                e(cVarB, strD, jVar);
                break;
            case adsLoader:
                d(cVarB, strD, jVar);
                break;
            case displayContainer:
                b(cVarB, strD, jVar);
                break;
            case i18n:
                c(cVarB, strD, jVar);
                break;
            case webViewLoaded:
            case log:
                a(cVarB, strD, jVar);
                break;
            default:
                String strValueOf = String.valueOf(wVar.a());
                Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 25).append("Unknown message channel: ").append(strValueOf).toString());
                break;
        }
    }

    private void a(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        switch (cVar) {
            case initialized:
                w.a aVarValueOf = w.a.nativeUi;
                try {
                    if (jVar.adUiStyle != null) {
                        aVarValueOf = w.a.valueOf(jVar.adUiStyle);
                    }
                    break;
                } catch (IllegalArgumentException e) {
                }
                this.i = new z(jVar.adTimeUpdateMs, aVarValueOf);
                this.j = true;
                a(SystemClock.elapsedRealtime() - this.l, str);
                d();
                break;
            case log:
                if (jVar.ln == null || jVar.n == null || jVar.m == null) {
                    String strValueOf = String.valueOf(jVar);
                    Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 30).append("Invalid logging message data: ").append(strValueOf).toString());
                    break;
                } else {
                    String strValueOf2 = String.valueOf(jVar.n);
                    String strConcat = strValueOf2.length() != 0 ? "SDK_LOG:".concat(strValueOf2) : new String("SDK_LOG:");
                    switch (jVar.ln.charAt(0)) {
                        case 'D':
                            Log.d(strConcat, jVar.m);
                            break;
                        case 'E':
                        case 'S':
                            Log.e(strConcat, jVar.m);
                            break;
                        case 'I':
                            Log.i(strConcat, jVar.m);
                            break;
                        case 'V':
                            Log.v(strConcat, jVar.m);
                            break;
                        case 'W':
                            Log.w(strConcat, jVar.m);
                            break;
                        default:
                            String strValueOf3 = String.valueOf(jVar.ln);
                            Log.w("IMASDK", strValueOf3.length() != 0 ? "Unrecognized log level: ".concat(strValueOf3) : new String("Unrecognized log level: "));
                            Log.w(strConcat, jVar.m);
                            break;
                    }
                }
                break;
            default:
                a("other", cVar);
                break;
        }
    }

    private void a(long j, String str) {
        HashMap map = new HashMap();
        map.put("webViewLoadingTime", Long.valueOf(j));
        b(new w(w.b.webViewLoaded, w.c.csi, str, map));
    }

    private void b(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        o oVar = (o) this.f.get(str);
        c cVar2 = this.f2917a.get(str);
        af afVar = this.e.get(str);
        if (oVar == null || cVar2 == null || afVar == null) {
            String strValueOf = String.valueOf(cVar);
            Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 60 + String.valueOf(str).length()).append("Received displayContainer message: ").append(strValueOf).append(" for invalid session id: ").append(str).toString());
        }
        if (!afVar.b(cVar, jVar)) {
            switch (cVar) {
                case displayCompanions:
                    if (jVar == null || jVar.companions == null) {
                        cVar2.a(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Display companions message requires companions in data.");
                    } else {
                        Map<String, ViewGroup> mapA = a(oVar, jVar.companions.keySet());
                        cVar2.a(jVar.companions);
                        if (mapA == null) {
                            cVar2.a(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Display requested for invalid companion slot.");
                        } else if (this.o == null || this.o.isRenderCompanions()) {
                            for (String str2 : mapA.keySet()) {
                                a(mapA.get(str2), jVar.companions.get(str2), str, oVar.a().get(str2));
                            }
                        }
                    }
                    break;
                default:
                    a(w.b.displayContainer.toString(), cVar);
                    break;
            }
        }
    }

    private void c(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        d dVar = this.f2920d.get(str);
        if (dVar != null) {
            dVar.a(cVar, jVar.translation);
        }
    }

    private Map<String, ViewGroup> a(o oVar, Set<String> set) {
        HashMap map = new HashMap(set.size());
        for (String str : set) {
            CompanionAdSlot companionAdSlot = oVar.a().get(str);
            if (companionAdSlot.getContainer() == null) {
                return null;
            }
            map.put(str, companionAdSlot.getContainer());
        }
        return map;
    }

    private void d(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        b bVar = this.f2919c.get(str);
        if (bVar == null) {
            String strValueOf = String.valueOf(cVar);
            Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(str).length()).append("Received request message: ").append(strValueOf).append(" for invalid session id: ").append(str).toString());
        }
        switch (cVar) {
            case adsLoaded:
                if (jVar == null) {
                    bVar.a(str, AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "adsLoaded message did not contain cue points.");
                } else {
                    bVar.a(str, this.i, jVar.adCuePoints, jVar.internalCuePoints, jVar.monitorAppLifecycle);
                }
                break;
            case streamInitialized:
                bVar.a(str, this.i, jVar.streamId, jVar.monitorAppLifecycle);
                String strValueOf2 = String.valueOf(jVar.streamId);
                Log.i("IMASDK", strValueOf2.length() != 0 ? "Stream initialized with streamId: ".concat(strValueOf2) : new String("Stream initialized with streamId: "));
                break;
            case error:
                bVar.a(str, AdError.AdErrorType.LOAD, jVar.errorCode, b(jVar.errorMessage, jVar.innerError));
                break;
            default:
                a(w.b.adsLoader.toString(), cVar);
                break;
        }
    }

    private void e(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        af afVar = this.e.get(str);
        if (afVar == null) {
            String strValueOf = String.valueOf(cVar);
            Log.w("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 56 + String.valueOf(str).length()).append("Received videoDisplay message: ").append(strValueOf).append(" for invalid session id: ").append(str).toString());
        } else {
            afVar.a(cVar, jVar);
        }
    }

    private void f(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        c cVar2 = this.f2917a.get(str);
        if (cVar2 == null) {
            String strValueOf = String.valueOf(cVar);
            Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(str).length()).append("Received manager message: ").append(strValueOf).append(" for invalid session id: ").append(str).toString());
        }
        com.google.ads.interactivemedia.v3.impl.data.b bVar = (jVar == null || jVar.adData == null) ? null : jVar.adData;
        switch (cVar) {
            case log:
                cVar2.a(AdEvent.AdEventType.LOG, bVar, jVar.logData.constructMap());
                break;
            case displayCompanions:
            case adsLoaded:
            case streamInitialized:
            default:
                a(w.b.adsManager.toString(), cVar);
                break;
            case error:
                cVar2.a(AdError.AdErrorType.PLAY, jVar.errorCode, b(jVar.errorMessage, jVar.innerError));
                break;
            case adMetadata:
            case impression:
            case skippableStateChanged:
                break;
            case loaded:
                if (bVar != null) {
                    cVar2.a(AdEvent.AdEventType.LOADED, bVar);
                } else {
                    Log.e("IMASDK", "Ad loaded message requires adData");
                    cVar2.a(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INTERNAL_ERROR, "Ad loaded message did not contain adData.");
                }
                break;
            case contentPauseRequested:
                cVar2.a(AdEvent.AdEventType.CONTENT_PAUSE_REQUESTED, null);
                break;
            case contentResumeRequested:
                cVar2.a(AdEvent.AdEventType.CONTENT_RESUME_REQUESTED, null);
                break;
            case complete:
                cVar2.a(AdEvent.AdEventType.COMPLETED, bVar);
                break;
            case allAdsCompleted:
                cVar2.a(AdEvent.AdEventType.ALL_ADS_COMPLETED, null);
                break;
            case skip:
                cVar2.a(AdEvent.AdEventType.SKIPPED, bVar);
                break;
            case start:
                cVar2.a(AdEvent.AdEventType.STARTED, bVar);
                break;
            case pause:
                cVar2.a(AdEvent.AdEventType.PAUSED, bVar);
                break;
            case resume:
                cVar2.a(AdEvent.AdEventType.RESUMED, bVar);
                break;
            case firstquartile:
                cVar2.a(AdEvent.AdEventType.FIRST_QUARTILE, bVar);
                break;
            case midpoint:
                cVar2.a(AdEvent.AdEventType.MIDPOINT, bVar);
                break;
            case thirdquartile:
                cVar2.a(AdEvent.AdEventType.THIRD_QUARTILE, bVar);
                break;
            case click:
                cVar2.a(AdEvent.AdEventType.CLICKED, bVar);
                break;
            case videoClicked:
                cVar2.a(AdEvent.AdEventType.TAPPED, bVar);
                break;
            case adBreakReady:
                android.support.v4.g.a aVar = new android.support.v4.g.a(1);
                aVar.put("adBreakTime", jVar.adBreakTime);
                cVar2.a(AdEvent.AdEventType.AD_BREAK_READY, (com.google.ads.interactivemedia.v3.impl.data.b) null, aVar);
                break;
            case adBreakStarted:
                cVar2.a(AdEvent.AdEventType.AD_BREAK_STARTED, bVar);
                break;
            case adBreakEnded:
                cVar2.a(AdEvent.AdEventType.AD_BREAK_ENDED, bVar);
                break;
        }
    }

    private void g(w.c cVar, String str, com.google.ads.interactivemedia.v3.impl.data.j jVar) {
        a aVar = this.f2918b.get(str);
        if (aVar == null) {
            String strValueOf = String.valueOf(cVar);
            Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 51 + String.valueOf(str).length()).append("Received monitor message: ").append(strValueOf).append(" for invalid session id: ").append(str).toString());
        }
        if (jVar == null) {
            String strValueOf2 = String.valueOf(cVar);
            Log.e("IMASDK", new StringBuilder(String.valueOf(strValueOf2).length() + 56 + String.valueOf(str).length()).append("Received monitor message: ").append(strValueOf2).append(" for session id: ").append(str).append(" with no data").toString());
            return;
        }
        switch (cVar) {
            case getViewability:
                aVar.a(jVar.queryId, jVar.eventId);
                break;
            case reportVastEvent:
                aVar.a(jVar.queryId, jVar.eventId, jVar.vastEvent);
                break;
            default:
                a(w.b.activityMonitor.toString(), cVar);
                break;
        }
    }

    private void a(String str, w.c cVar) {
        String strValueOf = String.valueOf(cVar);
        Log.i("IMASDK", new StringBuilder(String.valueOf(strValueOf).length() + 43 + String.valueOf(str).length()).append("Illegal message type ").append(strValueOf).append(" received for ").append(str).append(" channel").toString());
    }

    private String b(String str, String str2) {
        return (str2 == null || str2.length() == 0) ? str : new StringBuilder(String.valueOf(str).length() + 12 + String.valueOf(str2).length()).append(str).append(" Caused by: ").append(str2).toString();
    }

    public void a(b bVar, String str) {
        this.f2919c.put(str, bVar);
    }

    public void a(d dVar, String str) {
        this.f2920d.put(str, dVar);
    }

    public void a(String str) {
        this.f2920d.remove(str);
    }

    public void a(c cVar, String str) {
        this.f2917a.put(str, cVar);
    }

    public void a(a aVar, String str) {
        this.f2918b.put(str, aVar);
    }

    public void b(String str) {
        this.f2918b.remove(str);
    }

    public void a(af afVar, String str) {
        this.e.put(str, afVar);
    }

    public void a(BaseDisplayContainer baseDisplayContainer, String str) {
        this.f.put(str, baseDisplayContainer);
    }

    public void c(String str) {
        this.f2917a.remove(str);
        this.f.remove(str);
        this.e.remove(str);
    }

    public void b(w wVar) {
        this.k.add(wVar);
        d();
    }

    private void d() {
        while (this.j && !this.k.isEmpty()) {
            this.h.a(this.k.remove());
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.ads.interactivemedia.v3.impl.x$1] */
    public void d(final String str) {
        new AsyncTask<Void, Void, Void>() { // from class: com.google.ads.interactivemedia.v3.impl.x.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Void doInBackground(Void... voidArr) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
                if (!(x.this.g instanceof Activity)) {
                    intent.setFlags(268435456);
                }
                x.this.g.startActivity(intent);
                return null;
            }
        }.execute(new Void[0]);
    }

    private void a(ViewGroup viewGroup, CompanionData companionData, String str, CompanionAdSlot companionAdSlot) {
        viewGroup.removeAllViews();
        View viewA = null;
        switch (companionData.type()) {
            case Html:
            case IFrame:
                viewA = a(viewGroup.getContext(), companionData);
                break;
            case Static:
                viewA = a(viewGroup.getContext(), companionData, str);
                break;
        }
        viewA.setTag(str);
        ((p) companionAdSlot).a(str);
        viewGroup.addView(viewA);
    }

    public void a(String str, String str2) {
        if (!com.google.c.a.h.a(str) && !com.google.c.a.h.a(str2)) {
            HashMap map = new HashMap();
            map.put("companionId", str);
            b(new w(w.b.displayContainer, w.c.companionView, str2, map));
        }
    }

    protected View a(Context context, CompanionData companionData) {
        return new q(context, this, companionData);
    }

    protected View a(Context context, CompanionData companionData, String str) {
        v vVar = new v(context, this, companionData, str);
        vVar.a();
        return vVar;
    }
}
