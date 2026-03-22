package com.roblox.client.feature;

import androidx.fragment.app.Fragment;
import com.roblox.client.ae.k;
import com.roblox.client.s.h;
import com.roblox.engine.b.d;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6020a = "rbx.appshell";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f6021b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f6022c;

    public a(c cVar, int i) {
        this.f6021b = cVar;
        this.f6022c = i;
    }

    public void a(FeatureState featureState) {
        com.roblox.client.game.a aVarB = b();
        if (aVarB == null) {
            k.b("rbx.appshell", "onShow: Create a GL fragment for LuaApp...");
            aVarB = new com.roblox.client.game.a();
        }
        k.c("rbx.appshell", "onShow: ... state = " + featureState.a() + ", IsLoggedIn = " + h.a().d());
        if (h.a().d()) {
            b(featureState);
        }
        this.f6021b.a(this.f6022c, aVarB, c());
    }

    public boolean a() {
        com.roblox.client.game.b.a().i();
        return true;
    }

    private String c() {
        return a.class.getName();
    }

    public com.roblox.client.game.a b() {
        Fragment fragmentA = this.f6021b.a(c());
        if (fragmentA instanceof com.roblox.client.game.a) {
            return (com.roblox.client.game.a) fragmentA;
        }
        return null;
    }

    protected void b(FeatureState featureState) {
        if (featureState.a().equals("CHAT_TAG")) {
            k.b("rbx.appshell", "sendAppEvents() start chat");
            a(a("Chat"));
            long jB = featureState.b("USER_ID_EXTRA", -1L);
            long jB2 = featureState.b("CHAT_CONVERSATION_ID", -1L);
            if (jB != -1) {
                k.b("rbx.appshell", "sendAppEvents() userId:" + jB);
                a(a(jB));
                return;
            }
            if (jB2 != -1) {
                k.b("rbx.appshell", "sendAppEvents() conversationId:" + jB2);
                a(b(jB2));
                return;
            }
            return;
        }
        if (featureState.a().equals("AVATAR_EDITOR_TAG")) {
            k.b("rbx.appshell", "sendAppEvents() start avatar");
            a(a("AvatarEditor"));
        } else if (featureState.a().equals("HOME_TAG")) {
            k.b("rbx.appshell", "sendAppEvents() start home");
            a(a("Home"));
        } else if (featureState.a().equals("GAMES_TAG")) {
            k.b("rbx.appshell", "sendAppEvents() start games");
            a(a("Games"));
        }
    }

    protected void a(com.roblox.engine.b.c cVar) {
        com.roblox.client.game.b.a().a(cVar);
    }

    protected void a(com.roblox.engine.b.b bVar) {
        com.roblox.client.game.b.a().a(bVar);
    }

    protected com.roblox.engine.b.b a(long j) {
        return new com.roblox.engine.b.b("AppShellNotifications", Long.toString(j), "StartConversationWithUserId", "Chat");
    }

    protected com.roblox.engine.b.b b(long j) {
        return new com.roblox.engine.b.b("AppShellNotifications", Long.toString(j), "StartConversationWithId", "Chat");
    }

    protected com.roblox.engine.b.c a(String str) {
        return new d(str);
    }
}
