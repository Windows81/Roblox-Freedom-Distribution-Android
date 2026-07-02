package com.roblox.client.feature;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.roblox.client.RobloxSettings;
import com.roblox.engine.jni.NativeGLInterface;

/* JADX INFO: loaded from: classes.dex */
public class g extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6945a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6946b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6947c;

    public g(c cVar, String str, int i) {
        super(str);
        this.f6945a = "rbx.lua";
        this.f6946b = cVar;
        this.f6947c = i;
    }

    @Override // com.roblox.client.feature.l
    public void a(FeatureState featureState) {
        boolean z = true;
        boolean zB = featureState.b("Preloading", false);
        if (!zB) {
            b();
        }
        com.roblox.client.f fVarH = h();
        if (fVarH == null) {
            com.roblox.client.util.g.b("LuaAppTabFeature", "onShow: Create a GL fragment for LuaApp...");
            fVarH = new com.roblox.client.f();
            Bundle bundle = new Bundle();
            bundle.putLong("userId", com.roblox.client.i.h.a().b());
            bundle.putInt("joinRequestType", 5);
            bundle.putString("appStarterPlace", "rbxasset://places/Mobile.rbxl");
            if (com.roblox.client.n.a.b()) {
                bundle.putString("appStarterScript", "LuaAppStarterScript");
            } else {
                bundle.putString("appStarterScript", "MobileStarterScript");
            }
            bundle.putBoolean("is3DApp", true);
            a(fVarH, featureState);
            fVarH.setArguments(bundle);
            RobloxSettings.updateNativeSettings();
        } else {
            fVarH.resumeRendering();
            z = false;
        }
        this.f6946b.a(this.f6947c, fVarH, f());
        if (!z) {
            a(fVarH, featureState);
        }
        fVarH.b(a(zB));
    }

    public void b() {
        switch (this.e) {
            case "HOME_TAG":
                NativeGLInterface.nativeActionTaken(com.roblox.engine.jni.a.TAP_HOME_PAGE_TAB);
                break;
            case "GAMES_TAG":
                NativeGLInterface.nativeActionTaken(com.roblox.engine.jni.a.TAP_GAME_PAGE_TAB);
                break;
            case "CHAT_TAG":
                NativeGLInterface.nativeActionTaken(com.roblox.engine.jni.a.TAP_CHAT_TAB);
                break;
            case "AVATAR_EDITOR_TAG":
                NativeGLInterface.nativeActionTaken(com.roblox.engine.jni.a.TAP_AVATAR_TAB);
                break;
            case "MORE_TAG":
                NativeGLInterface.nativeActionTaken(com.roblox.engine.jni.a.TAP_MORE_PAGE_TAB);
                break;
        }
    }

    private void a(com.roblox.client.f fVar, FeatureState featureState) {
        if (featureState.a().equals("CHAT_TAG")) {
            com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() start chat");
            fVar.a(a("Chat"));
            long jB = featureState.b("USER_ID_EXTRA", -1L);
            long jB2 = featureState.b("CHAT_CONVERSATION_ID", -1L);
            if (jB != -1) {
                com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() userId:" + jB);
                fVar.b(a(jB));
                return;
            } else {
                if (jB2 != -1) {
                    com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() conversationId:" + jB2);
                    fVar.b(b(jB2));
                    return;
                }
                return;
            }
        }
        if (featureState.a().equals("AVATAR_EDITOR_TAG")) {
            com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() start avatar");
            fVar.a(a("AvatarEditor"));
            return;
        }
        if (featureState.a().equals("HOME_TAG")) {
            com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() start home");
            fVar.a(a("Home"));
        } else if (featureState.a().equals("GAMES_TAG")) {
            com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() start games");
            fVar.a(a("Games"));
        } else if (featureState.a().equals("MORE_TAG")) {
            com.roblox.client.util.g.b("rbx.lua", "sendAppEvents() start more");
            fVar.a(a("More"));
        }
    }

    @Override // com.roblox.client.feature.l
    public void a() {
        com.roblox.client.f fVarH = h();
        if (fVarH != null) {
            fVarH.stopRendering();
            this.f6946b.b(fVarH);
        }
    }

    @Override // com.roblox.client.feature.l
    public void c() {
        b();
        com.roblox.client.f fVarH = h();
        if (fVarH != null) {
            String strW_ = w_();
            com.roblox.client.util.g.b("rbx.lua", "onReselected() Navigations Reload " + strW_);
            fVarH.b(b(strW_));
        }
    }

    @Override // com.roblox.client.feature.l
    public boolean d() {
        NativeGLInterface.nativeHandleBackPressed();
        return true;
    }

    protected String f() {
        return g.class.getName();
    }

    public com.roblox.client.f h() {
        Fragment fragmentB = this.f6946b.b(f());
        if (fragmentB instanceof com.roblox.client.f) {
            return (com.roblox.client.f) fragmentB;
        }
        return null;
    }

    @Override // com.roblox.client.feature.l
    public String g() {
        if (this.e.equals("CHAT_TAG")) {
            return "tabChat";
        }
        if (this.e.equals("HOME_TAG")) {
            return "tabHome";
        }
        if (this.e.equals("GAMES_TAG")) {
            return "tabGames";
        }
        if (this.e.equals("MORE_TAG")) {
            return "tabMore";
        }
        return "tabAvatar";
    }

    public String w_() {
        if (this.e.equals("AVATAR_EDITOR_TAG")) {
            return "AvatarEditor";
        }
        if (this.e.equals("HOME_TAG")) {
            return "Home";
        }
        if (this.e.equals("GAMES_TAG")) {
            return "Games";
        }
        if (this.e.equals("MORE_TAG")) {
            return "More";
        }
        return "Chat";
    }

    public com.roblox.engine.a.c a(long j) {
        return new com.roblox.engine.a.c("AppShellNotifications", Long.toString(j), "StartConversationWithUserId");
    }

    public com.roblox.engine.a.c b(long j) {
        return new com.roblox.engine.a.c("AppShellNotifications", Long.toString(j), "StartConversationWithId");
    }

    public com.roblox.engine.a.c a(String str) {
        return new com.roblox.engine.a.d(str);
    }

    public com.roblox.engine.a.c b(String str) {
        return new com.roblox.engine.a.b(str);
    }

    public com.roblox.engine.a.c a(boolean z) {
        return new com.roblox.engine.a.c("AppShellNotifications", Boolean.toString(z), "Preloading");
    }
}
