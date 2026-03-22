package com.roblox.client.routing;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum c {
    HOME("HOME_TAG"),
    GAMES("GAMES_TAG"),
    AVATAR("AVATAR_EDITOR_TAG"),
    MORE("MORE_TAG"),
    GAME_DETAILS("GAME_DETAILS_TAG", new String[]{"gameId"}),
    PROFILE("PROFILE_TAG", new String[]{"userId"}),
    CATALOG("CATALOG_TAG"),
    FRIENDS("FRIENDS_TAG"),
    UNKNOWN("unknown");

    private final String j;
    private final String[] k;

    c(String str, String[] strArr) {
        this.j = str;
        this.k = strArr;
    }

    c(String str) {
        this(str, new String[0]);
    }

    public String a() {
        return this.j;
    }

    public String[] b() {
        return this.k;
    }

    public int c() {
        return this.k.length;
    }
}
