package com.roblox.client;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Debug;
import android.os.Process;
import android.support.v4.app.Fragment;
import android.support.v7.app.b;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TabWidget;
import android.widget.TextView;
import android.widget.Toast;
import com.roblox.client.components.e;
import com.roblox.client.contacts.ActivityContacts;
import com.roblox.client.e.aa;
import com.roblox.client.e.q;
import com.roblox.client.e.t;
import com.roblox.client.e.v;
import com.roblox.client.e.x;
import com.roblox.client.e.y;
import com.roblox.client.feature.FeatureState;
import com.roblox.client.h.k;
import com.roblox.client.h.l;
import com.roblox.client.h.r;
import com.roblox.client.i.e;
import com.roblox.client.landing.ActivityStartMVP;
import com.roblox.client.login.ActivityLogin;
import com.roblox.client.login.mvp.ActivityLoginMVP;
import com.roblox.client.o;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.signup.ActivitySignUp;
import com.roblox.client.startup.ActivitySplash;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ActivityNativeMain extends k implements TabHost.OnTabChangeListener, com.roblox.client.components.j, com.roblox.client.feature.c, e.c {
    private int A;
    private boolean m;
    private FeatureState p;
    private View t;
    private ServiceConnection u;
    private com.roblox.client.components.e v;
    private String w;
    private boolean x;
    private boolean y;
    private long z;
    private HashMap<String, com.roblox.client.feature.l> q = new HashMap<>();
    private int r = R.drawable.icon_more2;
    private int s = R.drawable.icon_more2_on;
    private boolean B = false;
    private boolean C = false;
    private final com.roblox.client.http.m D = new com.roblox.client.http.m() { // from class: com.roblox.client.ActivityNativeMain.3
        @Override // com.roblox.client.http.m
        public void a(com.roblox.client.http.j jVar) {
            if (jVar.b() == 401) {
                com.roblox.client.startup.b.a(ActivityNativeMain.this).a((Context) ActivityNativeMain.this, false);
            }
        }
    };

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        com.roblox.client.util.g.b("rbx.main", "onCreate NativeMain.");
        if (RobloxSettings.isPhone()) {
            setContentView(R.layout.activity_main_phone);
        } else {
            setContentView(R.layout.activity_main);
        }
        if (bundle != null) {
            this.p = (FeatureState) bundle.getParcelable("CURRENT_STATE_BUNDLE_KEY");
            this.x = bundle.getBoolean("BACK_FROM_GAME");
            this.y = bundle.getBoolean("GUEST_MODE_KEY");
            this.z = bundle.getLong("LAST_PLACE_ID_CREATE_TIME");
            if (this.p != null) {
                com.roblox.client.util.g.b("rbx.main", "ActiveTab=" + this.p.a() + ", bundleSize:" + this.p.c());
            }
        } else {
            this.y = getIntent().getBooleanExtra("GUEST_MODE_KEY", false);
            com.roblox.client.util.g.b("rbx.main", "IsGuestMode=" + this.y + ".");
        }
        boolean zA = b.a();
        if (!zA) {
            com.roblox.client.util.g.b("rbx.main", "onCreate no AppSettings.");
            startActivityForResult(ActivitySplash.a(this, com.roblox.client.startup.e.SHELL_PROCESS_RESTART_FOR_RESULT), 10102);
        }
        this.t = findViewById(R.id.content_main);
        v();
        this.v = new com.roblox.client.components.e(this, android.R.id.tabhost);
        if (zA) {
            w();
            String strF = com.roblox.client.q.d.a().f();
            if (!this.y && !TextUtils.isEmpty(strF) && b.ay()) {
                com.roblox.client.purchase.google.b.a(this).a(strF);
            }
        }
        this.t.getViewTreeObserver().addOnGlobalLayoutListener(new a());
        getWindow().setSoftInputMode(16);
    }

    private void v() {
        View rootView = this.t.getRootView();
        if ((rootView instanceof ViewGroup) && rootView != this.t) {
            this.A = R.id.gl_apps_root_view;
            FrameLayout frameLayout = new FrameLayout(this);
            frameLayout.setId(R.id.gl_apps_root_view);
            frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            com.roblox.client.util.g.b("rbx.main", "createGlAppsFrame() apps frame created");
            ((ViewGroup) rootView).addView(frameLayout, 0);
            return;
        }
        com.roblox.client.util.g.e("rbx.main", "createGlAppsFrame() using alternate root view. Bad!");
        this.A = R.id.content_main_no_margin;
    }

    @Override // com.roblox.client.k
    protected boolean j() {
        return true;
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        p.f7515a = getResources().getDisplayMetrics();
        org.greenrobot.eventbus.c.a().a(this);
        this.u = RealtimeService.a(this);
        i.b("main");
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (b.b()) {
            com.roblox.client.util.g.b("rbx.main", "Alert: needs restart due to settings changed.");
            r();
        } else if (b.a()) {
            A();
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onPause() {
        super.onPause();
        com.roblox.client.i.e.a().b((e.c) this);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        RealtimeService.a(this.u);
        super.onStop();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onDestroy() {
        com.roblox.client.util.g.b("rbx.main", "onDestroy. isFinishing = " + isFinishing());
        a(this, isFinishing());
        super.onDestroy();
    }

    @Override // android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        com.roblox.client.feature.l lVarN = n();
        if (lVarN != null) {
            FeatureState featureStateI = lVarN.i();
            bundle.putParcelable("CURRENT_STATE_BUNDLE_KEY", featureStateI);
            com.roblox.client.util.g.c("rbx.main", "onSaveInstanceState tag: " + featureStateI.a() + " bundleSize:" + featureStateI.c());
        }
        bundle.putBoolean("BACK_FROM_GAME", this.x);
        bundle.putBoolean("GUEST_MODE_KEY", this.y);
        bundle.putLong("LAST_PLACE_ID_CREATE_TIME", this.z);
        super.onSaveInstanceState(bundle);
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra;
        if (i == 10110) {
            if (i2 == -1 && intent != null && (stringExtra = intent.getStringExtra("FEATURE_EXTRA")) != null) {
                if ("CHAT_TAG".equals(stringExtra)) {
                    long longExtra = intent.getLongExtra("USER_ID_EXTRA", -1L);
                    if (longExtra != -1) {
                        b(longExtra, true);
                        return;
                    } else {
                        a(intent.getLongExtra("CONVERSATION_ID_EXTRA", -1L), true);
                        return;
                    }
                }
                if ("PROFILE_TAG".equals(stringExtra)) {
                    b(this, intent.getStringExtra("PATH_EXTRA"), getString(R.string.CommonUI_Features_Label_Profile));
                    return;
                }
                if ("SETTINGS_TAG".equals(stringExtra)) {
                    b(this, intent.getStringExtra("PATH_EXTRA"), getString(R.string.CommonUI_Features_Label_Settings));
                    return;
                }
                String stringExtra2 = intent.getStringExtra("PATH_EXTRA");
                if (X()) {
                    a(stringExtra, stringExtra2);
                    return;
                } else {
                    b(this, stringExtra2, getString(R.string.CommonUI_Features_Heading_Roblox_NormalCase));
                    return;
                }
            }
            return;
        }
        if (i == 10102) {
            com.roblox.client.util.g.b("rbx.main", "onActivityResult from Splash. resultCode=" + i2 + ".");
            if (i2 == 103 || (i2 == 102 && this.y)) {
                w();
                return;
            } else {
                V();
                return;
            }
        }
        if (i == 10104) {
            if (!com.roblox.client.locale.a.a().g()) {
                recreate();
            }
            this.x = true;
            com.roblox.client.b.c.a("Experiment", "SettingsAfterGame", b.a() ? "Loaded" : "NotLoaded");
            return;
        }
        if (i == 10109) {
            switch (i2) {
                case 102:
                    W();
                    break;
                case 103:
                    F();
                    break;
            }
            return;
        }
        if (i == 10111) {
            switch (i2) {
                case 104:
                    W();
                    break;
                case 105:
                    m();
                    break;
            }
            return;
        }
        if (i == 10112) {
            com.roblox.client.util.g.b("rbx.main", "Back from friends finder.");
            if (b.bB()) {
                E();
                return;
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        com.roblox.client.feature.l lVarN = n();
        if (lVarN != null) {
            if (!lVarN.d()) {
                if (g("MORE_TAG") && !f("MORE_TAG")) {
                    b(new FeatureState("MORE_TAG"));
                    return;
                }
            } else {
                return;
            }
        }
        k();
    }

    public void k() {
        if (!com.roblox.client.i.h.a().d()) {
            V();
        } else {
            S();
        }
    }

    private void w() {
        FeatureState featureState;
        com.roblox.client.util.g.c("rbx.main", "setupMainTabs: tabs-loaded = " + this.m);
        if (this.m) {
            if (this.y && com.roblox.client.i.h.a().d()) {
                com.roblox.client.util.g.c("rbx.main", "setupMainTabs: guest => logged-in: guest-requested-tab = " + this.w);
                this.y = false;
                e("GAMES_TAG").v_();
                if (this.w != null) {
                    this.v.c(this.w);
                    this.w = null;
                }
                org.greenrobot.eventbus.c.a().c(new y());
                return;
            }
            return;
        }
        this.m = true;
        com.roblox.client.util.g.b("rbx.main", "Setting up the main tabs.");
        this.v.f();
        this.v.a();
        I();
        J();
        this.v.a((TabHost.OnTabChangeListener) this);
        this.v.a((com.roblox.client.components.j) this);
        if (this.p != null) {
            com.roblox.client.util.g.b("rbx.main", "Restoring saved instance.");
            featureState = this.p;
        } else if (!com.roblox.client.i.h.a().d() || y()) {
            featureState = new FeatureState("GAMES_TAG");
        } else {
            featureState = new FeatureState("HOME_TAG");
        }
        if (this.v.c(featureState.a()) == -1) {
            this.v.c("MORE_TAG");
        }
        if (!(e(featureState.a()) instanceof com.roblox.client.feature.g)) {
            x();
        }
        c(featureState);
        this.v.b();
        z();
        if (com.roblox.client.q.d.a().h().b() > 0) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.k(new k.a() { // from class: com.roblox.client.ActivityNativeMain.1
                @Override // com.roblox.client.h.k.a
                public void a() {
                    ActivityNativeMain.this.z();
                }
            }));
        }
        if (b.bF()) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.l(new l.a() { // from class: com.roblox.client.ActivityNativeMain.2
                @Override // com.roblox.client.h.l.a
                public void a() {
                    ActivityNativeMain.this.K();
                }
            }));
        }
    }

    private void x() {
        String str;
        if (b.bR()) {
            if (!com.roblox.client.n.a.a()) {
                str = null;
            } else {
                str = "CHAT_TAG";
            }
            if (str != null) {
                com.roblox.client.feature.l lVarE = e(str);
                if ((lVarE instanceof com.roblox.client.feature.g) && ((com.roblox.client.feature.g) lVarE).h() == null) {
                    FeatureState featureState = new FeatureState(str);
                    featureState.a("Preloading", true);
                    lVarE.a(featureState);
                }
            }
        }
    }

    private boolean y() {
        Intent intent = getIntent();
        if (intent != null) {
            return intent.getBooleanExtra("loginAfterSignup", false);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        int i;
        com.roblox.client.util.g.a("rbx.main", "ANM.updateMoreTabIcons() email_notif:" + RobloxSettings.isEmailNotificationEnabled() + " email:" + com.roblox.client.q.d.a().d().isEmpty() + " pass_notif:" + RobloxSettings.isPasswordNotificationEnabled());
        if ((RobloxSettings.isEmailNotificationEnabled() && com.roblox.client.q.d.a().d().isEmpty()) || RobloxSettings.isPasswordNotificationEnabled()) {
            this.r = R.drawable.icon_more2_notification;
            this.s = R.drawable.icon_more2_on_notification;
        } else {
            this.r = R.drawable.icon_more2;
            this.s = R.drawable.icon_more2_on;
        }
        e.a aVarC = this.v.c();
        if (aVarC != null && "MORE_TAG".equals(aVarC.a())) {
            i = this.s;
        } else {
            i = this.r;
        }
        e.a aVarB = this.v.b("MORE_TAG");
        if (aVarB != null) {
            aVarB.a(this.r, this.s);
            aVarB.c().setImageResource(i);
        }
    }

    private void A() {
        com.roblox.client.util.g.b("rbx.main", "ActivityNativeMain.internalOnResume()");
        com.roblox.client.q.d.a().f();
        o.a().a(new o.a() { // from class: com.roblox.client.ActivityNativeMain.4
            @Override // com.roblox.client.o.b
            public void a(o.c cVar) {
                if (o.c.Recommended == cVar) {
                    ActivityNativeMain.this.b(false);
                } else if (o.c.Required == cVar) {
                    ActivityNativeMain.this.b(true);
                }
            }
        });
        if (com.roblox.client.i.h.a().c() && p.e(this)) {
            com.roblox.client.i.h.a().a(this.D);
        }
        com.roblox.client.i.e.a().a((e.c) this);
        if (this.x) {
            B();
        }
        if (b.B()) {
            com.roblox.client.i.b.d().b((Activity) this);
        }
        Intent intent = getIntent();
        com.roblox.client.game.a aVarC = c(intent);
        if (aVarC != null) {
            com.roblox.client.util.g.b("rbx.main", "internalOnResume: Start a game with place ID: " + aVarC.a());
            a(aVarC, this);
        }
        if (d(intent) && p.e(this)) {
            e(intent);
        }
        com.roblox.client.http.o.a();
        e(com.roblox.client.chat.a.a.a().f());
        if (b.f()) {
            com.roblox.client.i.g.a().a(new r());
        }
        com.roblox.client.i.g.a().a(new com.roblox.client.h.p());
        if (f("CHAT_TAG") && !com.roblox.client.chat.a.a.a().h()) {
            ((com.roblox.client.feature.a) e(this.p.a())).a(false);
        }
        com.roblox.client.feature.l lVarN = n();
        if (lVarN instanceof com.roblox.client.feature.g) {
            e().b();
            if (((com.roblox.client.feature.g) lVarN).h() == null) {
                lVarN.a(new FeatureState(lVarN.j()));
                c(true);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void B() {
        /*
            r10 = this;
            r2 = -1
            r5 = 1
            r4 = 0
            long r0 = r10.C()
            r6 = 7
            int r0 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r0 > 0) goto L18
            java.lang.String r0 = "GAMES_TAG"
            java.lang.String r1 = "games"
            r10.a(r0, r1)
            r10.c(r5)
        L18:
            boolean r0 = r10.y
            if (r0 == 0) goto L4d
            long r0 = r10.H()
            r6 = 0
            int r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
            if (r6 <= 0) goto L4b
            long r6 = java.lang.System.currentTimeMillis()
            long r0 = r6 - r0
        L2c:
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS
            long r6 = r6.toDays(r0)
            r8 = 1
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 > 0) goto L3c
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 != 0) goto L4d
        L3c:
            r10.l()
            r0 = r5
        L40:
            if (r0 != 0) goto L45
            r10.D()
        L45:
            r10.x()
            r10.x = r4
            return
        L4b:
            r0 = r2
            goto L2c
        L4d:
            r0 = r4
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.ActivityNativeMain.B():void");
    }

    private long C() {
        return TimeUnit.MILLISECONDS.toDays(System.currentTimeMillis() - com.roblox.client.i.c.a().b(this));
    }

    private com.roblox.client.game.a c(Intent intent) {
        com.roblox.client.game.a aVarA;
        if (intent != null && intent.getBooleanExtra("launchWithProtocol", false) && (aVarA = com.roblox.client.game.a.a(intent.getBundleExtra("game_init_params"))) != null) {
            long longExtra = intent.getLongExtra("roblox_createTime", 0L);
            if (longExtra > this.z) {
                this.z = longExtra;
                return aVarA;
            }
        }
        return null;
    }

    private void D() {
        if (b.at()) {
            int size = com.roblox.client.chat.a.n.a().b().size();
            if (!this.y && size >= b.an()) {
                com.roblox.client.c.a.a().a((Activity) this);
            }
        }
    }

    private void E() {
        a(this.p.a(), "friends?contactupsell=cff");
    }

    private void F() {
        i.b("nativeMain", "login");
        if (b.j()) {
            com.roblox.client.util.g.b("rbx.main", "showLoginDialog: Launch Login MVP activity...");
            ActivityLoginMVP.a((Activity) this);
        } else {
            com.roblox.client.util.g.b("rbx.main", "showLoginDialog: Launch Login activity...");
            ActivityLogin.a(this);
        }
    }

    public void l() {
        G();
        DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: com.roblox.client.ActivityNativeMain.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case -2:
                        dialogInterface.dismiss();
                        break;
                    case -1:
                        ActivityNativeMain.this.w = null;
                        ActivityNativeMain.this.m();
                        break;
                }
            }
        };
        android.support.v7.app.b bVarB = new b.a(this).a(R.string.Authentication_SignUp_Response_SignUpPopUpSignUpForAFreeAccount).b(R.string.Authentication_SignUp_Response_SignUpPopUpCreateAnAccountOnRoblox).a(R.string.Authentication_SignUp_Action_SignUp, onClickListener).b(R.string.Authentication_SignUp_Action_SignUpPopUpNoThanks, onClickListener).a(false).b();
        bVarB.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.roblox.client.ActivityNativeMain.6
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                Button buttonA = ((android.support.v7.app.b) dialogInterface).a(-2);
                Button buttonA2 = ((android.support.v7.app.b) dialogInterface).a(-1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 2.0f);
                buttonA.setLayoutParams(layoutParams);
                buttonA2.setLayoutParams(layoutParams);
                buttonA.invalidate();
                buttonA2.invalidate();
            }
        });
        bVarB.show();
    }

    private void G() {
        RobloxSettings.getKeyValues().edit().putLong("saw_signup_pop_time", System.currentTimeMillis()).apply();
    }

    private long H() {
        return RobloxSettings.getKeyValues().getLong("saw_signup_pop_time", -1L);
    }

    private boolean d(Intent intent) {
        return (intent == null || intent.getStringExtra("EXTRA_NOTIFICATION_TYPE") == null) ? false : true;
    }

    private void e(Intent intent) {
        try {
            switch (intent.getStringExtra("EXTRA_NOTIFICATION_TYPE")) {
                case "FriendRequestReceived":
                    g(intent);
                    break;
                case "FriendRequestAccepted":
                    g(intent);
                    break;
                case "ChatNewMessage":
                    long longExtra = intent.getLongExtra("EXTRA_CONVERSATION_ID", -1L);
                    if (longExtra != -1) {
                        a(longExtra, true);
                        break;
                    }
                    break;
                case "PrivateMessageReceived":
                    f(intent);
                    break;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void f(Intent intent) {
        String strPrivateMessageUrl;
        long longExtra = intent.getLongExtra("EXTRA_CONVERSATION_ID", -1L);
        if (longExtra == -1) {
            strPrivateMessageUrl = RobloxSettings.messageInboxUrl();
        } else {
            strPrivateMessageUrl = RobloxSettings.privateMessageUrl(longExtra);
        }
        d(strPrivateMessageUrl);
    }

    private void g(Intent intent) {
        String userFriendsUrl = null;
        long longExtra = intent.getLongExtra("EXTRA_NOTIFICATION_USER_ID", -1L);
        String stringExtra = intent.getStringExtra("EXTRA_NOTIFICATION_TYPE");
        boolean booleanExtra = intent.getBooleanExtra("EXTRA_STACKED_NOTIFICATION", false);
        if (stringExtra == null) {
            finish();
        } else if (!booleanExtra) {
            switch (stringExtra) {
                case "FriendRequestReceived":
                    if (longExtra == -1) {
                        userFriendsUrl = RobloxSettings.getUserFriendRequestsUrl(com.roblox.client.i.h.a().b());
                        break;
                    } else {
                        userFriendsUrl = RobloxSettings.getUserProfileUrl(longExtra);
                        break;
                    }
                    break;
                case "FriendRequestAccepted":
                    if (longExtra == -1) {
                        userFriendsUrl = RobloxSettings.getUserFriendsUrl(com.roblox.client.i.h.a().b());
                        break;
                    } else {
                        userFriendsUrl = RobloxSettings.getUserProfileUrl(longExtra);
                        break;
                    }
                    break;
            }
        } else {
            switch (stringExtra) {
                case "FriendRequestReceived":
                    userFriendsUrl = RobloxSettings.getUserFriendRequestsUrl(com.roblox.client.i.h.a().b());
                    break;
                case "FriendRequestAccepted":
                    userFriendsUrl = RobloxSettings.getUserFriendsUrl(com.roblox.client.i.h.a().b());
                    break;
            }
        }
        d(userFriendsUrl);
    }

    private void d(String str) {
        Intent intent = new Intent(this, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", str);
        startActivity(intent);
        overridePendingTransition(R.anim.slide_up_short, R.anim.stay);
    }

    private void I() {
        L();
        M();
        if (!RobloxSettings.isPhone()) {
            O();
            if (b.V()) {
                R();
            }
            N();
        } else {
            R();
        }
        P();
        Q();
    }

    private void J() {
        FeatureState featureState = new FeatureState("MORE_TAG");
        FeatureState featureState2 = new FeatureState("ABOUT_TAG");
        this.q.put("FRIENDS_TAG", new com.roblox.client.feature.e(this, "FRIENDS_TAG", R.string.CommonUI_Features_Label_Friends, R.id.content_container_no_toolbar, RobloxSettings.friendsUrl(), "tabFriends", !RobloxSettings.isPhone(), RobloxSettings.isPhone() ? featureState : null));
        this.q.put("CATALOG_TAG", new com.roblox.client.feature.e(this, "CATALOG_TAG", R.string.CommonUI_Features_Label_Catalog, R.id.content_container_no_toolbar, RobloxSettings.catalogUrl(), "tabCatalog", !RobloxSettings.isPhone(), RobloxSettings.isPhone() ? featureState : null));
        this.q.put("MESSAGES_TAG", new com.roblox.client.feature.e(this, "MESSAGES_TAG", R.string.CommonUI_Features_Label_Messages, R.id.content_container_no_toolbar, RobloxSettings.messagesUrl(), "tabMessages", !b.f(), b.f() ? featureState : null));
        if (com.roblox.client.n.a.e()) {
            this.q.put("MORE_TAG", new com.roblox.client.feature.g(this, "MORE_TAG", this.A));
        } else {
            this.q.put("MORE_TAG", new com.roblox.client.feature.i(this, "MORE_TAG", R.id.content_container_no_toolbar));
        }
        if (com.roblox.client.n.a.c()) {
            this.q.put("HOME_TAG", new com.roblox.client.feature.g(this, "HOME_TAG", this.A));
        } else {
            this.q.put("HOME_TAG", new com.roblox.client.feature.f(this, "HOME_TAG", R.id.content_container_no_toolbar, RobloxSettings.homeUrl(), true));
        }
        if (com.roblox.client.n.a.d()) {
            this.q.put("GAMES_TAG", new com.roblox.client.feature.g(this, "GAMES_TAG", this.A));
        } else {
            this.q.put("GAMES_TAG", new com.roblox.client.feature.d(this, "GAMES_TAG", R.id.content_container_no_toolbar, RobloxSettings.gamesUrl(), true));
        }
        if (com.roblox.client.n.a.a()) {
            this.q.put("CHAT_TAG", new com.roblox.client.feature.g(this, "CHAT_TAG", this.A));
            this.q.put("AVATAR_EDITOR_TAG", new com.roblox.client.feature.g(this, "AVATAR_EDITOR_TAG", this.A));
        } else {
            this.q.put("CHAT_TAG", new com.roblox.client.feature.a(this, "CHAT_TAG", R.id.content_container_no_toolbar));
            this.q.put("AVATAR_EDITOR_TAG", new com.roblox.client.feature.g(this, "AVATAR_EDITOR_TAG", this.A));
        }
        this.q.put("SETTINGS_TAG", new com.roblox.client.feature.e(this, "SETTINGS_TAG", R.string.CommonUI_Features_Label_Settings, R.id.content_container_no_toolbar, RobloxSettings.settingsUrl(), "tabSettings", featureState));
        this.q.put("PROFILE_TAG", new com.roblox.client.feature.e(this, "PROFILE_TAG", R.string.CommonUI_Features_Label_Profile, R.id.content_container_no_toolbar, RobloxSettings.profileUrl(), "tabProfile", featureState));
        this.q.put("GROUPS_TAG", new com.roblox.client.feature.e(this, "GROUPS_TAG", R.string.CommonUI_Features_Label_Groups, R.id.content_container_no_toolbar, RobloxSettings.groupsUrl(), "tabGroups", featureState));
        this.q.put("INVENTORY_TAG", new com.roblox.client.feature.e(this, "INVENTORY_TAG", R.string.CommonUI_Features_Label_Inventory, R.id.content_container_no_toolbar, RobloxSettings.inventoryUrl(), "tabInventory", featureState));
        this.q.put("BLOG_TAG", new com.roblox.client.feature.e(this, "BLOG_TAG", R.string.CommonUI_Features_Label_Blog, R.id.content_container_no_toolbar, RobloxSettings.blogUrl(), "tabBlog", featureState));
        this.q.put("HELP_TAG", new com.roblox.client.feature.e(this, "HELP_TAG", R.string.CommonUI_Features_Label_Help, R.id.content_container_no_toolbar, RobloxSettings.helpUrl(), "tabHelp", featureState));
        this.q.put("EVENTS_TAG", new com.roblox.client.feature.b(this, "HELP_TAG", R.id.content_container_no_toolbar));
        if (RobloxSettings.isTablet()) {
            this.q.put("CHARACTER_TAG", new com.roblox.client.feature.e(this, "CHARACTER_TAG", R.string.CommonUI_Features_Label_Character, R.id.content_container_no_toolbar, RobloxSettings.characterUrl(), "tabCharacter", featureState));
            this.q.put("FORUM_TAG", new com.roblox.client.feature.e(this, "FORUM_TAG", R.string.CommonUI_Features_Label_Forum, R.id.content_container_no_toolbar, RobloxSettings.forumUrl(), "tabForum", featureState));
            this.q.put("TRADE_TAG", new com.roblox.client.feature.e(this, "TRADE_TAG", R.string.CommonUI_Features_Label_Trade, R.id.content_container_no_toolbar, RobloxSettings.tradeUrl(), "tabTrade", featureState));
        }
        this.q.put("ABOUT_TAG", new com.roblox.client.feature.h(this, "ABOUT_TAG", R.id.content_container_no_toolbar));
        this.q.put("ABOUT_US_TAG", new com.roblox.client.feature.e(this, "ABOUT_US_TAG", R.string.CommonUI_Features_Label_AboutUs, R.id.content_container_no_toolbar, RobloxSettings.aboutUsUrl(), "tabMoreAboutUs", featureState2));
        this.q.put("CAREERS_TAG", new com.roblox.client.feature.e(this, "CAREERS_TAG", R.string.CommonUI_Features_Label_Careers, R.id.content_container_no_toolbar, RobloxSettings.careersUrl(), "tabMoreCareer", featureState2));
        this.q.put("PARENTS_TAG", new com.roblox.client.feature.e(this, "PARENTS_TAG", R.string.CommonUI_Features_Label_Parents, R.id.content_container_no_toolbar, RobloxSettings.parentsUrl(), "tabMoreParents", featureState2));
        this.q.put("TERMS_TAG", new com.roblox.client.feature.e(this, "TERMS_TAG", R.string.CommonUI_Features_Label_Terms, R.id.content_container_no_toolbar, RobloxSettings.termsUrl(), "tabMoreTerms", featureState2));
        this.q.put("PRIVACY_TAG", new com.roblox.client.feature.e(this, "PRIVACY_TAG", R.string.CommonUI_Features_Label_Privacy, R.id.content_container_no_toolbar, RobloxSettings.privacyUrl(), "tabMorePrivacy", featureState2));
        this.q.put("CREATE_GAMES_TAG", new com.roblox.client.feature.e(this, "CREATE_GAMES_TAG", R.string.CommonUI_Features_Label_CreateGames, R.id.content_container_no_toolbar, RobloxSettings.createGamesUrl(), "tabMoreCreateGames", featureState));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        this.q.put("SETTINGS_GROUPS_TAG", new com.roblox.client.feature.k(this, "SETTINGS_GROUPS_TAG", R.id.content_container_no_toolbar));
        ArrayList<com.roblox.client.k.e> arrayListI = com.roblox.client.q.d.a().i();
        if (arrayListI != null) {
            for (com.roblox.client.k.e eVar : arrayListI) {
                this.q.put(eVar.c(), new com.roblox.client.feature.e(this, eVar.c(), R.string.CommonUI_Features_Label_Settings, R.id.content_container_no_toolbar, eVar.b(), "tabSettings", new FeatureState("SETTINGS_GROUPS_TAG")));
            }
        }
    }

    private void L() {
        this.v.a(this.v.a(R.id.main_activity_home_tab, "HOME_TAG", R.string.CommonUI_Features_Label_Home, R.drawable.icon_home, R.drawable.icon_home_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void M() {
        this.v.a(this.v.a(R.id.main_activity_games_tab, "GAMES_TAG", R.string.CommonUI_Features_Label_Game, R.drawable.icon_game, R.drawable.icon_game_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void N() {
        this.v.a(this.v.a(R.id.main_activity_friends_tab, "FRIENDS_TAG", R.string.CommonUI_Features_Label_Friends, R.drawable.icon_friends, R.drawable.icon_friends_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void O() {
        this.v.a(this.v.a(R.id.main_activity_catalog_tab, "CATALOG_TAG", R.string.CommonUI_Features_Label_Catalog, R.drawable.icon_catalog, R.drawable.icon_catalog_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void P() {
        this.v.a(this.v.a(R.id.main_activity_chat_tab, "CHAT_TAG", R.string.CommonUI_Features_Label_Chat, R.drawable.icon_chat, R.drawable.icon_chat_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void Q() {
        this.v.a(this.v.a(R.id.main_activity_more_tab, "MORE_TAG", R.string.CommonUI_Features_Label_More, this.r, this.s, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    private void R() {
        this.v.a(this.v.a(R.id.main_activity_avatar_editor_tab, "AVATAR_EDITOR_TAG", R.string.CommonUI_Features_Label_Avatar, R.drawable.icon_avatar, R.drawable.icon_avatar_on, R.color.navTabTextGreyColor, R.color.RbxBlue3));
    }

    public void m() {
        ActivitySignUp.a(this);
    }

    private void S() {
        new AlertDialog.Builder(this).setMessage(R.string.Application_Leave_Response_LeaveAppConfirmation).setPositiveButton(R.string.Application_Leave_Action_LeaveApp, new DialogInterface.OnClickListener() { // from class: com.roblox.client.ActivityNativeMain.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                ActivityNativeMain.this.finish();
            }
        }).setNegativeButton(R.string.CommonUI_Controls_Action_Cancel, new DialogInterface.OnClickListener() { // from class: com.roblox.client.ActivityNativeMain.8
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.roblox.client.ActivityNativeMain.7
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                dialogInterface.dismiss();
            }
        }).create().show();
    }

    public static void a(ActivityNativeMain activityNativeMain, boolean z) {
        a(activityNativeMain, activityNativeMain.e("AVATAR_EDITOR_TAG"), z);
    }

    private static void a(android.support.v4.app.h hVar, com.roblox.client.feature.l lVar, boolean z) {
        f fVarH = null;
        if (lVar instanceof com.roblox.client.feature.g) {
            fVarH = ((com.roblox.client.feature.g) lVar).h();
        }
        if (fVarH != null) {
            if (z) {
                hVar.e().a().a(fVarH).d();
            }
            fVarH.a();
        }
    }

    public static Intent a(Context context, com.roblox.client.game.a aVar) {
        Intent intent = new Intent(context, (Class<?>) ActivityNativeMain.class);
        intent.putExtra("roblox_createTime", System.currentTimeMillis());
        if (aVar != null) {
            intent.putExtra("game_init_params", com.roblox.client.game.a.a(aVar));
            intent.putExtra("launchWithProtocol", true);
        }
        return intent;
    }

    public static void a(com.roblox.client.game.a aVar, Activity activity) {
        RobloxSettings.dontReloadMorePage = true;
        com.roblox.client.util.g.c("GameLaunch", "startLaunchGame: activity=" + activity);
        b(aVar, activity);
    }

    private static void b(com.roblox.client.game.a aVar, Activity activity) {
        int iMyPid = Process.myPid();
        boolean zIsDebuggerConnected = Debug.isDebuggerConnected();
        if (aVar != null) {
            com.roblox.client.util.g.b("rbx.main", "Launching PlaceId:" + aVar.a() + " Pid:" + iMyPid + " Debugger:" + (zIsDebuggerConnected ? "attached" : "none"));
        }
        com.roblox.client.game.b.a().a(activity, aVar, 10104);
    }

    private com.roblox.client.feature.l T() {
        return e(this.v.d());
    }

    public com.roblox.client.feature.l n() {
        if (this.p != null) {
            return e(this.p.a());
        }
        return null;
    }

    private com.roblox.client.feature.l e(String str) {
        return this.q.get(str);
    }

    private boolean f(String str) {
        return this.p != null && str.equals(this.p.a());
    }

    private boolean g(String str) {
        return str.equals(this.v.d());
    }

    @Override // com.roblox.client.components.j
    public void a(String str) {
        com.roblox.client.util.g.a("rbx.main", "ANM.onTabReselected() " + str);
        com.roblox.client.feature.l lVarT = T();
        if (lVarT != null) {
            if ("MORE_TAG".equals(lVarT.j()) && !f("MORE_TAG")) {
                b(new FeatureState("MORE_TAG"));
            } else {
                lVarT.c();
            }
        }
    }

    @Override // android.widget.TabHost.OnTabChangeListener
    public void onTabChanged(String str) {
        com.roblox.client.util.g.a("rbx.main", "ANM.onTabChanged() CLICK:" + str);
        com.roblox.client.i.h hVarA = com.roblox.client.i.h.a();
        if (f("AVATAR_EDITOR_TAG")) {
            D();
        }
        c(new FeatureState(str));
        String strG = "";
        com.roblox.client.feature.l lVarN = n();
        if (lVarN != null) {
            strG = lVarN.g();
        }
        i.a("nativeMain", strG, hVarA.d() ? "isLoggedIn" : "isGuest");
        if (b.bX() && "CHAT_TAG".equals(str)) {
            i.b(com.roblox.client.chat.a.a.a().f());
        }
    }

    private void c(FeatureState featureState) {
        com.roblox.client.util.g.a("rbx.main", "ANM.loadTab() " + featureState.a());
        if (!com.roblox.client.i.h.a().d() && !g("GAMES_TAG")) {
            this.w = this.v.c().a();
            m();
            this.v.c("GAMES_TAG");
            return;
        }
        b(featureState);
    }

    @Override // com.roblox.client.feature.c
    public void a(FeatureState featureState) {
        b(featureState);
    }

    public void b(FeatureState featureState) {
        com.roblox.client.feature.l lVarE;
        boolean z = (n() instanceof com.roblox.client.feature.g) && (e(featureState.a()) instanceof com.roblox.client.feature.g);
        if (this.p != null && !f(featureState.a()) && !z && (lVarE = e(this.p.a())) != null) {
            lVarE.a();
        }
        com.roblox.client.feature.l lVarE2 = e(featureState.a());
        if (lVarE2 != null) {
            lVarE2.a(featureState);
        }
        this.p = featureState;
    }

    @Override // com.roblox.client.feature.c
    public void a(int i, Fragment fragment, String str) {
        if (fragment != null) {
            android.support.v4.app.p pVarA = e().a();
            if (!fragment.isAdded()) {
                pVarA.a(i, fragment, str);
            } else {
                pVarA.c(fragment);
            }
            pVarA.d();
        }
    }

    @Override // com.roblox.client.feature.c
    public void b(Fragment fragment) {
        if (fragment != null) {
            android.support.v4.app.p pVarA = e().a();
            pVarA.b(fragment);
            pVarA.d();
        }
    }

    @Override // com.roblox.client.feature.c
    public void c(Fragment fragment) {
        if (fragment != null) {
            android.support.v4.app.p pVarA = e().a();
            pVarA.a(fragment);
            pVarA.d();
        }
    }

    @Override // com.roblox.client.feature.c
    public Fragment b(String str) {
        return e().a(str);
    }

    private void a(long j, boolean z) {
        com.roblox.client.util.g.c("rbx.main", "navigateToConversation() conversation:" + j);
        FeatureState featureState = new FeatureState("CHAT_TAG");
        featureState.a("CHAT_CONVERSATION_ID", j);
        featureState.a("CHAT_FORCE_OPEN_CONVERSATION", z);
        d(featureState);
    }

    private void b(long j, boolean z) {
        com.roblox.client.util.g.c("rbx.main", "navigateToUserConversation() user:" + j);
        FeatureState featureState = new FeatureState("CHAT_TAG");
        featureState.a("USER_ID_EXTRA", j);
        featureState.a("CHAT_FORCE_OPEN_CONVERSATION", z);
        d(featureState);
    }

    private void a(String str, String str2) {
        FeatureState featureState = new FeatureState(str);
        featureState.a("WEB_URL", i(str2));
        d(featureState);
    }

    private void d(FeatureState featureState) {
        com.roblox.client.util.g.a("rbx.main", "navigateToFeature:" + featureState.a() + " bundleSize:" + featureState.b());
        this.v.a();
        if (this.v.c(featureState.a()) == -1) {
            this.v.c("MORE_TAG");
        }
        this.v.b();
        b(featureState);
    }

    private void U() {
        View currentFocus = getCurrentFocus();
        if (currentFocus != null) {
            ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(currentFocus.getWindowToken(), 2);
        }
    }

    private void V() {
        finish();
        startActivity(new Intent(this, (Class<?>) ActivityStartMVP.class));
    }

    private void h(String str) {
        com.roblox.client.feature.l lVarN = n();
        if (lVarN instanceof com.roblox.client.feature.j) {
            ((com.roblox.client.feature.j) lVarN).b(str);
        }
    }

    @Override // com.roblox.client.i.e.c
    public void a(int i, Bundle bundle) {
        switch (i) {
            case 2:
                a(this, true);
                com.roblox.client.login.a aVar = (com.roblox.client.login.a) e().a("login_window");
                if (aVar == null || !aVar.isVisible()) {
                    V();
                }
                break;
            case 101:
                a(com.roblox.client.game.a.a(bundle.getBundle("game_init_params")), this);
                break;
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onWebSearchEvent(aa aaVar) {
        com.roblox.client.util.g.b("rbx.main", "ANM.onWebSearchEvent() " + aaVar.f6880b);
        String strSearchGroupsUrl = null;
        switch (aaVar.f6879a) {
            case 1:
            case 4:
                strSearchGroupsUrl = RobloxSettings.searchUsersUrl(aaVar.f6880b);
                break;
            case 2:
                strSearchGroupsUrl = RobloxSettings.searchGamesUrl(aaVar.f6880b);
                break;
            case 3:
                strSearchGroupsUrl = RobloxSettings.searchCatalogUrl(aaVar.f6880b);
                break;
            case 5:
                strSearchGroupsUrl = RobloxSettings.searchGroupsUrl(aaVar.f6880b);
                break;
        }
        if (strSearchGroupsUrl != null) {
            U();
            h(strSearchGroupsUrl);
        }
    }

    private void W() {
        com.roblox.client.util.g.b("rbx.main", "onLogin: mGuestRequestedTabTag" + this.w);
        startActivityForResult(ActivitySplash.a(this, com.roblox.client.startup.e.AFTER_LOGIN_FOR_RESULT), 10102);
    }

    private class a implements ViewTreeObserver.OnGlobalLayoutListener {
        private a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            boolean z = com.roblox.engine.components.b.a(ActivityNativeMain.this.t.getRootView(), ActivityNativeMain.this.getWindowManager(), ActivityNativeMain.this.v.e(), ActivityNativeMain.this.t).f7970d > 0;
            if (ActivityNativeMain.this.C != z) {
                ActivityNativeMain.this.C = z;
                ActivityNativeMain.this.Y();
            }
        }
    }

    private void c(boolean z) {
        TabWidget tabWidgetE = this.v.e();
        if (z) {
            if (tabWidgetE.getVisibility() != 0) {
                tabWidgetE.setVisibility(0);
                d(getResources().getDimensionPixelSize(R.dimen.mainTabWidgetHeight));
                return;
            }
            return;
        }
        if (tabWidgetE.getVisibility() != 8) {
            tabWidgetE.setVisibility(8);
            d(0);
        }
    }

    private boolean X() {
        return this.v.e().getVisibility() == 0;
    }

    private void d(int i) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.t.getLayoutParams();
        layoutParams.bottomMargin = i;
        this.t.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Y() {
        c((this.B || this.C) ? false : true);
    }

    private void e(int i) {
        a("CHAT_TAG", Math.max(i, com.roblox.client.n.a.a() ? 0 : com.roblox.client.chat.a.a.a().g()));
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onAccountNotificationsUpdateEvent(com.roblox.client.e.a aVar) {
        com.roblox.client.util.g.a("rbx.main", "ANM.onAccountNotificationsUpdateEvent() update");
        z();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onUnreadConversationCountEvent(x xVar) {
        e(xVar.a());
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigationBarVisibilityEvent(com.roblox.client.e.r rVar) {
        com.roblox.client.util.g.a("rbx.main", "ANM.onNavigationBarVisibilityEvent() visibility:" + rVar.f6911a);
        this.B = !rVar.f6911a;
        Y();
        i.a(rVar.f6911a);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        com.roblox.client.util.g.a("rbx.main", "ANM.onSignalRConnectivityChangeEvent() " + vVar.a() + " " + vVar.b());
        if (vVar.a() && vVar.b()) {
            com.roblox.client.http.o.a();
            if (b.f()) {
                com.roblox.client.i.g.a().a(new r());
            }
            com.roblox.client.i.g.a().a(new com.roblox.client.h.p());
            com.roblox.client.i.g.a().a(new com.roblox.client.h.c());
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onBackButtonNotConsumedEvent(com.roblox.client.e.d dVar) {
        k();
    }

    @org.greenrobot.eventbus.j
    public void onPushNotificationRegistrationFailedEvent(t tVar) {
        n nVarF;
        String strB;
        if (tVar.a().equals("PushNotificationRegistrationFailed")) {
            com.roblox.client.feature.l lVarN = n();
            if ((lVarN instanceof com.roblox.client.feature.j) && (nVarF = ((com.roblox.client.feature.j) lVarN).f()) != null && (strB = nVarF.b()) != null && strB.startsWith(RobloxSettings.settingsUrl())) {
                Toast.makeText(this, getString(R.string.Notifications_PushNotifications_Response_UnableToRegisterForPushNotifications), 0).show();
                nVarF.c(strB);
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(q qVar) {
        String str;
        String strProfileUrl;
        boolean z = qVar.f6910d;
        if ("PROFILE_TAG".equals(qVar.f6907a)) {
            if (qVar.f6909c != -1) {
                strProfileUrl = RobloxSettings.baseUrl() + "users/" + qVar.f6909c + "/profile/";
            } else if (qVar.f6908b != null) {
                strProfileUrl = qVar.f6908b;
            } else {
                strProfileUrl = RobloxSettings.profileUrl();
            }
            a(this, strProfileUrl, R.string.CommonUI_Features_Label_Profile, z);
            return;
        }
        if ("GAME_DETAILS_TAG".equals(qVar.f6907a)) {
            a(this, RobloxSettings.baseUrl() + "games/" + qVar.f6908b, R.string.CommonUI_Features_Heading_GameDetails, z);
            return;
        }
        if ("MY_FEED_TAG".equals(qVar.f6907a)) {
            a(this, RobloxSettings.baseUrl() + "feeds/inapp", R.string.CommonUI_Features_Label_MyFeed, z);
            return;
        }
        if ("SEARCH_GAMES_TAG".equals(qVar.f6907a)) {
            a(this, RobloxSettings.searchGamesUrl(qVar.f6908b), R.string.CommonUI_Features_Label_SearchGames, z);
            return;
        }
        if ("GAMES_SEE_ALL_TAG".equals(qVar.f6907a)) {
            a(this, RobloxSettings.gamesSeeAllUrl(qVar.f6908b), R.string.CommonUI_Features_Label_Game, z);
            return;
        }
        if ("ABUSE_REPORT_TAG".equals(qVar.f6907a)) {
            a(this, qVar.f6908b, getString(R.string.CommonUI_Features_Heading_ReportAbuse));
            return;
        }
        if ("ANIMATED_ASSET_DETAILS_TAG".equals(qVar.f6907a)) {
            if (qVar.f6908b != null) {
                str = RobloxSettings.baseUrl() + "catalog/" + qVar.f6908b;
            } else {
                str = RobloxSettings.baseUrl() + "games/";
            }
            a(this, str, R.string.CommonUI_Features_Label_ViewDetails, z);
            return;
        }
        if ("FRIEND_FINDER_TAG".equals(qVar.f6907a)) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityContacts.class), 10112);
        } else {
            a(qVar.f6907a, qVar.f6908b);
        }
    }

    public static void a(Activity activity, String str, String str2) {
        Intent intent = new Intent(activity, (Class<?>) OverlayActivity.class);
        intent.putExtra("URL_EXTRA", i(str));
        intent.putExtra("TITLE_EXTRA", str2);
        activity.startActivity(intent);
        activity.overridePendingTransition(R.anim.slide_up_short, android.R.anim.fade_out);
    }

    private static String i(String str) {
        if (str != null && !str.startsWith("https://") && !str.startsWith("http://")) {
            if (!str.contains(RobloxSettings.getBaseUrlValue())) {
                return RobloxSettings.baseUrl() + str;
            }
            return "https://" + str;
        }
        return str;
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.e.p pVar) {
        if (pVar.f6906b != -1) {
            b(pVar.f6906b, false);
        } else {
            a(pVar.f6905a, false);
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onIncomingItemsUpdateEvent(com.roblox.client.e.n nVar) {
        a("FRIENDS_TAG", nVar.a());
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatEnabledChangeEvent(com.roblox.client.e.h hVar) {
        com.roblox.client.util.g.a("rbx.main", "onChatEnabledChangeEvent() " + (this.p != null ? this.p.a() : "null active tab") + " status:" + hVar.f6891d);
        com.roblox.client.feature.l lVarE = e("CHAT_TAG");
        if (lVarE instanceof com.roblox.client.feature.a) {
            com.roblox.client.feature.a aVar = (com.roblox.client.feature.a) lVarE;
            if (f("CHAT_TAG")) {
                if (hVar.f6891d == com.roblox.client.e.h.f6889b) {
                    aVar.a(true);
                    return;
                } else {
                    if (hVar.f6891d == com.roblox.client.e.h.f6890c) {
                        aVar.a(false);
                        return;
                    }
                    return;
                }
            }
            aVar.b();
        }
    }

    public void a(String str, int i) {
        e.a aVarB = this.v.b(str);
        if (aVarB != null && aVarB.e() != null) {
            TextView textViewE = aVarB.e();
            textViewE.setVisibility(i > 0 ? 0 : 8);
            if (i >= 99) {
                i = 99;
            }
            textViewE.setText(Integer.toString(i));
        }
    }

    public static void b(Activity activity, String str, String str2) {
        a(activity, str, str2, false);
    }

    public static void a(Activity activity, String str, int i, boolean z) {
        a(activity, str, activity.getString(i), z);
    }

    public static void a(Activity activity, String str, String str2, boolean z) {
        Intent intent = new Intent(activity, (Class<?>) RobloxWebActivity.class);
        intent.putExtra("URL_EXTRA", i(str));
        intent.putExtra("TITLE_EXTRA", str2);
        if (z) {
            intent.putExtra("USE_STANDARD_OPTIONS_EXTRA", z);
        }
        activity.startActivityForResult(intent, 10110);
        if (z) {
            activity.overridePendingTransition(0, 0);
        } else {
            activity.overridePendingTransition(R.anim.slide_up_short, android.R.anim.fade_out);
        }
    }
}
