package com.roblox.ima;

import android.content.Context;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdEvent;
import com.google.ads.interactivemedia.v3.api.AdsLoader;
import com.google.ads.interactivemedia.v3.api.AdsManager;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkFactory;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.roblox.client.b.c;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import microsoft.aspnet.signalr.client.Constants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AdsLoader f8005a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AdsManager f8006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImaSdkFactory f8007c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private AdPlayer f8008d;
    private String e;
    private boolean f;
    private com.roblox.client.a g;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;
    private long k;

    /* JADX INFO: renamed from: com.roblox.ima.a$a, reason: collision with other inner class name */
    private class C0136a implements AdsLoader.AdsLoadedListener {
        private C0136a() {
        }

        @Override // com.google.ads.interactivemedia.v3.api.AdsLoader.AdsLoadedListener
        public void onAdsManagerLoaded(AdsManagerLoadedEvent adsManagerLoadedEvent) {
            Log.i("AdPlayerController", "AdsLoadedListener::onAdsManagerLoaded:");
            a.this.f8006b = adsManagerLoadedEvent.getAdsManager();
            a.this.f8006b.addAdEventListener(new AdEvent.AdEventListener() { // from class: com.roblox.ima.a.a.1
                @Override // com.google.ads.interactivemedia.v3.api.AdEvent.AdEventListener
                public void onAdEvent(AdEvent adEvent) {
                    Log.i("AdPlayerController", "AdsLoadedListener::Ad event: " + adEvent.getType());
                    switch (adEvent.getType()) {
                        case LOADED:
                            c.a("IMAVideo", "TimeToLoad", System.currentTimeMillis() - a.this.k);
                            a.this.h = true;
                            if (a.this.g != null) {
                                a.this.g.c();
                            }
                            if (a.this.i) {
                                a.this.a();
                            }
                            break;
                        case CONTENT_PAUSE_REQUESTED:
                            a.this.b();
                            break;
                        case PAUSED:
                            a.this.f = false;
                            break;
                        case STARTED:
                            a.this.f = true;
                            if (a.this.g != null) {
                                a.this.g.a();
                            }
                            break;
                        case ALL_ADS_COMPLETED:
                            if (a.this.f8006b != null) {
                                a.this.f8006b.destroy();
                                a.this.f8006b = null;
                            }
                            a.this.c();
                            break;
                    }
                }
            });
            a.this.f8006b.init();
        }
    }

    public void a(AdPlayer adPlayer) {
        Log.i("AdPlayerController", "setAdPlayer:...");
        this.f8008d = adPlayer;
    }

    public a(Context context, AdPlayer adPlayer, String str, com.roblox.client.a aVar) {
        Log.i("AdPlayerController", "AdPlayerController: language = " + str);
        this.f8008d = adPlayer;
        this.f = false;
        ImaSdkSettings imaSdkSettings = new ImaSdkSettings();
        imaSdkSettings.setLanguage(str);
        this.f8007c = ImaSdkFactory.getInstance();
        this.f8005a = this.f8007c.createAdsLoader(context, imaSdkSettings);
        this.f8005a.addAdErrorListener(new AdErrorEvent.AdErrorListener() { // from class: com.roblox.ima.a.1
            @Override // com.google.ads.interactivemedia.v3.api.AdErrorEvent.AdErrorListener
            public void onAdError(AdErrorEvent adErrorEvent) {
                Log.i("AdPlayerController", "Error loading ad: " + adErrorEvent.getError());
                Log.i("AdPlayerController", "Error code: " + adErrorEvent.getError().getErrorCode().toString());
                if (a.this.g != null) {
                    a.this.g.a(adErrorEvent.getError().getErrorCode().toString(), a.this.j);
                }
                if (a.this.j) {
                    a.this.c();
                    a.this.j = false;
                }
            }
        });
        this.f8005a.addAdsLoadedListener(new C0136a());
        this.g = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f8008d.a();
        this.f = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.f = false;
        this.h = false;
        if (this.g != null) {
            this.g.b();
        }
    }

    public void a(JSONObject jSONObject) {
        Log.i("AdPlayerController", "requestAds: customParameters = " + jSONObject + ", mCurrentAdTagUrl = " + this.e);
        if (this.e == null || this.e.isEmpty()) {
            Log.i("AdPlayerController", "requestAds: No VAST ad tag URL specified");
            c();
            return;
        }
        StringBuilder sb = new StringBuilder();
        if (jSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                try {
                    String next = itKeys.next();
                    sb.append(next);
                    sb.append("=");
                    sb.append(jSONObject.get(next).toString());
                    sb.append("&");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            sb.replace(sb.length() - 1, sb.length(), "");
        }
        String strEncode = "";
        try {
            strEncode = URLEncoder.encode(sb.toString(), Constants.UTF8_NAME);
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        if (this.f8006b != null) {
            this.f8006b.destroy();
        }
        this.f8005a.contentComplete();
        AdDisplayContainer adDisplayContainerCreateAdDisplayContainer = this.f8007c.createAdDisplayContainer();
        adDisplayContainerCreateAdDisplayContainer.setPlayer(this.f8008d.getVideoAdPlayer());
        adDisplayContainerCreateAdDisplayContainer.setAdContainer(this.f8008d.getAdUiContainer());
        AdsRequest adsRequestCreateAdsRequest = this.f8007c.createAdsRequest();
        if (strEncode.length() == 0) {
            adsRequestCreateAdsRequest.setAdTagUrl(this.e);
        } else {
            adsRequestCreateAdsRequest.setAdTagUrl(this.e.concat("&cust_params=").concat(strEncode));
        }
        adsRequestCreateAdsRequest.setAdDisplayContainer(adDisplayContainerCreateAdDisplayContainer);
        adsRequestCreateAdsRequest.setContentProgressProvider(this.f8008d.getContentProgressProvider());
        this.f8005a.requestAds(adsRequestCreateAdsRequest);
        this.k = System.currentTimeMillis();
    }

    public void a() {
        Log.i("AdPlayerController", "playAds: mAdsManager = " + this.f8006b);
        if (this.f8006b != null) {
            this.j = true;
            this.f8006b.start();
        } else {
            c();
        }
    }

    public void a(String str) {
        this.e = str;
    }
}
