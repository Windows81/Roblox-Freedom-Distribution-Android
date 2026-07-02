package com.roblox.client;

import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.widget.Toolbar;
import android.view.View;
import android.widget.Toast;
import com.roblox.client.contacts.ActivityContacts;
import com.roblox.client.e.aa;
import com.roblox.client.e.q;
import com.roblox.client.i.e;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.startup.ActivitySplash;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class RobloxWebActivity extends k implements e.c {
    private ServiceConnection m;
    private int p;
    private int q;

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        boolean booleanExtra;
        String str;
        n nVar;
        String string = null;
        super.onCreate(bundle);
        setContentView(R.layout.activity_web);
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("URL_EXTRA");
            string = intent.getStringExtra("TITLE_EXTRA");
            str = stringExtra;
            booleanExtra = intent.getBooleanExtra("USE_STANDARD_OPTIONS_EXTRA", false);
        } else {
            booleanExtra = false;
            str = null;
        }
        if (str == null) {
            finish();
            return;
        }
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        Bundle bundle2 = new Bundle();
        if (booleanExtra) {
            com.roblox.client.f.d dVar = new com.roblox.client.f.d();
            bundle2.putString("TITLE_STRING", string);
            bundle2.putBoolean("HAS_PARENT", true);
            toolbar.setVisibility(8);
            this.p = 0;
            this.q = 0;
            nVar = dVar;
        } else {
            n nVar2 = new n();
            if (string == null) {
                string = getString(R.string.CommonUI_Features_Heading_Roblox_NormalCase);
            }
            toolbar.setTitle(string);
            if (RobloxSettings.isShowVisibleAge()) {
                toolbar.setSubtitle(RobloxSettings.ageVisibilityText(this));
            }
            toolbar.setNavigationIcon(R.drawable.icon_close);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.RobloxWebActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RobloxWebActivity.this.finish();
                    RobloxWebActivity.this.overridePendingTransition(RobloxWebActivity.this.p, RobloxWebActivity.this.q);
                }
            });
            this.p = android.R.anim.fade_in;
            this.q = R.anim.slide_down_short;
            nVar = nVar2;
        }
        android.support.v4.app.p pVarA = e().a();
        bundle2.putString("DEFAULT_URL", str);
        bundle2.putBoolean("USING_LOGIN_WEB_URL", intent.getBooleanExtra("USING_LOGIN_WEB_URL", false));
        nVar.setArguments(bundle2);
        pVarA.a(R.id.web_layout, nVar, n.class.getName());
        pVarA.c();
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        n nVar = (n) e().a(n.class.getName());
        if (nVar == null || !nVar.c()) {
            super.onBackPressed();
            overridePendingTransition(this.p, this.q);
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.m = RealtimeService.a(this);
        com.roblox.client.i.e.a().a((e.c) this);
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        RealtimeService.a(this.m);
        com.roblox.client.i.e.a().b((e.c) this);
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // com.roblox.client.i.e.c
    public void a(int i, Bundle bundle) {
        switch (i) {
            case 2:
                finish();
                Toast.makeText(this, R.string.Application_Logout_Response_SorryLoggedOut, 0).show();
                Intent intentA = ActivitySplash.a(this, com.roblox.client.startup.e.LOG_OUT);
                intentA.setFlags(268468224);
                startActivity(intentA);
                break;
            case 101:
                ActivityNativeMain.a(com.roblox.client.game.a.a(bundle.getBundle("game_init_params")), this);
                break;
        }
    }

    public void a(long j, long j2) {
        Intent intent = new Intent();
        intent.putExtra("FEATURE_EXTRA", "CHAT_TAG");
        if (j != -1) {
            intent.putExtra("CONVERSATION_ID_EXTRA", j);
        }
        if (j2 != -1) {
            intent.putExtra("USER_ID_EXTRA", j2);
        }
        if (j2 != -1 || j != -1) {
            setResult(-1, intent);
        }
        finish();
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToConversationEvent(com.roblox.client.e.p pVar) {
        com.roblox.client.util.g.c("RobloxActivity", "RWF.onNavigateToConversationEvent() " + pVar.f6905a + " " + pVar.f6906b);
        a(pVar.f6905a, pVar.f6906b);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(q qVar) {
        String strProfileUrl;
        if ("ABUSE_REPORT_TAG".equals(qVar.f6907a)) {
            ActivityNativeMain.a(this, qVar.f6908b, getString(R.string.CommonUI_Features_Heading_ReportAbuse));
            return;
        }
        if ("FRIEND_FINDER_TAG".equals(qVar.f6907a)) {
            startActivity(new Intent(this, (Class<?>) ActivityContacts.class));
            return;
        }
        if ("PROFILE_TAG".equals(qVar.f6907a)) {
            if (qVar.f6909c != -1) {
                strProfileUrl = RobloxSettings.baseUrl() + "users/" + qVar.f6909c + "/profile/";
            } else if (qVar.f6908b != null) {
                strProfileUrl = qVar.f6908b;
            } else {
                strProfileUrl = RobloxSettings.profileUrl();
            }
            a(qVar.f6907a, strProfileUrl);
            return;
        }
        a(qVar.f6907a, qVar.f6908b);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onWebSearchEvent(aa aaVar) {
        com.roblox.client.util.g.b("RobloxActivity", "RWA.onWebSearchEvent() " + aaVar.f6880b);
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
            p.a((Activity) this);
            a(strSearchGroupsUrl);
        }
    }

    private void a(String str) {
        Fragment fragmentA = e().a(n.class.getName());
        if (fragmentA instanceof n) {
            ((n) fragmentA).c(str);
        }
    }

    private void a(String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("FEATURE_EXTRA", str);
        intent.putExtra("PATH_EXTRA", str2);
        setResult(-1, intent);
        finish();
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == -1 && intent != null && intent.hasExtra("FEATURE_EXTRA")) {
            setResult(-1, intent);
            finish();
        }
        super.onActivityResult(i, i2, intent);
    }
}
