package com.roblox.client;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.g;
import com.roblox.client.components.RobloxToolbar;
import com.roblox.client.friends.ActivityUniversalFriends;
import com.roblox.client.o;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.s.e;
import com.roblox.client.v;
import com.roblox.engine.jni.NativeGLInterface;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RobloxWebActivity extends q implements e.b {
    protected int q;
    protected int r;
    protected Toolbar s;
    private ServiceConnection t;
    private DataModelFocusLifecycleObserver u = new DataModelFocusLifecycleObserver();

    public class DataModelFocusLifecycleObserver implements androidx.lifecycle.i {
        public DataModelFocusLifecycleObserver() {
        }

        @androidx.lifecycle.r(a = g.a.ON_CREATE)
        public void onFragmentCreated() {
            com.roblox.client.ae.k.c("RobloxActivity", "onFragmentCreated");
            com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(false);
            NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
        }

        @androidx.lifecycle.r(a = g.a.ON_DESTROY)
        public void onFragmentDestroyed() {
            com.roblox.client.ae.k.c("RobloxActivity", "onFragmentDestroyed");
            com.roblox.engine.b.a aVar = new com.roblox.engine.b.a(true);
            NativeGLInterface.nativeBroadcastEventWithNamespace(aVar.f7611b, aVar.f7612c, aVar.f7613d);
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, androidx.core.app.e, android.app.Activity
    public void onCreate(Bundle bundle) {
        String string;
        boolean booleanExtra;
        boolean booleanExtra2;
        Fragment vVar;
        super.onCreate(bundle);
        setContentView(o.g.activity_web);
        Intent intent = getIntent();
        String stringExtra = null;
        if (intent != null) {
            stringExtra = intent.getStringExtra("URL_EXTRA");
            string = intent.getStringExtra("TITLE_EXTRA");
            booleanExtra = intent.getBooleanExtra("SEND_DATA_MODEL_FOCUS_EVENTS_EXTRA", false);
            booleanExtra2 = intent.getBooleanExtra("USE_GENERIC_WEB_FRAG_EXTRA", false);
        } else {
            string = null;
            booleanExtra = false;
            booleanExtra2 = false;
        }
        if (stringExtra == null) {
            finish();
            return;
        }
        this.s = (Toolbar) findViewById(o.f.toolbar);
        Bundle bundle2 = new Bundle();
        if (booleanExtra2) {
            vVar = l.a().c();
            bundle2.putString("TITLE_STRING", string);
            bundle2.putBoolean("HAS_PARENT", true);
            bundle2.putBoolean("HIDE_ACCESSORY_BUTTONS", intent.getBooleanExtra("HIDE_ACCESSORY_BUTTONS_EXTRA", false));
            bundle2.putString("SEARCH_PARAMS", intent.getStringExtra("SEARCH_PARAMS"));
            this.s.setVisibility(8);
            this.q = 0;
            this.r = 0;
        } else {
            vVar = new v();
            Toolbar toolbar = this.s;
            if (string == null) {
                string = getString(o.j.CommonUI_Features_Heading_Roblox_NormalCase);
            }
            toolbar.setTitle(string);
            if (u.au()) {
                this.s.setSubtitle(u.g(this));
            }
            this.s.setNavigationIcon(o.e.icon_close);
            this.s.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.roblox.client.RobloxWebActivity.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RobloxWebActivity.this.finish();
                    RobloxWebActivity robloxWebActivity = RobloxWebActivity.this;
                    robloxWebActivity.overridePendingTransition(robloxWebActivity.q, RobloxWebActivity.this.r);
                }
            });
            this.q = R.anim.fade_in;
            this.r = o.a.slide_down_short;
        }
        if (booleanExtra) {
            vVar.g().a(this.u);
        }
        androidx.fragment.app.k kVarA = j().a();
        bundle2.putString("DEFAULT_URL", stringExtra);
        bundle2.putBoolean("USING_LOGIN_WEB_URL", intent.getBooleanExtra("USING_LOGIN_WEB_URL", false));
        vVar.g(bundle2);
        kVarA.a(o.f.web_layout, vVar, v.class.getName());
        kVarA.c();
    }

    @Override // com.roblox.client.q, com.roblox.client.ab.d.a
    public void a(com.roblox.client.ab.e eVar) {
        ((RobloxToolbar) this.s).a(eVar);
        super.a(eVar);
    }

    @Override // androidx.fragment.app.c, android.app.Activity
    public void onBackPressed() {
        v vVar = (v) j().a(v.class.getName());
        if (vVar == null || !vVar.at()) {
            super.onBackPressed();
            overridePendingTransition(this.q, this.r);
        }
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStart() {
        super.onStart();
        this.t = RealtimeService.a(this);
        com.roblox.client.s.e.a().a((e.b) this);
        org.greenrobot.eventbus.c.a().a(this);
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.appcompat.app.c, androidx.fragment.app.c, android.app.Activity
    protected void onStop() {
        RealtimeService.a(this.t);
        com.roblox.client.s.e.a().b(this);
        org.greenrobot.eventbus.c.a().b(this);
        super.onStop();
    }

    @Override // com.roblox.client.q, com.roblox.client.r, androidx.fragment.app.c, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (com.roblox.client.routing.a.a().b()) {
            finish();
        }
    }

    @Override // com.roblox.client.s.e.b
    public void a(int i, Bundle bundle) {
        if (i != 2) {
            if (i != 101) {
                return;
            }
            a.a(com.roblox.client.game.h.a(bundle.getBundle("game_init_params")), this);
        } else {
            com.roblox.client.ae.k.b("RobloxActivity", "(RobloxWebActivity) handleNotification() Logout event...");
            Toast.makeText(this, o.j.Application_Logout_Response_SorryLoggedOut, 0).show();
            if (com.roblox.client.x.c.j()) {
                com.roblox.client.s.c.b();
            }
            a(com.roblox.client.s.c.a(bundle));
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
    public void onNavigateToConversationEvent(com.roblox.client.l.i iVar) {
        com.roblox.client.ae.k.c("RobloxActivity", "RWF.onNavigateToConversationEvent() " + iVar.f6423a + " " + iVar.f6424b);
        a(iVar.f6423a, iVar.f6424b);
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onNavigateToFeatureEvent(com.roblox.client.l.j jVar) {
        if ("ABUSE_REPORT_TAG".equals(jVar.f6425a)) {
            a.a((Activity) this, jVar.f6426b, false);
            return;
        }
        if ("FRIEND_FINDER_TAG".equals(jVar.f6425a)) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityUniversalFriends.class), 10117);
        } else if ("UNIVERSAL_FRIENDS_TAG".equals(jVar.f6425a)) {
            startActivityForResult(new Intent(this, (Class<?>) ActivityUniversalFriends.class), 10114);
        } else {
            a(jVar.f6425a, jVar.f6426b);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    @org.greenrobot.eventbus.j(a = org.greenrobot.eventbus.ThreadMode.MAIN)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onWebSearchEvent(com.roblox.client.l.p r3) {
        /*
            r2 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "RWA.onWebSearchEvent() "
            r0.append(r1)
            java.lang.String r1 = r3.f6437b
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "RobloxActivity"
            com.roblox.client.ae.k.b(r1, r0)
            int r0 = r3.f6436a
            r1 = 1
            if (r0 == r1) goto L40
            r1 = 2
            if (r0 == r1) goto L39
            r1 = 3
            if (r0 == r1) goto L32
            r1 = 4
            if (r0 == r1) goto L40
            r1 = 5
            if (r0 == r1) goto L2b
            r3 = 0
            goto L46
        L2b:
            java.lang.String r3 = r3.f6437b
            java.lang.String r3 = com.roblox.client.u.g(r3)
            goto L46
        L32:
            java.lang.String r3 = r3.f6437b
            java.lang.String r3 = com.roblox.client.u.h(r3)
            goto L46
        L39:
            java.lang.String r3 = r3.f6437b
            java.lang.String r3 = com.roblox.client.u.f(r3)
            goto L46
        L40:
            java.lang.String r3 = r3.f6437b
            java.lang.String r3 = com.roblox.client.u.e(r3)
        L46:
            if (r3 == 0) goto L4e
            com.roblox.client.x.a(r2)
            r2.a(r3)
        L4e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.roblox.client.RobloxWebActivity.onWebSearchEvent(com.roblox.client.l.p):void");
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onCloseOverlayEvent(com.roblox.client.l.d dVar) {
        finish();
    }

    private void a(String str) {
        Fragment fragmentA = j().a(v.class.getName());
        if (fragmentA instanceof v) {
            ((v) fragmentA).f(str);
        }
    }

    private void n() {
        Fragment fragmentA = j().a(v.class.getName());
        if (fragmentA instanceof v) {
            ((v) fragmentA).g_();
        }
    }

    private void a(String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("FEATURE_EXTRA", str);
        intent.putExtra("PATH_EXTRA", str2);
        setResult(-1, intent);
        finish();
    }

    private void p() {
        a(com.roblox.client.ae.d.e("friends?contactupsell=cff"));
    }

    @Override // com.roblox.client.q, androidx.fragment.app.c, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 10117 || i == 10114) {
            if (i2 == 100 || i2 == 101) {
                if (intent != null && intent.hasExtra("FEATURE_EXTRA")) {
                    setResult(-1, intent);
                    finish();
                }
            } else if (i == 10117) {
                p();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @org.greenrobot.eventbus.j
    public void onPushNotificationRegistrationFailedEvent(com.roblox.client.l.l lVar) {
        if (lVar.a().equals("PushNotificationRegistrationFailed")) {
            Toast.makeText(this, getString(o.j.Notifications_PushNotifications_Response_UnableToRegisterForPushNotifications), 0).show();
            n();
        }
    }

    @org.greenrobot.eventbus.j
    public void onNavigateToLuaEvent(v.a aVar) {
        finish();
    }
}
