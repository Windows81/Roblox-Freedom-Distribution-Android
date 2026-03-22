package com.appsflyer;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f2255a = new a() { // from class: com.appsflyer.x.1
        @Override // com.appsflyer.x.a
        public final Class<?> a(String str) throws ClassNotFoundException {
            return Class.forName(str);
        }
    };

    interface a {
        Class<?> a(String str) throws ClassNotFoundException;
    }

    enum b {
        UNITY("android_unity", "com.unity3d.player.UnityPlayer"),
        REACT_NATIVE("android_reactNative", "com.facebook.react.ReactApplication"),
        CORDOVA("android_cordova", "org.apache.cordova.CordovaActivity"),
        SEGMENT("android_segment", "com.segment.analytics.integrations.Integration"),
        DEFAULT("android_native", "android_native");

        private String f;
        private String g;

        b(String str, String str2) {
            this.f = str;
            this.g = str2;
        }
    }

    final String a() {
        for (b bVar : b.values()) {
            if (a(bVar.g)) {
                return bVar.f;
            }
        }
        return b.DEFAULT.f;
    }

    x() {
    }

    final boolean a(String str) {
        try {
            this.f2255a.a(str);
            c.a("Class: " + str + " is found.");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        } catch (Throwable th) {
            c.a(th.getMessage(), th);
            return false;
        }
    }
}
