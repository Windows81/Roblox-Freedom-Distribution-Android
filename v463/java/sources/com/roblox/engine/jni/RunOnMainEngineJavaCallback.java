package com.roblox.engine.jni;

import android.os.Handler;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class RunOnMainEngineJavaCallback extends EngineJavaCallbackWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Handler f7640a;

    public RunOnMainEngineJavaCallback(Handler handler, EngineJavaCallback2 engineJavaCallback2) {
        super(engineJavaCallback2);
        this.f7640a = handler;
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final long j, final boolean z, final byte[] bArr) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.1
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(j, z, bArr);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void b() {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.2
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.b();
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final long j, final String str, final String str2) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.3
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(j, str, str2);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final int i) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.4
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(i);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final String str) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.5
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(str);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void b(final int i) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.6
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.b(i);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final String str, final String str2) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.7
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(str, str2);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void b(final String str, final String str2) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.8
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.b(str, str2);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void a(final long j) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.9
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.a(j);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void b(final String str) {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.10
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.b(str);
            }
        });
    }

    @Override // com.roblox.engine.jni.EngineJavaCallbackWrapper, com.roblox.engine.jni.EngineJavaCallback2
    public void c() {
        this.f7640a.post(new Runnable() { // from class: com.roblox.engine.jni.RunOnMainEngineJavaCallback.11
            @Override // java.lang.Runnable
            public void run() {
                RunOnMainEngineJavaCallback.super.c();
            }
        });
    }
}
