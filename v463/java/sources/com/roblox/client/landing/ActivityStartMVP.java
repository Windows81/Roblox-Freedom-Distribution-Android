package com.roblox.client.landing;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.fragment.app.j;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import com.roblox.client.ae.k;
import com.roblox.client.landing.c;
import com.roblox.client.locale.b;
import com.roblox.client.login.mvp.ActivityLoginMVP;
import com.roblox.client.o;
import com.roblox.client.signup.ActivitySignUp;
import com.roblox.client.signup.multiscreen.ActivityVerifiedSignUp;
import com.roblox.client.startup.ActivitySplash;
import com.roblox.client.startup.e;
import com.roblox.client.u;
import com.roblox.client.u.a;
import com.roblox.client.u.f;
import com.roblox.client.u.h;
import com.roblox.client.x;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ActivityStartMVP extends f implements View.OnClickListener, c.InterfaceC0155c {
    private static final com.roblox.client.landing.a[] u = {new com.roblox.client.landing.a(o.j.Authentication_SignUp_Label_CarouselGamesTitle, o.j.Authentication_SignUp_Label_CarouselGamesText, o.e.img_landing_carousel_game), new com.roblox.client.landing.a(o.j.Authentication_SignUp_Label_CarouselChatTitle, o.j.Authentication_SignUp_Label_CarouselChatText, o.e.img_landing_carousel_chat), new com.roblox.client.landing.a(o.j.Authentication_SignUp_Label_CarouselAvatarTitle, o.j.Authentication_SignUp_Label_CarouselAvatarText, o.e.img_landing_carousel_avatar)};
    private c.a q;
    private a.InterfaceC0181a r;
    private com.roblox.abtesting.a t;
    private Button v;
    private Button w;
    private View x;
    private boolean y = false;

    @Override // com.roblox.client.q
    protected boolean m() {
        return true;
    }

    @Override // com.roblox.client.u.f, com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!com.roblox.client.b.a()) {
            k.b("ActivityStartMVP", "onCreate: no AppSettings - Start Splash...");
            a(e.SHELL_PROCESS_RESTART);
            return;
        }
        if ((u.j() && com.roblox.client.b.an()) || com.roblox.client.b.ao()) {
            setContentView(o.g.activity_start_phone_new);
        } else {
            setContentView(o.g.activity_start);
        }
        x.f7552a = getResources().getDisplayMetrics();
        r();
        s();
        this.y = getIntent().hasExtra("send_app_input_focus_to_lua");
        this.t = com.roblox.abtesting.a.a();
        this.q = new d(this);
    }

    @Override // com.roblox.client.u.f, com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        k.b("ActivityStartMVP", "onResume()");
        com.roblox.client.locale.b bVarA = com.roblox.client.locale.b.a();
        if (bVarA.d() == b.a.LOCALE_MODE_GENERAL_EXPERIENCE) {
            if (bVarA.b(bVarA.a(this), this)) {
                recreate();
            }
            bVarA.a(b.a.LOCALE_MODE_LOGIN_SIGN_UP);
        }
        if (this.y) {
            com.roblox.client.game.b.a().a(new com.roblox.engine.b.a(false));
        }
    }

    @Override // com.roblox.client.u.f, com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onPause() {
        super.onPause();
        k.b("ActivityStartMVP", "onPause()");
        if (this.y) {
            com.roblox.client.game.b.a().a(new com.roblox.engine.b.a(true));
        }
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 10109) {
            if (i2 == 102) {
                this.q.a();
                return;
            } else {
                if (i2 != 103) {
                    return;
                }
                a((h) c.b.SWITCH_TO_LOGIN);
                return;
            }
        }
        if (i == 10111) {
            if (i2 == 104) {
                this.q.b();
            } else {
                if (i2 != 105) {
                    return;
                }
                a((h) c.b.SIGN_UP);
            }
        }
    }

    private void r() {
        View viewFindViewById = findViewById(o.f.landing_view_pager);
        if (viewFindViewById != null) {
            ViewPager viewPager = (ViewPager) viewFindViewById;
            viewPager.setAdapter(new a(j(), u));
            ((TabLayout) findViewById(o.f.landing_tab_dots)).a(viewPager, true);
        }
        View viewFindViewById2 = findViewById(o.f.tvStartFinePrint);
        if (viewFindViewById2 != null) {
            com.roblox.client.ae.a.b.a(this, (TextView) viewFindViewById2);
        }
        if (getIntent().getBooleanExtra("ANIMATE_BUTTONS_EXTRA", false)) {
            View viewFindViewById3 = findViewById(o.f.landing_bottom_content);
            if (viewFindViewById3 != null) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setDuration(500L);
                viewFindViewById3.startAnimation(alphaAnimation);
            }
            View viewFindViewById4 = findViewById(o.f.landing_center_content);
            if (viewFindViewById4 != null) {
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation2.setDuration(500L);
                viewFindViewById4.startAnimation(alphaAnimation2);
            }
        }
        this.v = (Button) findViewById(o.f.signup_button);
        this.x = findViewById(o.f.about_button);
        Button button = (Button) findViewById(o.f.login_button);
        this.w = button;
        button.setText(com.roblox.client.locale.a.a.a(this, o.j.Authentication_Login_Action_Login, new Object[0]));
        this.v.setText(com.roblox.client.locale.a.a.a(this, o.j.Authentication_SignUp_Action_SignUp, new Object[0]));
    }

    private void s() {
        this.w.setOnClickListener(this);
        this.v.setOnClickListener(this);
        this.x.setOnClickListener(this);
    }

    private void a(h hVar) {
        this.r.a(hVar, null);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == o.f.login_button) {
            a((h) c.b.LOGIN);
        } else if (view.getId() == o.f.signup_button) {
            a((h) c.b.SIGN_UP);
        } else if (view.getId() == o.f.about_button) {
            a((h) c.b.ABOUT);
        }
    }

    private void a(e eVar) {
        startActivity(ActivitySplash.a(this, eVar));
        finish();
    }

    @Override // com.roblox.client.u.a
    public void a(c.a aVar) {
        this.q = aVar;
    }

    @Override // com.roblox.client.u.a
    public void a(com.roblox.client.u.e eVar) {
        this.s = eVar;
    }

    @Override // com.roblox.client.u.a
    public void a(a.InterfaceC0181a interfaceC0181a) {
        this.r = interfaceC0181a;
    }

    @Override // com.roblox.client.landing.c.InterfaceC0155c
    public void a(boolean z) {
        b(z);
    }

    @Override // com.roblox.client.landing.c.InterfaceC0155c
    public void n() {
        k.b("ActivityStartMVP", "showLoginDialog: Launch Login MVP activity...");
        ActivityLoginMVP.a((Activity) this);
    }

    @Override // com.roblox.client.landing.c.InterfaceC0155c
    public void p() {
        if (this.t.m()) {
            ActivityVerifiedSignUp.a(this, 2);
        } else if (this.t.n()) {
            ActivityVerifiedSignUp.a(this, 1);
        } else {
            ActivitySignUp.a((Activity) this);
        }
    }

    @Override // com.roblox.client.landing.c.InterfaceC0155c
    public void q() {
        startActivity(new Intent(this, (Class<?>) AboutActivity.class));
        overridePendingTransition(o.a.slide_up_short, o.a.stay);
    }

    @Override // com.roblox.client.landing.c.InterfaceC0155c
    public void c(boolean z) {
        a(z ? e.AFTER_SIGN_UP : e.AFTER_LOGIN);
    }

    private class a extends j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final com.roblox.client.landing.a[] f6440a;

        private a(g gVar, com.roblox.client.landing.a[] aVarArr) {
            super(gVar);
            this.f6440a = aVarArr;
        }

        @Override // androidx.fragment.app.j
        public Fragment a(int i) {
            return b.a(this.f6440a[i]);
        }

        @Override // androidx.viewpager.widget.a
        public int b() {
            return this.f6440a.length;
        }
    }
}
