package com.roblox.client.m;

import com.roblox.client.b;
import com.roblox.engine.sessionreporter.SessionReporter;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static void a() {
        if (b.bZ()) {
            SessionReporter.initialize();
        }
    }

    public static void a(String str, long j) {
        if (b.bZ()) {
            SessionReporter.setState(str, j);
        }
    }
}
