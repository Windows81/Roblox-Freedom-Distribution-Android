package com.roblox.client.friends.b.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class d implements com.roblox.client.friends.b.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f6056a;

    public d(String str) {
        this.f6056a = str;
    }

    @Override // com.roblox.client.friends.b.b
    public String a() {
        return this.f6056a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f6056a.equals(((d) obj).f6056a);
    }

    public static d a(String str) {
        return new d(str);
    }
}
