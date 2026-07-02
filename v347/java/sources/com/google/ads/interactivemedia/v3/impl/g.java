package com.google.ads.interactivemedia.v3.impl;

import android.annotation.TargetApi;
import android.app.UiModeManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.StrictMode;
import android.util.Log;
import com.google.ads.interactivemedia.v3.api.AdDisplayContainer;
import com.google.ads.interactivemedia.v3.api.AdError;
import com.google.ads.interactivemedia.v3.api.AdErrorEvent;
import com.google.ads.interactivemedia.v3.api.AdsLoader;
import com.google.ads.interactivemedia.v3.api.AdsManagerLoadedEvent;
import com.google.ads.interactivemedia.v3.api.AdsRequest;
import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.api.StreamDisplayContainer;
import com.google.ads.interactivemedia.v3.api.StreamRequest;
import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import com.google.ads.interactivemedia.v3.impl.w;
import com.google.ads.interactivemedia.v3.impl.x;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.SortedSet;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class g implements AdsLoader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    x.b f2845a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f2846b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f2847c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t f2848d;
    private final List<AdsLoader.AdsLoadedListener> e;
    private final Map<String, AdsRequest> f;
    private final Map<String, StreamRequest> g;
    private com.google.a.a.g h;
    private final Object i;
    private ImaSdkSettings j;
    private TestingConfiguration k;

    public static abstract class b {
        public abstract int appVersion();

        public abstract String packageName();

        public static b create(int i, String str) {
            return new m(i, str);
        }
    }

    private class a extends AsyncTask<String, Void, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private AdsRequest f2851b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2852c;

        public a(AdsRequest adsRequest, String str) {
            this.f2851b = adsRequest;
            this.f2852c = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(String... strArr) {
            String string = strArr[0];
            synchronized (g.this.i) {
                if (g.this.h == null) {
                    g.this.h = new com.google.a.a.g(com.google.a.a.f.a("a.3.3.2", g.this.f2847c));
                }
                if (string != null) {
                    Uri uri = Uri.parse(string);
                    if (g.this.h.b(uri)) {
                        try {
                            string = g.this.h.a(uri, g.this.f2847c).toString();
                        } catch (com.google.a.a.h e) {
                        }
                    }
                }
            }
            return string;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            this.f2851b.setAdTagUrl(str);
            g.this.f2846b.b(new w(w.b.adsLoader, w.c.requestAds, this.f2852c, com.google.ads.interactivemedia.v3.impl.data.i.create(this.f2851b, g.this.c(), g.this.d(), g.this.j, g.this.e(), g.this.f())));
        }
    }

    private class c extends AsyncTask<Void, Void, String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private StreamRequest f2854b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f2855c;

        public c(StreamRequest streamRequest, String str) {
            this.f2854b = streamRequest;
            this.f2855c = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String doInBackground(Void... voidArr) {
            String strA;
            synchronized (g.this.i) {
                if (g.this.h == null) {
                    g.this.h = new com.google.a.a.g(com.google.a.a.f.a("a.3.3.2", g.this.f2847c));
                }
                strA = g.this.h.a().a(g.this.f2847c);
            }
            return strA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(String str) {
            g.this.f2846b.b(new w(w.b.adsLoader, w.c.requestStream, this.f2855c, com.google.ads.interactivemedia.v3.impl.data.i.createFromStreamRequest(this.f2854b, g.this.c(), g.this.d(), g.this.j, g.this.e(), g.this.f(), str)));
        }
    }

    public g(Context context, Uri uri, ImaSdkSettings imaSdkSettings) {
        this(context, uri, imaSdkSettings, null);
        this.f2846b.a();
    }

    public g(Context context, Uri uri, ImaSdkSettings imaSdkSettings, TestingConfiguration testingConfiguration) {
        this(new x(context, uri, imaSdkSettings, testingConfiguration), context);
        this.j = imaSdkSettings;
        this.k = testingConfiguration;
    }

    public g(x xVar, Context context) {
        this.f2845a = new x.b() { // from class: com.google.ads.interactivemedia.v3.impl.g.1
            @Override // com.google.ads.interactivemedia.v3.impl.x.b
            public void a(String str, z zVar, List<Float> list, SortedSet<Float> sortedSet, boolean z) {
                AdsRequest adsRequest = (AdsRequest) g.this.f.get(str);
                try {
                    g.this.a(new i(new h(str, g.this.f2846b, zVar, adsRequest.getAdDisplayContainer(), adsRequest.getContentProgressProvider(), list, sortedSet, g.this.f2847c, false, null, z), adsRequest.getUserRequestContext()));
                } catch (AdError e) {
                    g.this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(e, adsRequest.getUserRequestContext()));
                }
            }

            @Override // com.google.ads.interactivemedia.v3.impl.x.b
            public void a(String str, z zVar, String str2, boolean z) {
                StreamRequest streamRequest = (StreamRequest) g.this.g.get(str);
                try {
                    g.this.a(new i(new h(str, g.this.f2846b, zVar, streamRequest.getStreamDisplayContainer(), streamRequest.getStreamDisplayContainer().getVideoStreamPlayer(), null, null, g.this.f2847c, true, str2, z), streamRequest.getUserRequestContext()));
                } catch (AdError e) {
                    g.this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(e, streamRequest.getUserRequestContext()));
                }
            }

            @Override // com.google.ads.interactivemedia.v3.impl.x.b
            public void a(String str, AdError.AdErrorType adErrorType, int i, String str2) {
                g.this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(adErrorType, i, str2), g.this.f.get(str) != null ? ((AdsRequest) g.this.f.get(str)).getUserRequestContext() : ((StreamRequest) g.this.g.get(str)).getUserRequestContext()));
            }

            @Override // com.google.ads.interactivemedia.v3.impl.x.b
            public void a(String str, AdError.AdErrorType adErrorType, AdError.AdErrorCode adErrorCode, String str2) {
                g.this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(adErrorType, adErrorCode, str2), g.this.f.get(str) != null ? ((AdsRequest) g.this.f.get(str)).getUserRequestContext() : ((StreamRequest) g.this.g.get(str)).getUserRequestContext()));
            }
        };
        this.f2848d = new t();
        this.e = new ArrayList(1);
        this.f = new HashMap();
        this.g = new HashMap();
        this.i = new Object();
        this.j = new ImaSdkSettings();
        this.f2846b = xVar;
        this.f2847c = context;
    }

    public void a() {
        this.f2846b.a();
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void contentComplete() {
        this.f2846b.b(new w(w.b.adsLoader, w.c.contentComplete, "*"));
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void requestAds(AdsRequest adsRequest) {
        a(adsRequest, b());
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public String requestStream(StreamRequest streamRequest) {
        String strB = b();
        a(streamRequest, strB);
        return strB;
    }

    void a(AdsRequest adsRequest, String str) {
        if (a(adsRequest)) {
            this.f.put(str, adsRequest);
            this.f2846b.a(this.f2845a, str);
            this.f2846b.a(adsRequest.getAdDisplayContainer(), str);
            new a(adsRequest, str).execute(adsRequest.getAdTagUrl());
        }
    }

    void a(StreamRequest streamRequest, String str) {
        if (a(streamRequest)) {
            this.g.put(str, streamRequest);
            this.f2846b.a(this.f2845a, str);
            this.f2846b.a(streamRequest.getStreamDisplayContainer(), str);
            new c(streamRequest, str).execute(new Void[0]);
        }
    }

    private String b() {
        if (this.k == null || !this.k.ignoreStrictModeFalsePositives()) {
            return UUID.randomUUID().toString();
        }
        StrictMode.ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder(threadPolicy).permitDiskReads().build());
        String string = UUID.randomUUID().toString();
        StrictMode.setThreadPolicy(threadPolicy);
        return string;
    }

    private boolean a(AdsRequest adsRequest) {
        if (adsRequest == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "AdsRequest cannot be null.")));
            return false;
        }
        AdDisplayContainer adDisplayContainer = adsRequest.getAdDisplayContainer();
        if (adDisplayContainer == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad display container must be provided in the AdsRequest.")));
            return false;
        }
        if (adDisplayContainer.getAdContainer() == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad display container must have a UI container.")));
            return false;
        }
        if (this.f2846b.c() != null && this.f2846b.c().b() == w.a.nativeUi && adDisplayContainer.getPlayer() == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad Player was not provided.")));
            return false;
        }
        if (com.google.c.a.h.a(adsRequest.getAdTagUrl()) && com.google.c.a.h.a(adsRequest.getAdsResponse())) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad tag url must non-null and non empty.")));
            return false;
        }
        return true;
    }

    private boolean a(StreamRequest streamRequest) {
        if (streamRequest == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "StreamRequest cannot be null.")));
            return false;
        }
        StreamDisplayContainer streamDisplayContainer = streamRequest.getStreamDisplayContainer();
        if (streamDisplayContainer == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Ad display container must be provided in the StreamRequest.")));
            return false;
        }
        if (streamDisplayContainer.getVideoStreamPlayer() == null) {
            this.f2848d.a(new com.google.ads.interactivemedia.v3.impl.c(new AdError(AdError.AdErrorType.LOAD, AdError.AdErrorCode.INVALID_ARGUMENTS, "Stream requests must specify a player.")));
            return false;
        }
        return true;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public ImaSdkSettings getSettings() {
        return this.j;
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void addAdsLoadedListener(AdsLoader.AdsLoadedListener adsLoadedListener) {
        this.e.add(adsLoadedListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void removeAdsLoadedListener(AdsLoader.AdsLoadedListener adsLoadedListener) {
        this.e.remove(adsLoadedListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void addAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.f2848d.a(adErrorListener);
    }

    @Override // com.google.ads.interactivemedia.v3.api.AdsLoader
    public void removeAdErrorListener(AdErrorEvent.AdErrorListener adErrorListener) {
        this.f2848d.b(adErrorListener);
    }

    void a(AdsManagerLoadedEvent adsManagerLoadedEvent) {
        Iterator<AdsLoader.AdsLoadedListener> it = this.e.iterator();
        while (it.hasNext()) {
            it.next().onAdsManagerLoaded(adsManagerLoadedEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        return String.format("android%s:%s:%s", Build.VERSION.RELEASE, "3.3.2", this.f2847c.getPackageName());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String d() {
        if (this.f2847c.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0) {
            Log.w("IMASDK", "Host application doesn't have ACCESS_NETWORK_STATE permission");
            return "android:0";
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f2847c.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo == null ? "android:0" : String.format(Locale.US, "android:%d:%d", Integer.valueOf(activeNetworkInfo.getType()), Integer.valueOf(activeNetworkInfo.getSubtype()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public b e() {
        ActivityInfo activityInfo;
        PackageManager packageManager = this.f2847c.getPackageManager();
        ResolveInfo resolveInfoResolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.ads.interactivemedia.v3")), 65536);
        if (resolveInfoResolveActivity == null || (activityInfo = resolveInfoResolveActivity.activityInfo) == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(activityInfo.packageName, 0);
            if (packageInfo != null) {
                return b.create(packageInfo.versionCode, activityInfo.packageName);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(13)
    public boolean f() {
        if (this.k != null && this.k.forceTvMode()) {
            return true;
        }
        if (Build.VERSION.SDK_INT <= 12) {
            return false;
        }
        UiModeManager uiModeManager = (UiModeManager) this.f2847c.getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }
}
