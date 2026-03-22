package com.roblox.client.components;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum m {
    ALL("all"),
    NONE("none"),
    MORE_ONLY("more");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5892d;

    m(String str) {
        this.f5892d = str;
    }

    public String a() {
        return this.f5892d;
    }

    public static m a(String str) {
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
