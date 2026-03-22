package com.roblox.client.game;

import com.roblox.engine.jni.EngineJavaCallback2;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class c extends EngineJavaCallback2 {
    public abstract o a();

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void a(long j, boolean z, byte[] bArr) {
        o oVarA = a();
        if (oVarA != null) {
            oVarA.a(j, z, new String(bArr, Charset.forName("UTF-8")));
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b() {
        o oVarA = a();
        if (oVarA != null) {
            oVarA.a();
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void b(String str) {
        o oVarA = a();
        if (oVarA != null) {
            oVarA.a(str);
        }
    }

    @Override // com.roblox.engine.jni.EngineJavaCallback2
    public void c() {
        o oVarA = a();
        if (oVarA != null) {
            oVarA.b();
        }
    }
}
