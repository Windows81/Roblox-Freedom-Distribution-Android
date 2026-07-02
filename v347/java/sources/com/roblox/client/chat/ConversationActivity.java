package com.roblox.client.chat;

import android.content.ComponentCallbacks;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.p;
import android.support.v7.widget.Toolbar;
import android.widget.Toast;
import com.roblox.client.R;
import com.roblox.client.e.u;
import com.roblox.client.e.v;
import com.roblox.client.h.j;
import com.roblox.client.i.e;
import com.roblox.client.realtime.RealtimeService;
import com.roblox.client.startup.ActivitySplash;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes.dex */
public class ConversationActivity extends com.roblox.client.k implements e.c {
    private Toolbar m;
    private ServiceConnection p;

    public interface a {
        long a();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.support.v4.app.ai, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_native_shell);
        this.m = (Toolbar) findViewById(R.id.toolbar);
        if (this.m != null) {
            a(this.m);
        }
        Intent intent = getIntent();
        if (intent != null) {
            String stringExtra = intent.getStringExtra("FEATURE_EXTRA");
            if ("CHAT_FEATURE".equals(stringExtra)) {
                a(intent.getLongExtra("CONVERSATION_ID_EXTRA", -1L), false);
            } else if ("CHAT_CREATE_FEATURE".equals(stringExtra)) {
                k();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, boolean z) {
        if (j > -1) {
            Fragment fragmentA = e().a(b.class.getName());
            if (!(fragmentA instanceof f)) {
                f fVar = new f();
                Bundle bundle = new Bundle();
                bundle.putLong("CONVERSATION_ID_EXTRA", j);
                fVar.setArguments(bundle);
                p pVarA = e().a();
                pVarA.b(R.id.shell_container, fVar, b.class.getName());
                pVarA.d();
            } else {
                ((f) fragmentA).a(j, false);
            }
            if (this.m != null) {
                this.m.setVisibility(8);
                return;
            }
            return;
        }
        Toast.makeText(this, R.string.Feature_Chat_Response_ConversationNotFound, 0).show();
        finish();
        if (z) {
            overridePendingTransition(android.R.anim.fade_in, R.anim.slide_down_short);
        }
    }

    private void k() {
        if (!(e().a(b.class.getName()) instanceof f)) {
            e eVar = new e();
            p pVarA = e().a();
            pVarA.b(R.id.shell_container, eVar, b.class.getName());
            pVarA.c();
        }
        if (this.m != null) {
            this.m.setVisibility(8);
        }
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStop() {
        org.greenrobot.eventbus.c.a().b(this);
        RealtimeService.a(this.p);
        com.roblox.client.i.e.a().b((e.c) this);
        super.onStop();
    }

    @Override // com.roblox.client.k, com.roblox.client.l, android.support.v7.app.c, android.support.v4.app.h, android.app.Activity
    protected void onStart() {
        super.onStart();
        org.greenrobot.eventbus.c.a().a(this);
        this.p = RealtimeService.a(this);
        com.roblox.client.i.e.a().a((e.c) this);
    }

    @Override // android.support.v4.app.h, android.app.Activity
    public void onBackPressed() {
        Fragment fragmentL = l();
        if (!(fragmentL instanceof b ? ((b) fragmentL).d() | false : false)) {
            super.onBackPressed();
            overridePendingTransition(android.R.anim.fade_in, R.anim.slide_down_short);
        }
    }

    private Fragment l() {
        Fragment fragmentA = e().a(b.class.getName());
        if (fragmentA != null) {
            return fragmentA;
        }
        return null;
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onRealtimeConversationRemovedEvent(u uVar) {
        ComponentCallbacks componentCallbacksL = l();
        if (componentCallbacksL instanceof a) {
            long jA = ((a) componentCallbacksL).a();
            if (jA != -1 && jA == uVar.a()) {
                Toast.makeText(this, R.string.Feature_Chat_Response_NoLongerParticipatingInChat, 0).show();
                Intent intent = new Intent();
                intent.putExtra("CONVERSATION_REMOVED_EXTRA", jA);
                setResult(43433, intent);
                finish();
                overridePendingTransition(android.R.anim.fade_in, R.anim.slide_down_short);
            }
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onChatEnabledChangeEvent(com.roblox.client.e.h hVar) {
        if (hVar.f6891d == com.roblox.client.e.h.f6890c) {
            finish();
            overridePendingTransition(android.R.anim.fade_in, R.anim.slide_down_short);
        }
    }

    @org.greenrobot.eventbus.j(a = ThreadMode.MAIN)
    public void onSignalRConnectivityChangeEvent(v vVar) {
        if (vVar.a() && vVar.b()) {
            com.roblox.client.i.g.a().a(new com.roblox.client.h.c());
        }
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
        }
    }

    @Override // com.roblox.client.k, android.support.v4.app.h, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        String stringExtra;
        if (i == 10110) {
            overridePendingTransition(android.R.anim.fade_in, R.anim.slide_down_short);
            if (i2 == -1 && intent != null && (stringExtra = intent.getStringExtra("FEATURE_EXTRA")) != null && "CHAT_TAG".equals(stringExtra)) {
                long longExtra = intent.getLongExtra("CONVERSATION_ID_EXTRA", -1L);
                long longExtra2 = intent.getLongExtra("USER_ID_EXTRA", -1L);
                if (longExtra != -1) {
                    a(longExtra, false);
                    return;
                } else {
                    if (longExtra2 != -1) {
                        a(longExtra2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (i == 10104 && !com.roblox.client.locale.a.a().g()) {
            recreate();
        }
        super.onActivityResult(i, i2, intent);
    }

    private void a(long j) {
        com.roblox.client.i.g.a().a(new com.roblox.client.h.j(j, new j.a() { // from class: com.roblox.client.chat.ConversationActivity.1
            @Override // com.roblox.client.h.j.a
            public void a(boolean z, long j2, String str) {
                com.roblox.client.util.g.c(com.roblox.client.chat.a.f6496a, "CA > onConversationStartComplete() success:" + z + " conversation:" + j2);
                if (z) {
                    ConversationActivity.this.a(j2, false);
                }
            }
        }));
    }
}
