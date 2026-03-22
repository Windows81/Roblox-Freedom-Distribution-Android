package com.roblox.client.w;

import com.roblox.client.b;
import com.roblox.engine.jni.reporter.SessionReporter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a {
    public static void a() {
        if (b.bg()) {
            SessionReporter.initialize();
        }
    }

    public static void a(String str, long j) {
        if (b.bg()) {
            SessionReporter.setState(str, j);
        }
    }
}
