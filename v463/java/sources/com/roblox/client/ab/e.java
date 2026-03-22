package com.roblox.client.ab;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum e {
    LIGHT("Light"),
    DARK("Dark"),
    CLASSIC("Classic");


    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f5601d;

    e(String str) {
        this.f5601d = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f5601d;
    }

    public static e a(String str) {
        String lowerCase = str != null ? str.toLowerCase() : "default";
        byte b2 = -1;
        int iHashCode = lowerCase.hashCode();
        if (iHashCode != 3075958) {
            if (iHashCode != 102970646) {
                if (iHashCode == 853620882 && lowerCase.equals("classic")) {
                    b2 = 2;
                }
            } else if (lowerCase.equals("light")) {
                b2 = 0;
            }
        } else if (lowerCase.equals("dark")) {
            b2 = 1;
        }
        if (b2 == 0) {
            return LIGHT;
        }
        if (b2 == 1) {
            return DARK;
        }
        return CLASSIC;
    }
}
