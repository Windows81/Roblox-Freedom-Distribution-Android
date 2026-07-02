package com.roblox.client.landing;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.TextView;
import com.roblox.client.ActivityNativeMain;
import com.roblox.client.R;
import com.roblox.client.RobloxSettings;
import com.roblox.client.l.a;
import com.roblox.client.l.f;
import com.roblox.client.l.h;
import com.roblox.client.landing.b;
import com.roblox.client.landing.d;
import com.roblox.client.locale.a;
import com.roblox.client.login.ActivityLogin;
import com.roblox.client.login.mvp.ActivityLoginMVP;
import com.roblox.client.p;
import com.roblox.client.signup.ActivitySignUp;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.util.g;

/* JADX INFO: loaded from: classes.dex */
public class ActivityStartMVP extends f implements View.OnClickListener, b.a, d.c {
    private static final com.roblox.client.landing.a[] s = {new com.roblox.client.landing.a(R.string.Authentication_SignUp_Label_CarouselGamesTitle, R.string.Authentication_SignUp_Label_CarouselGamesText, R.drawable.img_landing_carousel_game), new com.roblox.client.landing.a(R.string.Authentication_SignUp_Label_CarouselChatTitle, R.string.Authentication_SignUp_Label_CarouselChatText, R.drawable.img_landing_carousel_chat), new com.roblox.client.landing.a(R.string.Authentication_SignUp_Label_CarouselAvatarTitle, R.string.Authentication_SignUp_Label_CarouselAvatarText, R.drawable.img_landing_carousel_avatar)};
    private d.a p;
    private a.InterfaceC0114a q;
    private com.roblox.abtesting.a r;
    private Button t;
    private Button u;
    private Button v;
    private View w;

    @Override // com.roblox.client.l.f, com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!com.roblox.client.b.a()) {
            g.b("ActivityStartMVP", "onCreate: no AppSettings - Start Splash...");
            a(com.roblox.client.startup.e.SHELL_PROCESS_RESTART);
            return;
        }
        if ((RobloxSettings.isPhone() && com.roblox.client.b.aX()) || com.roblox.client.b.aY()) {
            setContentView(R.layout.activity_start_phone_new);
        } else {
            setContentView(R.layout.activity_start);
        }
        p.f7515a = getResources().getDisplayMetrics();
        w();
        x();
        this.r = com.roblox.abtesting.a.a();
        this.p = new e(this);
        this.v.setText(R.string.Authentication_Login_Action_PlayNow);
        if (!this.r.j()) {
            this.v.setVisibility(8);
        }
    }

    @Override // com.roblox.client.k
    protected boolean j() {
        return true;
    }

    @Override // com.roblox.client.l.f, com.roblox.client.k, com.roblox.client.l, android.support.v4.app.h, android.app.Activity
    protected void onResume() {
        super.onResume();
        com.roblox.client.locale.a aVarA = com.roblox.client.locale.a.a();
        if (aVarA.f() == a.EnumC0115a.LOCALE_MODE_GENERAL_EXPERIENCE) {
            if (aVarA.b(aVarA.a(this), this)) {
                recreate();
            }
            aVarA.a(a.EnumC0115a.LOCALE_MODE_LOGIN_SIGN_UP);
        }
        g.b("rbx.locale", "in ActivityStartMVP onResume()");
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10109) {
            switch (i2) {
                case 102:
                    this.p.a();
                    break;
                case 103:
                    a((h) d.b.SWITCH_TO_LOGIN);
                    break;
            }
        }
        if (i == 10111) {
            switch (i2) {
                case 104:
                    this.p.b();
                    break;
                case 105:
                    a((h) d.b.SIGN_UP);
                    break;
            }
        }
    }

    private void w() {
        View viewFindViewById = findViewById(R.id.landing_view_pager);
        if (viewFindViewById != null) {
            ViewPager viewPager = (ViewPager) viewFindViewById;
            viewPager.setAdapter(new a(e(), s));
            ((TabLayout) findViewById(R.id.landing_tab_dots)).a(viewPager, true);
        }
        View viewFindViewById2 = findViewById(R.id.tvStartFinePrint);
        if (viewFindViewById2 != null) {
            com.roblox.client.util.a.b.a(this, (TextView) viewFindViewById2);
        }
        if (getIntent().getBooleanExtra("ANIMATE_BUTTONS_EXTRA", false)) {
            View viewFindViewById3 = findViewById(R.id.landing_bottom_content);
            if (viewFindViewById3 != null) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(500L);
                viewFindViewById3.startAnimation(alphaAnimation);
            }
            View viewFindViewById4 = findViewById(R.id.landing_center_content);
            if (viewFindViewById4 != null) {
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation2.setDuration(500L);
                viewFindViewById4.startAnimation(alphaAnimation2);
            }
        }
        this.u = (Button) findViewById(R.id.login_button);
        this.t = (Button) findViewById(R.id.signup_button);
        this.v = (Button) findViewById(R.id.play_now_button);
        this.w = findViewById(R.id.about_button);
    }

    private void x() {
        this.u.setOnClickListener(this);
        this.t.setOnClickListener(this);
        this.v.setOnClickListener(this);
        this.w.setOnClickListener(this);
    }

    private void a(h hVar) {
        this.q.a(hVar, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.about_button /* 2131230728 */:
                a((h) d.b.ABOUT);
                break;
            case R.id.login_button /* 2131231001 */:
                a((h) d.b.LOGIN);
                break;
            case R.id.play_now_button /* 2131231058 */:
                a((h) d.b.PLAY_NOW);
                break;
            case R.id.signup_button /* 2131231145 */:
                a((h) d.b.SIGN_UP);
                break;
        }
    }

    private void a(com.roblox.client.startup.e eVar) {
        startActivity(ActivitySplash.a(this, eVar));
        finish();
    }

    private void y() {
        z();
        Intent intentA = ActivityNativeMain.a(this, (com.roblox.client.game.a) null);
        intentA.setFlags(65536);
        intentA.putExtra("GUEST_MODE_KEY", true);
        startActivity(intentA);
        finish();
    }

    private void z() {
        com.roblox.client.locale.a aVarA = com.roblox.client.locale.a.a();
        com.roblox.client.locale.c cVarE = aVarA.e();
        aVarA.b(cVarE, this);
        aVarA.a(a.EnumC0115a.LOCALE_MODE_GENERAL_EXPERIENCE);
        g.b("rbx.locale", "GE: " + cVarE);
    }

    @Override // com.roblox.client.l.a
    public void a(d.a aVar) {
        this.p = aVar;
    }

    @Override // com.roblox.client.l.a
    public void a(com.roblox.client.l.e eVar) {
        this.m = eVar;
    }

    @Override // com.roblox.client.l.a
    public void a(a.InterfaceC0114a interfaceC0114a) {
        this.q = interfaceC0114a;
    }

    @Override // com.roblox.client.landing.d.c
    public void c(boolean z) {
        b(z);
    }

    @Override // com.roblox.client.landing.d.c
    public void k() {
        if (com.roblox.client.b.j()) {
            g.b("ActivityStartMVP", "showLoginDialog: Launch Login MVP activity...");
            ActivityLoginMVP.a((Activity) this);
        } else {
            g.b("ActivityStartMVP", "showLoginDialog: Launch Login activity...");
            ActivityLogin.a(this);
        }
    }

    @Override // com.roblox.client.landing.d.c
    public void l() {
        ActivitySignUp.a(this);
    }

    @Override // com.roblox.client.landing.d.c
    public void m() {
        y();
    }

    @Override // com.roblox.client.landing.d.c
    public void n() {
        e().a().a(R.anim.slide_up_short, 0, 0, R.anim.slide_down_short).b(R.id.landing_layout, b.a(), "FragmentAbout").a((String) null).c();
    }

    @Override // com.roblox.client.landing.d.c
    public void d(boolean z) {
        a(z ? com.roblox.client.startup.e.AFTER_SIGN_UP : com.roblox.client.startup.e.AFTER_LOGIN);
    }

    @Override // com.roblox.client.landing.b.a
    public void v() {
        e().c();
    }

    private class a extends o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.roblox.client.landing.a[] f7325a;

        private a(l lVar, com.roblox.client.landing.a[] aVarArr) {
            super(lVar);
            this.f7325a = aVarArr;
        }

        @Override // android.support.v4.app.o
        public Fragment a(int i) {
            return c.a(this.f7325a[i]);
        }

        @Override // android.support.v4.view.p
        public int b() {
            return this.f7325a.length;
        }
    }
}
