package com.roblox.client.components;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public enum q {
    ALL("all"),
    NONE("none"),
    MORE_ONLY("more");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6777d;

    q(String str) {
        this.f6777d = str;
    }

    public String a() {
        return this.f6777d;
    }

    public static q a(String str) {
        String lowerCase = str.toLowerCase();
        if (lowerCase.contains(ALL.a())) {
            return ALL;
        }
        if (lowerCase.contains(MORE_ONLY.a())) {
            return MORE_ONLY;
        }
        return NONE;
    }
}
