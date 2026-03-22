package com.roblox.client.o;

import android.os.Build;
import com.roblox.client.aa.d;
import com.roblox.client.datastructures.c;
import java.util.ArrayList;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6608a = "RbxBlockingQueueItem";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f6609b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private StringBuilder f6610c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6611d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6612e = false;
    private long f = 0;
    private ArrayList<String> g = new ArrayList<>();

    public a(String str) {
        this.f6609b = null;
        this.f6610c = null;
        this.f6611d = "";
        this.f6611d = str;
        this.f6610c = new StringBuilder();
        this.f6609b = new StringBuilder();
    }

    public a a(boolean z) {
        this.f6612e = z;
        return this;
    }

    public a a(String str, Object obj) {
        StringBuilder sb = this.f6610c;
        sb.append(str);
        sb.append('=');
        sb.append(obj.toString().replace(" ", "\\ ").replace(",", "\\,"));
        sb.append(",");
        return this;
    }

    public a b(String str, Object obj) {
        StringBuilder sb = this.f6609b;
        sb.append(str);
        sb.append("=");
        sb.append('\"');
        sb.append(obj);
        sb.append('\"');
        sb.append(",");
        return this;
    }

    public a a(String str, long j) {
        StringBuilder sb = this.f6609b;
        sb.append(str);
        sb.append("=");
        sb.append(j);
        sb.append("i,");
        return this;
    }

    public a a(String str, int i) {
        StringBuilder sb = this.f6609b;
        sb.append(str);
        sb.append("=");
        sb.append(i);
        sb.append("i,");
        return this;
    }

    public a a(String str, boolean z) {
        StringBuilder sb = this.f6609b;
        sb.append(str);
        sb.append("=");
        sb.append(z);
        sb.append(",");
        return this;
    }

    public c b() {
        b.b().a(this);
        return this;
    }

    @Override // com.roblox.client.datastructures.c
    public void a(final com.roblox.client.datastructures.a aVar) {
        if (this.f6612e || com.roblox.client.b.f()) {
            if (this.f == 0) {
                this.f = d();
            }
            new com.roblox.client.aa.b(com.roblox.client.b.t(), com.roblox.client.b.u(), c(), new com.roblox.client.aa.a() { // from class: com.roblox.client.o.a.1
                @Override // com.roblox.client.aa.a
                public void a(d dVar) {
                    com.roblox.client.datastructures.a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a();
                    }
                }
            }).a();
        } else if (aVar != null) {
            aVar.a();
        }
    }

    protected String c() {
        a("appVersion", "2.463.417712");
        b("deviceType", Build.MODEL);
        a("deviceOSVersion", Integer.valueOf(Build.VERSION.SDK_INT));
        a("platform", "Android");
        a("reporter", "App");
        if (this.f == 0) {
            this.f = d();
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.g.size(); i++) {
            sb.append(this.g.get(i));
        }
        return ((CharSequence) sb) + this.f6611d + "," + a(this.f6610c.toString()) + " " + a(this.f6609b.toString()) + " " + this.f + "\n";
    }

    private long d() {
        return System.currentTimeMillis() * 1000000;
    }

    private String a(String str) {
        int iLastIndexOf = str.lastIndexOf(",");
        return iLastIndexOf != -1 ? str.substring(0, iLastIndexOf) : str;
    }

    @Override // com.roblox.client.datastructures.c
    public boolean a() {
        return com.roblox.client.b.t() != null;
    }
}
