package com.roblox.engine.jni;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class EngineJavaCallbackWrapper extends EngineJavaCallback2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected EngineJavaCallback2 f7637b;

    public EngineJavaCallbackWrapper(EngineJavaCallback2 engineJavaCallback2) {
        this.f7637b = engineJavaCallback2;
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(long j, boolean z, byte[] bArr) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(j, z, bArr);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b() {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.b();
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(long j, String str, String str2) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(j, str, str2);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(int i) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(i);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(String str) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(str);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b(int i) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.b(i);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(String str, String str2) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(str, str2);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b(String str, String str2) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.b(str, str2);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(long j) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.a(j);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b(String str) {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.b(str);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void c() {
        EngineJavaCallback2 engineJavaCallback2 = this.f7637b;
        if (engineJavaCallback2 != null) {
            engineJavaCallback2.c();
        }
    }
}
