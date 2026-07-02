package com.roblox.engine.jni;

/* JADX INFO: loaded from: classes.dex */
public class NativeReportingInterface {
    public static native void addStopwatchCheckpoint(String str);

    public static native void applicationBackgrounded();

    public static native void applicationForegrounded();

    public static native void initAppShellReporter();

    public static native void initStopwatch();

    public static native void reportStopwatchAllStats();
}
