package com.roblox.client;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import com.roblox.client.app.AppInputFocusLifecycleObserver;
import com.roblox.client.app.AppWebViewLifecycleObserver;
import com.roblox.client.app.a;
import com.roblox.client.captcha.ActivityFunCaptcha;
import com.roblox.client.captcha.CaptchaConfig;
import com.roblox.client.captcha.LoginCaptchaConfig;
import com.roblox.client.captcha.SignUpCaptchaConfig;
import com.roblox.client.feature.FeatureState;
import com.roblox.client.friends.ActivityUniversalFriends;
import com.roblox.client.game.a;
import com.roblox.client.game.b;
import com.roblox.client.o;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.s.c;
import com.roblox.client.s.e;
import com.roblox.client.signup.chooseyouradventure.ActivityChooseYourAdventure;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.b;
import com.roblox.client.w;
import com.roblox.engine.jni.NativeAppBridgeInterface;
import com.roblox.engine.jni.NativeGLInterface;
import com.roblox.engine.jni.NativeGLJavaInterface;
import java.lang.ref.WeakReference;
import org.greenrobot.eventbus.ThreadMode;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityNativeMain extends q implements a.InterfaceC0126a, com.roblox.client.feature.c, a.d, e.b, b.a, com.roblox.client.startup.d, com.roblox.client.z.d, NativeGLJavaInterface.OnAppShellReloadNeededListener {
    private com.roblox.client.app.c A;
    private boolean q;
    private com.roblox.client.feature.a r;
    private View s;
    private View t;
    private ServiceConnection u;
    private boolean v;
    private boolean w;
    private int x;
    private com.roblox.client.locale.f y;
    private com.roblox.client.app.a z = null;
    private final com.roblox.client.http.m B = new com.roblox.client.http.m() { // from class: com.roblox.client.ActivityNativeMain.3
        @Override // com.roblox.client.http.m
        public void a(com.roblox.client.http.j jVar) {
            if (jVar.b() == 401) {
                com.roblox.client.ae.k.d("rbx.main", "sessionCheckHandler: Got 401 error code from the server. Logout now...");
                com.roblox.client.s.c.d().a(ActivityNativeMain.this, c.e.LOGOUT_BY_401_ERROR_IN_NATIVE);
            }
        }
    };

    @Override // com.roblox.client.q
    protected boolean m() {
        return true;
    }

    @Override // com.roblox.client.startup.d
    public void p() {
    }

    @Override // com.roblox.client.startup.d
    public void s() {
    }

    @Override // com.roblox.client.startup.d
    public void t() {
    }

    protected boolean x() {
        return true;
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.y = com.roblox.client.locale.b.a().b();
        if (com.roblox.client.x.c.h()) {
            com.roblox.client.startup.c.a((Context) this).a((com.roblox.client.startup.d) this);
        } else if (!b.a() && bundle != null) {
            com.roblox.client.ae.k.b("rbx.main", "onCreate restarting app");
            startActivity(ActivitySplash.a(this, com.roblox.client.startup.e.APP_RESTART));
            finish();
            return;
        }
        com.roblox.client.ae.k.b("rbx.main", "onCreate NativeMain.");
        setContentView(o.g.activity_main);
        if (bundle != null) {
            this.v = bundle.getBoolean("BACK_FROM_GAME");
            this.w = bundle.getBoolean("CHOOSE_ADV_SHOWN");
        }
        boolean zA = b.a();
        if (!com.roblox.client.x.c.h() && !zA) {
            com.roblox.client.ae.k.b("rbx.main", "onCreate no AppSettings.");
            startActivityForResult(ActivitySplash.a(this, com.roblox.client.startup.e.SHELL_PROCESS_RESTART_FOR_RESULT), 10102);
        }
        this.s = findViewById(o.f.content_main);
        M();
        this.t = findViewById(o.f.loading_view);
        if (com.roblox.client.x.c.h() || !com.roblox.client.game.b.a().h()) {
            this.t.setVisibility(0);
        } else {
            this.t.setVisibility(8);
        }
        if (!com.roblox.client.x.c.h() && zA) {
            N();
            String strE = com.roblox.client.ad.c.a().e();
            if (!TextUtils.isEmpty(strE) && !com.roblox.client.ae.l.b() && b.X()) {
                com.roblox.client.purchase.google.b.a(this).a(strE);
            }
        }
        NativeGLJavaInterface.setAppShellReloadNeededListener(this);
    }

    private void M() {
        ViewGroup viewGroup = (ViewGroup) this.s.getRootView();
        this.x = o.f.gl_apps_root_view;
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setId(o.f.gl_apps_root_view);
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        com.roblox.client.ae.k.b("rbx.main", "createGlAppsFrame() apps frame created");
        viewGroup.addView(frameLayout, 0);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        x.f7552a = getResources().getDisplayMetrics();
        org.greenrobot.eventbus.c.a().a(this);
        if (com.roblox.client.s.h.a().d()) {
            this.u = RealtimeService.a(this);
        }
        com.roblox.platform.http.g.a().a(com.roblox.client.game.b.a());
        p.b("main");
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.roblox.client.ae.k.b("rbx.main", "onResume: IsLoggedIn = " + com.roblox.client.s.h.a().d());
        if (b.b()) {
            com.roblox.client.ae.k.b("rbx.main", "Alert: needs restart due to settings changed.");
            G();
            return;
        }
        com.roblox.client.locale.f fVarB = com.roblox.client.locale.b.a().b();
        if (this.y != fVarB) {
            this.y = fVarB;
            com.roblox.client.ae.k.b("rbx.main", "onResume: Recreating activity due to Locale change.");
            recreate();
        } else if (com.roblox.client.x.c.h()) {
            Z();
        } else if (b.a()) {
            P();
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.roblox.client.s.e.a().b(this);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        ServiceConnection serviceConnection = this.u;
        if (serviceConnection != null) {
            RealtimeService.a(serviceConnection);
            this.u = null;
        }
        com.roblox.platform.http.g.a().b(com.roblox.client.game.b.a());
        super.onStop();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onDestroy() {
        com.roblox.client.ae.k.b("rbx.main", "onDestroy. isFinishing = " + isFinishing());
        NativeGLJavaInterface.setAppShellReloadNeededListener(null);
        a(this, isFinishing());
        if (com.roblox.client.x.c.h()) {
            this.q = false;
            com.roblox.client.startup.c.a((Context) this).b(this);
        }
        com.roblox.client.app.a aVar = this.z;
        if (aVar != null) {
            aVar.b();
            this.z = null;
        }
        com.roblox.client.app.c cVar = this.A;
        if (cVar != null) {
            cVar.b();
            this.A = null;
        }
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("BACK_FROM_GAME", this.v);
        bundle.putBoolean("CHOOSE_ADV_SHOWN", this.w);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i != -1) {
            if (i == 10102) {
                com.roblox.client.ae.k.b("rbx.main", "onActivityResult from Splash. resultCode=" + i2 + ".");
                if (i2 == 103) {
                    N();
                    return;
                } else {
                    W();
                    return;
                }
            }
            if (i == 10104) {
                this.v = true;
                com.roblox.client.analytics.d.a("Experiment", "SettingsAfterGame", b.a() ? "Loaded" : "NotLoaded");
                return;
            }
            if (i == 10110) {
                if (i2 == -1) {
                    c(intent);
                    return;
                }
                return;
            }
            if (i == 10121) {
                com.roblox.client.app.c cVar = this.A;
                if (cVar != null) {
                    cVar.a(i2, intent);
                    return;
                }
                return;
            }
            if (i != 10124) {
                if (i != 10114) {
                    if (i == 10115) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("onActivityResult from FunCaptcha: code:");
                        sb.append(i2);
                        sb.append(", result:");
                        sb.append(i2 == 101 ? "success" : "dismiss");
                        com.roblox.client.ae.k.b("rbx.main", sb.toString());
                        com.roblox.client.game.b.a().a(new com.roblox.engine.b.a(true));
                        a(new FeatureState("HOME_TAG"));
                        return;
                    }
                    if (i != 10117) {
                        if (i == 10118) {
                            this.w = true;
                            b(i, i2, intent);
                            return;
                        }
                    }
                }
                a(i, i2, intent);
                return;
            }
            if (Build.VERSION.SDK_INT >= 22) {
                com.roblox.client.z.b.a();
            }
            a(true);
            return;
        }
        if (com.roblox.client.m.c.a().cR()) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    private void a(int i, int i2, Intent intent) {
        com.roblox.client.ae.k.b("rbx.main", "On UnivFriendsActivity result. RequestCode: " + i + ". ResultCode: " + i2);
        if (i == 10114) {
            if (i2 == 100 || i2 == 101) {
                c(intent);
                return;
            }
            return;
        }
        if (i == 10117) {
            if (i2 == 100 || i2 == 101) {
                c(intent);
            }
        }
    }

    private void b(int i, int i2, Intent intent) {
        switch (i2) {
            case 100:
                Intent intent2 = new Intent(this, (Class<?>) ActivityUniversalFriends.class);
                intent2.putExtra("TabToShowKey", 1);
                startActivityForResult(intent2, 10114);
                c(new FeatureState("HOME_TAG"));
                break;
            case 101:
                Intent intent3 = new Intent(this, (Class<?>) ActivityUniversalFriends.class);
                intent3.putExtra("TabToShowKey", 2);
                startActivityForResult(intent3, 10114);
                c(new FeatureState("HOME_TAG"));
                break;
            case 102:
                c(new FeatureState("AVATAR_EDITOR_TAG"));
                break;
            case 103:
                c(new FeatureState("GAMES_TAG"));
                break;
            default:
                com.roblox.client.ae.k.b("rbx.main", "ResultCode from Choose-Your-Adventure not recognized: " + i2);
                break;
        }
    }

    private void c(Intent intent) {
        String stringExtra;
        if (intent == null || (stringExtra = intent.getStringExtra("FEATURE_EXTRA")) == null) {
            return;
        }
        if ("CHAT_TAG".equals(stringExtra)) {
            long longExtra = intent.getLongExtra("USER_ID_EXTRA", -1L);
            if (longExtra != -1) {
                b(longExtra);
                return;
            } else {
                a(intent.getLongExtra("CONVERSATION_ID_EXTRA", -1L));
                return;
            }
        }
        if ("PROFILE_TAG".equals(stringExtra)) {
            com.roblox.client.a.a(this, intent.getStringExtra("PATH_EXTRA"), getString(o.j.CommonUI_Features_Label_Profile));
            return;
        }
        if ("SETTINGS_TAG".equals(stringExtra)) {
            com.roblox.client.a.a(this, intent.getStringExtra("PATH_EXTRA"), getString(o.j.CommonUI_Features_Label_Settings));
            return;
        }
        if ("GAME_DETAILS_TAG".equals(stringExtra)) {
            com.roblox.client.a.a(this, intent.getStringExtra("PATH_EXTRA"), getString(o.j.CommonUI_Features_Heading_GameDetails));
        } else if ("AVATAR_EDITOR_TAG".endsWith(stringExtra)) {
            c(new FeatureState("AVATAR_EDITOR_TAG"));
        } else {
            com.roblox.client.a.a(this, intent.getStringExtra("PATH_EXTRA"), com.roblox.client.feature.b.a(this, stringExtra));
        }
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        if (j().e() > 0) {
            Fragment fragmentA = j().a(o.f.content_overlay);
            if (fragmentA instanceof v) {
                v vVar = (v) fragmentA;
                if (vVar.aq() || vVar.at()) {
                    return;
                }
                j().c();
                return;
            }
            j().c();
            return;
        }
        if (U().a()) {
            return;
        }
        n();
    }

    public void n() {
        T();
    }

    private void N() {
        FeatureState featureState;
        com.roblox.client.ae.k.c("rbx.main", "setupMainTabs: tabs-loaded = " + this.q);
        if (this.q) {
            return;
        }
        this.q = true;
        if (O() && !com.roblox.client.ae.l.b()) {
            featureState = new FeatureState("GAMES_TAG");
        } else {
            featureState = new FeatureState("CUSTOM_LUAVIEW_TAG");
        }
        b(featureState);
        if (com.roblox.client.x.c.l() && this.z == null) {
            com.roblox.client.app.a aVar = new com.roblox.client.app.a(this, new Handler(Looper.getMainLooper()));
            this.z = aVar;
            aVar.a();
        }
        if (b.ct() && this.A == null) {
            com.roblox.client.app.c cVar = new com.roblox.client.app.c(this);
            this.A = cVar;
            cVar.a();
        }
    }

    private void b(final FeatureState featureState) {
        com.roblox.client.ae.k.b("rbx.appshell", "loadDataModel()");
        com.roblox.client.game.b.a().a(this);
        com.roblox.client.game.b.a().b(new b.g() { // from class: com.roblox.client.ActivityNativeMain.1
            @Override // com.roblox.client.game.b.g
            public void a(int i) {
                if (i == 0) {
                    com.roblox.client.game.b.a().a(com.roblox.client.game.e.a(ActivityNativeMain.this));
                }
                ActivityNativeMain.this.a(featureState);
            }
        });
    }

    private boolean O() {
        Intent intent = getIntent();
        if (intent != null) {
            return intent.getBooleanExtra("loginAfterSignup", false);
        }
        return false;
    }

    private void P() {
        com.roblox.client.ae.k.b("rbx.main", "internalOnResume:");
        w.a().a(new w.a() { // from class: com.roblox.client.ActivityNativeMain.4
            @Override // com.roblox.client.w.b
            public void a(w.c cVar) {
                if (cVar.b()) {
                    ActivityNativeMain.this.b(false);
                } else if (cVar.a()) {
                    ActivityNativeMain.this.b(true);
                }
            }
        });
        if (b.bA() && com.roblox.client.startup.a.ao()) {
            com.roblox.client.startup.a.a((androidx.fragment.app.c) this);
        }
        if (com.roblox.client.m.c.a().cL() && ((b.cc() || com.roblox.client.s.h.a().c()) && x.c(this))) {
            com.roblox.client.s.h.a().a(this.B);
        }
        com.roblox.client.s.e.a().a((e.b) this);
        if (O() && com.roblox.abtesting.a.a().o() && !this.w) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityChooseYourAdventure.class), 10118);
        }
        if (com.roblox.client.pushnotification.l.a().b() && x.c(this)) {
            if (this.v) {
                this.v = false;
            }
            S();
        }
        if (this.v) {
            Q();
        }
        com.roblox.client.feature.a aVarU = U();
        j().b();
        if (aVarU.b() == null) {
            aVarU.a(new FeatureState("CUSTOM_LUAVIEW_TAG"));
        }
        if (com.roblox.client.routing.a.a().b()) {
            NativeAppBridgeInterface.processInAppLink(com.roblox.client.routing.a.a().c());
        }
    }

    private void Q() {
        R();
        this.v = false;
    }

    private void R() {
        if (!b.S() || com.roblox.client.e.a.b.a().b() < b.M()) {
            return;
        }
        com.roblox.client.b.b.a().a((Activity) this);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void S() {
        com.roblox.client.ae.k.b("rbx.main", "processPushNotification.");
        Bundle bundleC = com.roblox.client.pushnotification.l.a().c();
        if (bundleC == null) {
            return;
        }
        try {
            String string = bundleC.getString("EXTRA_NOTIFICATION_TYPE", "");
            byte b2 = -1;
            switch (string.hashCode()) {
                case 624927928:
                    if (string.equals("FriendRequestAccepted")) {
                        b2 = 2;
                    }
                    break;
                case 929482719:
                    if (string.equals("ChatNewMessage")) {
                        b2 = 3;
                    }
                    break;
                case 1050705701:
                    if (string.equals("PrivateMessageReceived")) {
                        b2 = 4;
                    }
                    break;
                case 1715544492:
                    if (string.equals("DefaultNotification")) {
                        b2 = 0;
                    }
                    break;
                case 1962733298:
                    if (string.equals("FriendRequestReceived")) {
                        b2 = 1;
                    }
                    break;
            }
            if (b2 == 0) {
                com.roblox.client.routing.a.a().a(bundleC.getString("EXTRA_NOTIFICATION_CUSTOM_DATA"));
                return;
            }
            if (b2 == 1 || b2 == 2) {
                b(bundleC);
                return;
            }
            if (b2 == 3) {
                long j = bundleC.getLong("EXTRA_CONVERSATION_ID", -1L);
                if (j != -1) {
                    a(j);
                }
            } else {
                if (b2 != 4) {
                    return;
                }
                a(bundleC);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(Bundle bundle) {
        String strF;
        long j = bundle.getLong("EXTRA_CONVERSATION_ID", -1L);
        if (j == -1) {
            strF = u.T();
        } else {
            strF = u.f(j);
        }
        f(strF);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(android.os.Bundle r14) {
        /*
            r13 = this;
            java.lang.String r0 = "EXTRA_NOTIFICATION_USER_ID"
            r1 = -1
            long r3 = r14.getLong(r0, r1)
            java.lang.String r0 = "EXTRA_NOTIFICATION_TYPE"
            java.lang.String r0 = r14.getString(r0)
            java.lang.String r5 = "EXTRA_STACKED_NOTIFICATION"
            r6 = 0
            boolean r14 = r14.getBoolean(r5, r6)
            r5 = 0
            if (r0 != 0) goto L1d
            r13.finish()
            goto Lae
        L1d:
            java.lang.String r7 = "FriendRequestReceived"
            java.lang.String r8 = "FriendRequestAccepted"
            r9 = 1962733298(0x74fceef2, float:1.6031558E32)
            r10 = 624927928(0x253fa4b8, float:1.6622418E-16)
            r11 = -1
            r12 = 1
            if (r14 != 0) goto L77
            int r14 = r0.hashCode()
            if (r14 == r10) goto L3b
            if (r14 == r9) goto L34
            goto L43
        L34:
            boolean r14 = r0.equals(r7)
            if (r14 == 0) goto L43
            goto L44
        L3b:
            boolean r14 = r0.equals(r8)
            if (r14 == 0) goto L43
            r6 = 1
            goto L44
        L43:
            r6 = -1
        L44:
            if (r6 == 0) goto L60
            if (r6 == r12) goto L4a
            goto Lae
        L4a:
            int r14 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r14 != 0) goto L5b
            com.roblox.client.s.h r14 = com.roblox.client.s.h.a()
            long r0 = r14.b()
            java.lang.String r14 = com.roblox.client.u.e(r0)
            goto L75
        L5b:
            java.lang.String r14 = com.roblox.client.u.c(r3)
            goto L75
        L60:
            int r14 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r14 != 0) goto L71
            com.roblox.client.s.h r14 = com.roblox.client.s.h.a()
            long r0 = r14.b()
            java.lang.String r14 = com.roblox.client.u.d(r0)
            goto L75
        L71:
            java.lang.String r14 = com.roblox.client.u.c(r3)
        L75:
            r5 = r14
            goto Lae
        L77:
            int r14 = r0.hashCode()
            if (r14 == r10) goto L87
            if (r14 == r9) goto L80
            goto L8f
        L80:
            boolean r14 = r0.equals(r7)
            if (r14 == 0) goto L8f
            goto L90
        L87:
            boolean r14 = r0.equals(r8)
            if (r14 == 0) goto L8f
            r6 = 1
            goto L90
        L8f:
            r6 = -1
        L90:
            if (r6 == 0) goto La2
            if (r6 == r12) goto L95
            goto Lae
        L95:
            com.roblox.client.s.h r14 = com.roblox.client.s.h.a()
            long r0 = r14.b()
            java.lang.String r5 = com.roblox.client.u.e(r0)
            goto Lae
        La2:
            com.roblox.client.s.h r14 = com.roblox.client.s.h.a()
            long r0 = r14.b()
            java.lang.String r5 = com.roblox.client.u.d(r0)
        Lae:
            r13.f(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.ActivityNativeMain.b(android.os.Bundle):void");
    }

    private void f(String str) {
        Intent intent = new Intent(this, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", str);
        startActivity(intent);
        overridePendingTransition(o.a.slide_up_short, o.a.stay);
    }

    private void T() {
        new AlertDialog.Builder(this).setMessage(o.j.Application_Leave_Response_LeaveAppConfirmation).setPositiveButton(o.j.Application_Leave_Action_LeaveApp, new DialogInterface.OnClickListener() { // from class: com.roblox.client.ActivityNativeMain.7
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ActivityNativeMain.this.finish();
            }
        }).setNegativeButton(o.j.CommonUI_Controls_Action_Cancel, new DialogInterface.OnClickListener() { // from class: com.roblox.client.ActivityNativeMain.6
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.ActivityNativeMain.5
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static void a(ActivityNativeMain activityNativeMain, boolean z) {
        com.roblox.client.game.a aVarB = activityNativeMain.U().b();
        if (aVarB != null && z) {
            activityNativeMain.j().a().a(aVarB).d();
        }
        com.roblox.client.ae.k.c("rbx.appshell", "removeGlApp() clearing app shell");
        com.roblox.client.game.b.a().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.roblox.client.feature.a U() {
        if (this.r == null) {
            this.r = new com.roblox.client.feature.a(this, this.x);
        }
        return this.r;
    }

    private boolean V() {
        if (j().e() <= 0) {
            return false;
        }
        j().c();
        return true;
    }

    public void a(FeatureState featureState) {
        com.roblox.client.ae.k.b("rbx.main", "ANM.showFeature: " + featureState.a());
        U().a(featureState);
    }

    @Override // com.roblox.client.feature.c
    public void a(int i, Fragment fragment, String str) {
        if (fragment != null) {
            androidx.fragment.app.k kVarA = j().a();
            if (!fragment.x()) {
                kVarA.a(i, fragment, str);
            } else {
                kVarA.c(fragment);
            }
            kVarA.d();
        }
    }

    @Override // com.roblox.client.feature.c
    public Fragment a(String str) {
        return j().a(str);
    }

    private void a(long j) {
        com.roblox.client.ae.k.c("rbx.main", "navigateToConversation() conversation:" + j);
        FeatureState featureState = new FeatureState("CHAT_TAG");
        featureState.a("CHAT_CONVERSATION_ID", j);
        c(featureState);
    }

    private void b(long j) {
        com.roblox.client.ae.k.c("rbx.main", "navigateToUserConversation() user:" + j);
        FeatureState featureState = new FeatureState("CHAT_TAG");
        featureState.a("USER_ID_EXTRA", j);
        c(featureState);
    }

    private void a(String str, String str2) {
        com.roblox.client.a.a(this, com.roblox.client.ae.d.e(str2), str);
    }

    private void c(FeatureState featureState) {
        com.roblox.client.ae.k.a("rbx.main", "navigateToFeature:" + featureState.a() + " bundle:" + featureState.b());
        a(featureState);
    }

    private void W() {
        finish();
        startActivity(l.a().a((Context) this));
    }

    private static class a extends AsyncTask<Void, Void, Boolean> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakReference<ActivityNativeMain> f5559a;

        a(ActivityNativeMain activityNativeMain) {
            this.f5559a = new WeakReference<>(activityNativeMain);
        }

        @Override // android.os.AsyncTask
        protected void onPreExecute() {
            ActivityNativeMain activityNativeMain = this.f5559a.get();
            if (activityNativeMain == null || activityNativeMain.t == null) {
                return;
            }
            activityNativeMain.t.setVisibility(0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            com.roblox.client.game.a aVarB;
            Surface surfaceAr;
            ActivityNativeMain activityNativeMain = this.f5559a.get();
            if (activityNativeMain != null && (aVarB = activityNativeMain.U().b()) != null && (surfaceAr = aVarB.ar()) != null) {
                com.roblox.client.s.c.c();
                com.roblox.client.game.b.a().a(activityNativeMain, surfaceAr);
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            ActivityNativeMain activityNativeMain;
            if (bool.booleanValue() || (activityNativeMain = this.f5559a.get()) == null || activityNativeMain.t == null) {
                return;
            }
            activityNativeMain.t.setVisibility(8);
        }
    }

    @Override // com.roblox.client.s.e.b
    public void a(int i, Bundle bundle) {
        if (i != 2) {
            if (i != 101) {
                return;
            }
            com.roblox.client.a.a(com.roblox.client.game.h.a(bundle.getBundle("game_init_params")), this);
        } else {
            com.roblox.client.ae.k.b("rbx.main", "ANM.handleNotification() Logout event...");
            NativeGLInterface.nativeAppBridgeV2UserDidLogout();
            if (com.roblox.client.x.c.j()) {
                new a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            } else {
                a(com.roblox.client.s.c.a(bundle));
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onBackButtonNotConsumedEvent(com.roblox.client.l.c cVar) {
        n();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        String str;
        com.roblox.client.ae.k.c("rbx.main", "NavigateToFeature: " + jVar.f6425a);
        if ("PROFILE_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, jVar.f6426b, o.j.CommonUI_Features_Label_Profile, jVar.f6427c, jVar.c());
            return;
        }
        if ("GAME_DETAILS_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, u.d() + "games/" + jVar.f6426b, o.j.CommonUI_Features_Heading_GameDetails, jVar.f6427c, jVar.c());
            return;
        }
        if ("CUSTOM_WEBVIEW_TAG".equals(jVar.f6425a) || "YOUTUBE_TAG".equals(jVar.f6425a)) {
            JSONObject jSONObject = null;
            try {
                jSONObject = new JSONObject(jVar.a());
            } catch (JSONException unused) {
                com.roblox.client.ae.k.d("rbx.main", "Exception parsing data onNavigateToFeatureEvent CUSTOM_WEBVIEW_TAG");
            }
            if (jSONObject != null) {
                String strOptString = jSONObject.optString("title");
                String strOptString2 = jSONObject.optString("url");
                if (!strOptString2.isEmpty()) {
                    if ("YOUTUBE_TAG".equals(jVar.f6425a) && !b.bV()) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(strOptString2));
                        startActivity(intent);
                        return;
                    } else if (!jVar.f6427c) {
                        com.roblox.client.a.a((Activity) this, strOptString2, strOptString, false, true);
                        return;
                    } else {
                        com.roblox.client.a.a(this, strOptString2, strOptString, jSONObject.optJSONObject("searchParams"));
                        return;
                    }
                }
                com.roblox.client.ae.k.d("rbx.main", "URL must not be empty onNavigateToFeatureEvent CUSTOM_WEBVIEW_TAG");
                return;
            }
            return;
        }
        if ("SOCIAL_MEDIA_TAG".equals(jVar.f6425a)) {
            new com.roblox.client.z.a("rbx.main").a(this, jVar.a());
            return;
        }
        if ("MY_FEED_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, u.d() + "feeds/inapp", o.j.CommonUI_Features_Label_MyFeed, jVar.f6427c, jVar.c());
            return;
        }
        if ("SEARCH_GAMES_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, u.f(jVar.f6426b), o.j.CommonUI_Features_Label_SearchGames, jVar.f6427c, jVar.c());
            return;
        }
        if ("GAMES_SEE_ALL_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, u.i(jVar.f6426b), o.j.CommonUI_Features_Label_Game, jVar.f6427c, jVar.c());
            return;
        }
        if ("ABUSE_REPORT_TAG".equals(jVar.f6425a)) {
            com.roblox.client.a.a(this, jVar.f6426b, jVar.c());
            return;
        }
        if ("UNIVERSAL_FRIENDS_TAG".equals(jVar.f6425a)) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityUniversalFriends.class), 10114);
            return;
        }
        if ("ANIMATED_ASSET_DETAILS_TAG".equals(jVar.f6425a)) {
            if (jVar.f6426b != null) {
                str = u.d() + "catalog/" + jVar.f6426b;
            } else {
                str = u.d() + "games/";
            }
            com.roblox.client.a.a(this, str, getString(o.j.CommonUI_Features_Label_ViewDetails), jVar.f6427c, true, false);
            return;
        }
        if ("FRIEND_FINDER_TAG".equals(jVar.f6425a)) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityUniversalFriends.class), 10117);
            return;
        }
        if ("CAPTCHA_SUCCESS_TAG".equals(jVar.f6425a)) {
            com.roblox.client.ae.k.b("rbx.main", "NavigateToFeature: Received 'CAPTCHA_SUCCESS' tag. Do nothing for now.");
        } else if ("CAPTCHA_TAG".equals(jVar.f6425a)) {
            g(jVar.a());
        } else {
            a(com.roblox.client.feature.b.a(this, jVar.f6425a), jVar.f6426b);
        }
    }

    private void X() {
        this.s.post(new Runnable() { // from class: com.roblox.client.ActivityNativeMain.8
            @Override // java.lang.Runnable
            public void run() {
                ActivityNativeMain activityNativeMain = ActivityNativeMain.this;
                x.a(activityNativeMain, activityNativeMain.s);
            }
        });
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.l.i iVar) {
        if (iVar.f6424b != -1) {
            b(iVar.f6424b);
        } else {
            a(iVar.f6423a);
        }
    }

    private String Y() {
        return "OVERLAY_" + j().e();
    }

    @Override // com.roblox.client.q
    protected com.roblox.client.p.b o() {
        return new com.roblox.client.p.d();
    }

    private void Z() {
        com.roblox.client.ae.k.b("rbx.main", "startup:");
        com.roblox.client.startup.c.a((Context) this).d();
    }

    private void g(String str) {
        JSONObject jSONObject;
        CaptchaConfig signUpCaptchaConfig;
        LoginCaptchaConfig.a aVar;
        try {
            jSONObject = new JSONObject(str);
        } catch (JSONException unused) {
            com.roblox.client.ae.k.d("rbx.main", "openFunCaptchaActivity: Exception parsing json data.");
            jSONObject = null;
        }
        if (jSONObject != null) {
            if (jSONObject.optString("captchaType").equals("login")) {
                String strOptString = jSONObject.optString("cvalueType");
                String strOptString2 = jSONObject.optString("cvalue");
                byte b2 = -1;
                int iHashCode = strOptString.hashCode();
                if (iHashCode != -612351174) {
                    if (iHashCode != -265713450) {
                        if (iHashCode == 96619420 && strOptString.equals("email")) {
                            b2 = 1;
                        }
                    } else if (strOptString.equals("username")) {
                        b2 = 0;
                    }
                } else if (strOptString.equals("phone_number")) {
                    b2 = 2;
                }
                if (b2 == 0) {
                    aVar = LoginCaptchaConfig.a.USERNAME;
                } else if (b2 == 1) {
                    aVar = LoginCaptchaConfig.a.EMAIL;
                } else if (b2 == 2) {
                    aVar = LoginCaptchaConfig.a.PHONE_NUMBER;
                } else {
                    throw new RuntimeException("Unsupported credential Type: " + strOptString + ".");
                }
                signUpCaptchaConfig = new LoginCaptchaConfig(aVar, strOptString2);
            } else {
                signUpCaptchaConfig = new SignUpCaptchaConfig();
            }
            com.roblox.client.ae.k.b("rbx.main", "openFunCaptchaActivity: config = " + signUpCaptchaConfig);
            startActivityForResult(ActivityFunCaptcha.a(this, signUpCaptchaConfig), 10115);
        }
    }

    @Override // com.roblox.client.startup.d
    public void q() {
        com.roblox.client.ae.k.b("rbx.main", "updateViewAppSettingsLoaded:");
        N();
    }

    @Override // com.roblox.client.startup.d
    public void r() {
        com.roblox.client.ae.k.b("rbx.main", "showRetryUI:");
        if (K()) {
            d(o.j.CommonUI_Messages_Response_ConnectionError);
        }
    }

    @Override // com.roblox.client.startup.d
    public void u() {
        com.roblox.client.ae.k.b("rbx.main", "navigateToLandingScreen:");
        Intent intentA = l.a().a((Context) this);
        intentA.putExtra("send_app_input_focus_to_lua", true);
        startActivity(intentA);
        finish();
    }

    @Override // com.roblox.client.startup.d
    public void v() {
        com.roblox.client.ae.k.b("rbx.main", "navigateToMainScreen: IsLoggedIn = " + com.roblox.client.s.h.a().d());
        N();
        if (K() && com.roblox.client.s.h.a().d()) {
            P();
            if (this.u == null) {
                this.u = RealtimeService.a(this);
            }
        }
    }

    @Override // com.roblox.client.game.a.d
    public void b(String str) {
        com.roblox.client.ae.k.b("rbx.main", "onAppReady: " + str);
        View view = this.t;
        if (view != null && view.getVisibility() != 8) {
            this.t.post(new Runnable() { // from class: com.roblox.client.ActivityNativeMain.9
                @Override // java.lang.Runnable
                public void run() {
                    ActivityNativeMain.this.t.setVisibility(8);
                }
            });
        }
        if (com.roblox.client.x.c.h() && ("Landing".equals(str) || "Home".equals(str))) {
            w.a().a(new w.a() { // from class: com.roblox.client.ActivityNativeMain.10
                @Override // com.roblox.client.w.b
                public void a(w.c cVar) {
                    if (cVar.b()) {
                        ActivityNativeMain.this.b(false);
                    } else if (cVar.a()) {
                        ActivityNativeMain.this.b(true);
                    }
                }
            });
        } else if (com.roblox.client.x.c.h() && this.A != null && "Login".equals(str)) {
            this.A.c();
        }
        if ("Home".equals(str) && x()) {
            com.roblox.client.a.a(this);
        }
    }

    @Override // com.roblox.client.game.a.d
    public void w() {
        com.roblox.client.ae.k.b("rbx.main", "onAppStarted: ");
        if (K() && com.roblox.client.s.c.c()) {
            new a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // com.roblox.client.startup.b.a
    public void y() {
        aa();
        Z();
    }

    @Override // com.roblox.client.startup.b.a
    public void z() {
        aa();
        Z();
    }

    private void d(int i) {
        com.roblox.client.ae.k.b("rbx.main", "showRetryFragment: ");
        com.roblox.client.startup.b bVarAb = ab();
        if (bVarAb != null) {
            com.roblox.client.ae.k.b("rbx.main", "showRetryFragment: Found an existing Retry fragment.");
            bVarAb.a((CharSequence) getString(i));
        } else {
            com.roblox.client.ae.k.b("rbx.main", "showRetryFragment: Create a new FragmentRetry...");
            com.roblox.client.startup.b.d(i).a(j(), "FragmentRetry");
        }
    }

    private void aa() {
        com.roblox.client.startup.b bVarAb = ab();
        if (bVarAb != null) {
            com.roblox.client.ae.k.b("rbx.main", "Dismiss the existing Retry UI...");
            bVarAb.b();
        }
    }

    private com.roblox.client.startup.b ab() {
        Fragment fragmentA = j().a("FragmentRetry");
        if (fragmentA instanceof com.roblox.client.startup.b) {
            return (com.roblox.client.startup.b) fragmentA;
        }
        return null;
    }

    @Override // com.roblox.client.app.a.InterfaceC0126a
    public void a(com.roblox.client.app.d dVar) {
        X();
        Fragment tVar = dVar.f5729d != null && dVar.f5729d.booleanValue() ? new t() : new com.roblox.client.n.c();
        tVar.g().a(new AppWebViewLifecycleObserver());
        tVar.g().a(new AppInputFocusLifecycleObserver());
        Bundle bundle = new Bundle();
        bundle.putString("DEFAULT_URL", dVar.f5726a);
        bundle.putBoolean("USE_APP_HYBRID", true);
        bundle.putBoolean("VISIBLE", dVar.f5728c.booleanValue());
        bundle.putBoolean("BACK_NAVIGATION_DISABLED", dVar.f5730e.booleanValue());
        bundle.putString("TITLE_STRING", dVar.f5727b);
        bundle.putBoolean("HAS_PARENT", true);
        bundle.putBoolean("HIDE_ACCESSORY_BUTTONS", true);
        tVar.g(bundle);
        androidx.fragment.app.k kVarA = j().a();
        kVarA.a(o.f.content_overlay, tVar, Y());
        kVarA.a((String) null);
        kVarA.d();
    }

    @Override // com.roblox.client.app.a.InterfaceC0126a
    public void b(com.roblox.client.app.d dVar) {
        if (j().e() > 0) {
            Fragment fragmentA = j().a(o.f.content_overlay);
            if (fragmentA instanceof v) {
                ((v) fragmentA).a(dVar);
            }
        }
    }

    @Override // com.roblox.client.app.a.InterfaceC0126a
    public void A() {
        V();
    }

    @Override // com.roblox.client.z.d
    public void c(String str) {
        if (TextUtils.isEmpty(str)) {
            com.roblox.client.ae.k.c("rbx.main", "Share data is empty");
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getString("url");
            String string2 = jSONObject.getString("context");
            if (TextUtils.isEmpty(string)) {
                return;
            }
            com.roblox.client.z.b.a(string2);
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", string);
            PendingIntent broadcast = PendingIntent.getBroadcast(this, 0, new Intent(this, (Class<?>) ShareAppChosenReceiver.class), 134217728);
            a(false);
            if (Build.VERSION.SDK_INT >= 22) {
                startActivityForResult(Intent.createChooser(intent, null, broadcast.getIntentSender()), 10124);
            } else {
                startActivityForResult(Intent.createChooser(intent, null), 10124);
            }
        } catch (JSONException unused) {
            com.roblox.client.ae.k.c("rbx.main", "Error parsing share data.");
        }
    }

    protected void a(boolean z) {
        com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(z);
        NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
    }

    @Override // com.roblox.engine.jni.NativeGLJavaInterface.OnAppShellReloadNeededListener
    public void B() {
        if (isFinishing()) {
            return;
        }
        runOnUiThread(new Runnable() { // from class: com.roblox.client.ActivityNativeMain.2
            @Override // java.lang.Runnable
            public void run() {
                if (ActivityNativeMain.this.isFinishing()) {
                    return;
                }
                com.roblox.client.s.c.b();
                new a(this).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
            }
        });
    }
}
