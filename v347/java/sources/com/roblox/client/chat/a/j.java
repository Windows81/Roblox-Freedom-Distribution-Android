package com.roblox.client.chat.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j extends h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f6520b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f6521c = "SYSTEM_MESSAGE_CLIENT_ID";

    public j(String str) {
        d(str);
        a(true);
        this.f6515a = true;
        a(System.currentTimeMillis());
        b(System.currentTimeMillis());
        StringBuilder sbAppend = new StringBuilder().append("SYSTEM_MESSAGE_CLIENT_ID");
        int i = f6520b + 1;
        f6520b = i;
        b(sbAppend.append(i).toString());
    }
}
