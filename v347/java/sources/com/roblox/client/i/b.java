package com.roblox.client.i;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.google.android.gms.ads.doubleclick.d;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.http.m;
import com.roblox.client.http.n;
import com.roblox.client.http.r;
import com.roblox.client.j;
import com.roblox.ima.AdPlayer;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class b implements com.roblox.client.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private n f7148a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private JSONObject f7149b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f7150c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f7151d;
    private WeakReference<Activity> e;
    private com.google.android.gms.ads.doubleclick.e f;
    private j g;
    private com.roblox.ima.a h;
    private Activity i;
    private com.roblox.client.game.a j;
    private boolean k;
    private final m l = new m() { // from class: com.roblox.client.i.b.3
        @Override // com.roblox.client.http.m
        public void a(com.roblox.client.http.j jVar) {
            com.roblox.client.util.g.c("AdSessionManager", "updateAdStatusListener: response = " + jVar.a());
            try {
                b.this.f7150c = new JSONObject(jVar.a()).optBoolean("ShouldShowAd", false) || com.roblox.client.b.C();
                if (b.this.f7150c && b.this.f7149b != null) {
                    if (b.this.f7149b.optBoolean("IsVideoAd", false)) {
                        b.this.f();
                        return;
                    } else {
                        b.this.j();
                        return;
                    }
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            b.this.k();
        }
    };

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f7157a = new b();
    }

    public static b d() {
        return a.f7157a;
    }

    public void a(Activity activity) {
        com.roblox.client.util.g.b("AdSessionManager", "initialize:");
        this.e = new WeakReference<>(activity);
        this.f7150c = false;
        this.k = false;
        i();
        e();
    }

    private void e() {
        com.roblox.client.util.g.b("AdSessionManager", "initVideoAdUi:");
        Activity activityM = m();
        if (activityM != null) {
            ViewGroup viewGroup = (ViewGroup) activityM.getWindow().getDecorView().getRootView();
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.e.get());
            this.f7151d = layoutInflaterFrom.inflate(R.layout.ima_player_container, viewGroup);
            layoutInflaterFrom.inflate(R.layout.ima_player, (ViewGroup) this.f7151d.findViewById(R.id.ima_player_container));
            a(this.f7151d, activityM);
            return;
        }
        com.roblox.client.util.g.e("AdSessionManager", "Activity reference is null, can't create video ad UI!");
    }

    private void a(View view, Context context) {
        com.roblox.client.util.g.b("AdSessionManager", "initAdPlayer:");
        AdPlayer adPlayer = (AdPlayer) view.findViewById(R.id.videoPlayerWithAdPlayback);
        if (this.h == null) {
            this.h = new com.roblox.ima.a(context, adPlayer, "en", this);
        } else {
            this.h.a(adPlayer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.roblox.client.util.g.c("AdSessionManager", "requestNewVideoAd:");
        if (this.f7151d.findViewById(R.id.ima_player_container) == null) {
            com.roblox.client.util.g.b("AdSessionManager", "requestNewVideoAd: call initVideoAdUi again...");
            e();
        }
        JSONObject jSONObjectG = g();
        try {
            String string = this.f7149b.getString("AdUnit");
            com.roblox.client.util.g.b("AdSessionManager", "requestNewVideoAd: video adUnit = " + string);
            this.h.a(string);
            this.h.a(jSONObjectG);
        } catch (Exception e) {
            com.roblox.client.util.g.d("AdSessionManager", "requestNewVideoAd: !!! Exception: " + e);
        }
    }

    private JSONObject g() {
        JSONObject jSONObject = new JSONObject();
        try {
            Iterator<String> itKeys = this.f7149b.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                if (!a(next)) {
                    jSONObject.put(next, this.f7149b.get(next));
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jSONObject;
    }

    private boolean a(String str) {
        return str.equals("IsVideoAd") || str.equals("AdUnit");
    }

    private void h() {
        com.roblox.client.util.g.b("AdSessionManager", "playVideoAd:");
        if (this.f7151d.findViewById(R.id.ima_player_container) != null && this.e.get() != null) {
            this.h.a();
        }
    }

    @Override // com.roblox.client.a
    public void a() {
        com.roblox.client.util.g.b("AdSessionManager", "videoAdStartedPlaying:");
        View viewFindViewById = this.f7151d.findViewById(R.id.ima_player_container);
        if (viewFindViewById != null) {
            if (this.g != null) {
                this.g.a();
            }
            Activity activityM = m();
            if (activityM != null && RobloxSettings.isPhone()) {
                com.roblox.client.util.g.c("AdSessionManager", "videoAdStartedPlaying: ... set SENSOR_LANDSCAPE");
                activityM.setRequestedOrientation(6);
            }
            com.roblox.client.util.g.c("AdSessionManager", "videoAdStartedPlaying: ... set view to VISIBLE");
            viewFindViewById.setVisibility(0);
            if (activityM != null) {
                activityM.getWindow().getDecorView().setSystemUiVisibility(4);
            }
        }
    }

    @Override // com.roblox.client.a
    public void b() {
        com.roblox.client.util.g.b("AdSessionManager", "videoAdFinishedPlaying:");
        View viewFindViewById = this.f7151d.findViewById(R.id.ima_player_container);
        if (viewFindViewById != null) {
            com.roblox.client.util.g.c("AdSessionManager", "videoAdFinishedPlaying: ... set view to INVISIBLE.");
            viewFindViewById.setVisibility(4);
            Activity activityM = m();
            if (activityM != null) {
                com.roblox.client.util.g.c("AdSessionManager", "videoAdFinishedPlaying: ... remove player-container view entirely.");
                ((ViewGroup) activityM.getWindow().getDecorView().getRootView()).removeView(viewFindViewById);
                if (RobloxSettings.isPhone()) {
                    activityM.setRequestedOrientation(7);
                }
            }
        }
        k();
    }

    @Override // com.roblox.client.a
    public void c() {
        com.roblox.client.util.g.b("AdSessionManager", "videoAdIsLoaded: shouldShowAd = " + this.f7150c);
        com.roblox.client.b.c.a("MobileAds", "IMASuccess");
        if (this.f7150c) {
            h();
        }
    }

    @Override // com.roblox.client.a
    public void a(String str, boolean z) {
        com.roblox.client.util.g.b("AdSessionManager", "IMA videoAdError, " + str);
        com.roblox.client.b.c.a("MobileAds", "IMALoadingFailure", str);
        if (z) {
            l();
        }
        k();
    }

    private void i() {
        com.roblox.client.util.g.b("AdSessionManager", "initStaticAdUi:");
        Activity activityM = m();
        if (activityM != null) {
            ViewGroup viewGroup = (ViewGroup) activityM.getWindow().getDecorView().getRootView();
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(activityM);
            this.f7151d = layoutInflaterFrom.inflate(R.layout.dfp_player_container, viewGroup);
            layoutInflaterFrom.inflate(R.layout.dfp_player, (ViewGroup) this.f7151d.findViewById(R.id.dfp_player_container));
            if (this.f == null) {
                a((Context) activityM);
                return;
            }
            return;
        }
        com.roblox.client.util.g.e("AdSessionManager", "Activity reference is null, can't create static ad UI!");
    }

    private void a(Context context) {
        com.roblox.client.util.g.b("AdSessionManager", "initPublisherInterstitialAd:");
        this.f = new com.google.android.gms.ads.doubleclick.e(context);
        this.f.a(new com.google.android.gms.ads.a() { // from class: com.roblox.client.i.b.1
            @Override // com.google.android.gms.ads.a
            public void onAdClosed() {
                com.roblox.client.util.g.b("AdSessionManager", "GMA onAdClosed");
                b.this.k();
            }

            @Override // com.google.android.gms.ads.a
            public void onAdFailedToLoad(int i) {
                super.onAdFailedToLoad(i);
                if (i == 3) {
                    com.roblox.client.util.g.b("AdSessionManager", "GMA onAdFailedToLoad: errorCode = ERROR_CODE_NO_FILL");
                    com.roblox.client.b.c.a("MobileAds", "GMAFailure", "AdNotReady");
                } else {
                    com.roblox.client.util.g.d("AdSessionManager", "GMA onAdFailedToLoad: errorCode = " + i);
                    com.roblox.client.b.c.a("MobileAds", "GMAFailure", "OtherError");
                }
                if (b.this.k) {
                    b.this.k = false;
                }
                b.this.l();
                b.this.k();
            }

            @Override // com.google.android.gms.ads.a
            public void onAdLeftApplication() {
                super.onAdLeftApplication();
                com.roblox.client.util.g.b("AdSessionManager", "GMA onAdLeftApplication");
            }

            @Override // com.google.android.gms.ads.a
            public void onAdOpened() {
                super.onAdOpened();
                com.roblox.client.util.g.b("AdSessionManager", "GMA onAdOpened");
            }

            @Override // com.google.android.gms.ads.a
            public void onAdLoaded() {
                super.onAdLoaded();
                com.roblox.client.util.g.b("AdSessionManager", "GMA onAdLoaded");
                com.roblox.client.b.c.a("MobileAds", "GMASuccess");
                com.roblox.client.util.g.b("AdSessionManager", "GMA onAdLoaded ... static-ad-waiting = " + b.this.k);
                if (b.this.k) {
                    b.this.k = false;
                    b.this.f.c();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        com.roblox.client.util.g.b("AdSessionManager", "playStaticAd: isLoaded = " + this.f.b());
        if (this.f.b()) {
            this.f.c();
            return;
        }
        com.roblox.client.util.g.b("AdSessionManager", "playStaticAd: DFP ad not loaded.");
        Activity activityM = m();
        if (activityM != null) {
            com.roblox.client.util.g.b("AdSessionManager", "playStaticAd: Request a new static ad...");
            this.k = true;
            b((Context) activityM);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        com.roblox.client.util.g.b("AdSessionManager", "requestNewStaticAd:");
        try {
            if (this.f == null) {
                a(context);
            }
            String string = this.f7149b.getString("AdUnit");
            com.roblox.client.util.g.b("AdSessionManager", "requestNewStaticAd: adUnit = " + string);
            if (this.f.a() == null || this.f.a().isEmpty()) {
                com.roblox.client.util.g.b("AdSessionManager", "requestNewStaticAd: ... set adUnit = " + string);
                this.f.a(string);
            }
            d.a aVar = new d.a();
            if (this.f7149b.has("A")) {
                if (this.f7149b.optString("A", "").equals("u13")) {
                    aVar.a(true);
                }
            } else {
                aVar.a(false);
            }
            JSONObject jSONObjectG = g();
            Iterator<String> itKeys = jSONObjectG.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                try {
                    aVar.a(next, jSONObjectG.get(next).toString());
                } catch (JSONException e) {
                    com.roblox.client.util.g.d("AdSessionManager", "requestNewStaticAd: Exception when adding custom key: " + this.f);
                }
            }
            this.f.a(aVar.a());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        com.roblox.client.util.g.b("AdSessionManager", "resumeGameJoinAttempt:...");
        if (this.g != null) {
            this.g.a(this.j, this.i);
            this.g = null;
        }
    }

    public void b(final Activity activity) {
        if (this.f7148a != null) {
            com.roblox.client.util.g.b("AdSessionManager", "getAdDetails: get-ad-details request is in progress. Do nothing.");
            return;
        }
        com.roblox.client.util.g.b("AdSessionManager", "getAdDetails:...");
        this.f7148a = new n(RobloxSettings.getAdDetailsUrl(), new m() { // from class: com.roblox.client.i.b.2
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.b("AdSessionManager", "getAdDetails::onFinished: response = " + jVar.a());
                b.this.f7148a = null;
                try {
                    b.this.f7149b = new JSONObject(jVar.a());
                    if (b.this.f7149b.has("TargetingParameters")) {
                        b.this.f7149b = b.this.f7149b.optJSONObject("TargetingParameters");
                    }
                    if (b.this.f7149b != null) {
                        if (!b.this.f7149b.optBoolean("IsVideoAd", false)) {
                            b.this.b((Context) activity);
                        } else if (com.roblox.client.d.b.a()) {
                            Toast.makeText(activity, "A video ad is ready", 0).show();
                        }
                    }
                } catch (JSONException e) {
                    com.roblox.client.util.g.b("AdSessionManager", "getAdDetails:onFinished: Exception in parsing body: " + e.toString());
                }
            }
        });
        this.f7148a.a();
    }

    public void a(j jVar, com.roblox.client.game.a aVar, Activity activity) {
        com.roblox.client.util.g.b("AdSessionManager", "startAdPlayAttempt:");
        if (this.f7149b == null) {
            com.roblox.client.util.g.b("AdSessionManager", "startAdPlayAttempt: Ad-details is not ready. Resume game now.");
            if (jVar != null) {
                jVar.a(aVar, activity);
                return;
            }
            return;
        }
        this.g = jVar;
        this.j = aVar;
        this.i = activity;
        new n(RobloxSettings.showShowAdUrl(), this.l).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        new r(RobloxSettings.flushAdCountUrl(), null, null, new m() { // from class: com.roblox.client.i.b.4
            @Override // com.roblox.client.http.m
            public void a(com.roblox.client.http.j jVar) {
                com.roblox.client.util.g.c("AdSessionManager", "flushAdCount: response = " + jVar.a());
            }
        }).c();
    }

    private Activity m() {
        if (this.e == null) {
            return null;
        }
        return this.e.get();
    }
}
