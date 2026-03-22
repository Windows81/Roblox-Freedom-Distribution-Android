package com.roblox.client.z;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class c extends a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Pattern f7577b;

    public c(String str) {
        super(str);
    }

    public boolean a(String str) {
        if (this.f7577b == null) {
            this.f7577b = Pattern.compile("(?:(?:http|https):\\/\\/)?(?:[^.]+\\.)?(?:facebook\\.com|twitter\\.com|twitch\\.tv|youtube\\.com|discord\\.gg)(?:\\/.*)?");
        }
        return this.f7577b.matcher(str).matches();
    }
}
