package com.roblox.client.g;

import android.os.Build;
import com.roblox.client.datastructures.c;
import com.roblox.client.o.d;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f6971a = "RbxBlockingQueueItem";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f6972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private StringBuilder f6973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6974d;
    private boolean e = false;
    private long f = 0;
    private ArrayList<String> g = new ArrayList<>();

    public a(String str) {
        this.f6972b = null;
        this.f6973c = null;
        this.f6974d = "";
        this.f6974d = str;
        this.f6973c = new StringBuilder();
        this.f6972b = new StringBuilder();
    }

    public a a(boolean z) {
        this.e = z;
        return this;
    }

    public a a(String str, Object obj) {
        this.f6973c.append(str).append('=').append(obj.toString().replace(" ", "\\ ").replace(",", "\\,")).append(",");
        return this;
    }

    public a b(String str, Object obj) {
        this.f6972b.append(str).append("=").append('\"').append(obj).append('\"').append(",");
        return this;
    }

    public a a(String str, long j) {
        this.f6972b.append(str).append("=").append(j).append("i,");
        return this;
    }

    public a a(String str, int i) {
        this.f6972b.append(str).append("=").append(i).append("i,");
        return this;
    }

    public a a(String str, boolean z) {
        this.f6972b.append(str).append("=").append(z).append(",");
        return this;
    }

    public c b() {
        b.b().a(this);
        return this;
    }

    @Override // com.roblox.client.datastructures.c
    public void a(final com.roblox.client.datastructures.a aVar) {
        if (!this.e && !com.roblox.client.b.i()) {
            if (aVar != null) {
                aVar.a();
            }
        } else {
            if (this.f == 0) {
                this.f = d();
            }
            new com.roblox.client.o.b(com.roblox.client.b.y(), com.roblox.client.b.z(), c(), new com.roblox.client.o.a() { // from class: com.roblox.client.g.a.1
                @Override // com.roblox.client.o.a
                public void a(d dVar) {
                    if (aVar != null) {
                        aVar.a();
                    }
                }
            }).a();
        }
    }

    protected String c() {
        a("appVersion", "2.347.225742");
        b("deviceType", Build.MODEL);
        a("deviceOSVersion", Integer.valueOf(Build.VERSION.SDK_INT));
        a("platform", "Android");
        a("reporter", "App");
        if (this.f == 0) {
            this.f = d();
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.g.size()) {
                sb.append(this.g.get(i2));
                i = i2 + 1;
            } else {
                return ((CharSequence) sb) + this.f6974d + "," + a(this.f6973c.toString()) + " " + a(this.f6972b.toString()) + " " + this.f + "\n";
            }
        }
    }

    private long d() {
        return System.currentTimeMillis() * 1000000;
    }

    private String a(String str) {
        int iLastIndexOf = str.lastIndexOf(",");
        if (iLastIndexOf != -1) {
            return str.substring(0, iLastIndexOf);
        }
        return str;
    }

    @Override // com.roblox.client.datastructures.c
    public boolean a() {
        return com.roblox.client.b.y() != null;
    }
}
