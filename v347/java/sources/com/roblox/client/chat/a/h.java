package com.roblox.client.chat.a;

import com.roblox.client.RobloxSettings;
import com.roblox.client.h;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Set<String> f6512b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static SimpleDateFormat f6513c = new SimpleDateFormat("h:mm aa");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static SimpleDateFormat f6514d = new SimpleDateFormat("EEE | h:mm aa");
    private static SimpleDateFormat e = new SimpleDateFormat("MMM d | h:mm aa");
    private static SimpleDateFormat f = new SimpleDateFormat("MMM d, yyyy | h:mm aa");
    private static Date g = new Date();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f6515a;
    private String h;
    private String i;
    private long j;
    private String k;
    private long l;
    private long m;
    private String n;
    private String o;
    private String p;
    private String q;
    private boolean r;
    private String s;
    private String t;
    private String u;
    private String v;
    private boolean w;
    private Boolean x;

    static {
        DateFormatSymbols dateFormatSymbols = new DateFormatSymbols(Locale.getDefault());
        dateFormatSymbols.setAmPmStrings(new String[]{"AM", "PM"});
        f6513c.setDateFormatSymbols(dateFormatSymbols);
        f6514d.setDateFormatSymbols(dateFormatSymbols);
        e.setDateFormatSymbols(dateFormatSymbols);
        f.setDateFormatSymbols(dateFormatSymbols);
        f6512b.add("User");
    }

    public static Set<String> a() {
        return f6512b;
    }

    public h() {
        this.x = null;
    }

    public h(long j, long j2, String str) {
        this.x = null;
        this.l = j;
        this.m = j;
        this.i = "User";
        this.j = j2;
        d(str);
        p();
    }

    public h(JSONObject jSONObject) throws JSONException {
        this.x = null;
        this.h = jSONObject.getString("id");
        this.i = jSONObject.getString("senderType");
        this.j = jSONObject.getLong("senderTargetId");
        d(jSONObject.getString("content"));
        this.r = jSONObject.getBoolean("read");
        this.l = i(jSONObject.getString("sent"));
        this.m = this.l;
        p();
        if (jSONObject.has("filteredForReceivers")) {
            a(Boolean.valueOf(jSONObject.optBoolean("filteredForReceivers")));
        }
    }

    private long i(String str) {
        return com.roblox.client.util.d.b(str);
    }

    private void p() {
        g.setTime(this.l);
        this.n = f6513c.format(g);
        this.o = f6514d.format(g);
        this.p = e.format(g);
        this.q = f.format(g);
    }

    public String a(int i) {
        if (i == 3) {
            return this.q;
        }
        if (i == 2) {
            return this.p;
        }
        if (i == 1) {
            return this.o;
        }
        return this.n;
    }

    public long b() {
        return this.l;
    }

    public void a(long j) {
        this.l = j;
        p();
    }

    public long c() {
        return this.m;
    }

    public void b(long j) {
        this.m = j;
    }

    public long d() {
        return this.j;
    }

    public void c(long j) {
        this.j = j;
    }

    public String e() {
        return this.h;
    }

    public void a(String str) {
        this.h = str;
    }

    public String f() {
        return this.s;
    }

    public void b(String str) {
        this.s = str;
    }

    public String g() {
        return this.t;
    }

    public int h() {
        return "Moderated".equals(n()) ? h.a.Feature_Chat_Response_ChatMsgContentModerated : h.a.Feature_Chat_Response_ChatMsgSendFailed;
    }

    public void c(String str) {
        this.t = str;
    }

    public String i() {
        return this.k;
    }

    public void d(String str) {
        this.k = str;
        if (com.roblox.client.b.br()) {
            this.w = j(str);
        }
    }

    public boolean j() {
        return this.w;
    }

    public boolean k() {
        return this.r;
    }

    public void a(boolean z) {
        this.r = z;
    }

    public String l() {
        return this.v;
    }

    public void e(String str) {
        this.v = str;
    }

    public void f(String str) {
        e(str.replaceAll("\\S", "#"));
    }

    public String m() {
        return this.i;
    }

    public void g(String str) {
        this.i = str;
    }

    public String n() {
        return this.u;
    }

    public void h(String str) {
        this.u = str;
    }

    public boolean o() {
        if (this.x != null) {
            return this.x.booleanValue();
        }
        return false;
    }

    private Boolean q() {
        return this.x;
    }

    public void a(Boolean bool) {
        if (bool != null) {
            this.x = bool;
        }
    }

    public void a(h hVar) {
        if (hVar != this) {
            a(hVar.e());
            b(hVar.f());
            d(hVar.i());
            g(hVar.m());
            c(hVar.d());
            a(hVar.b());
            b(hVar.c());
            a(hVar.k());
            c(hVar.g());
            e(hVar.l());
            h(hVar.n());
            a(hVar.q());
        }
    }

    private boolean j(String str) {
        return RobloxSettings.getGameLinkPattern().matcher(str).find();
    }
}
