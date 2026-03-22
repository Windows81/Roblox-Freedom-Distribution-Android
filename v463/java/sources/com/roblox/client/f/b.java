package com.roblox.client.f;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static InterfaceC0133b f6007a = new a();

    /* JADX INFO: renamed from: com.roblox.client.f.b$b, reason: collision with other inner class name */
    interface InterfaceC0133b {
        void a(String str, String str2);
    }

    public static void a(String str, String str2) {
        f6007a.a(str, str2);
    }

    public static class a implements InterfaceC0133b {
        @Override // com.roblox.client.f.b.InterfaceC0133b
        public void a(String str, String str2) {
            Log.w(str, str2);
        }
    }
}
