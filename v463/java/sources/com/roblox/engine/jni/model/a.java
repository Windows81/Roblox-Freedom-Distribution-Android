package com.roblox.engine.jni.model;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a extends c {
    public boolean isLuaChatEnabled;
    public boolean isLuaGamesPageEnabled;
    public boolean isLuaHomePageEnabled;
    public boolean isTablet;

    public a() {
        this(null);
    }

    public a(c cVar) {
        a(cVar);
    }

    @Override // com.roblox.engine.jni.model.c
    public void a(c cVar) {
        super.a(cVar);
        if (cVar instanceof a) {
            a((a) cVar);
        }
    }

    private void a(a aVar) {
        this.isLuaHomePageEnabled = aVar.isLuaHomePageEnabled;
        this.isLuaGamesPageEnabled = aVar.isLuaGamesPageEnabled;
        this.isLuaChatEnabled = aVar.isLuaChatEnabled;
        this.isTablet = aVar.isTablet;
    }
}
