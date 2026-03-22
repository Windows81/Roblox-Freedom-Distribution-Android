package com.roblox.platform.http;

import android.text.TextUtils;
import c.l;
import c.m;
import c.t;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class h extends CookieManager implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private android.webkit.CookieManager f7724b;

    public static h b() {
        return i.a().a();
    }

    public h(CookiePolicy cookiePolicy) {
        super(null, cookiePolicy);
        this.f7724b = android.webkit.CookieManager.getInstance();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public void put(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            return;
        }
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.put() " + map.toString());
        String host = uri.getHost();
        for (String str : map.keySet()) {
            if (str != null && (str.equalsIgnoreCase("Set-Cookie2") || str.equalsIgnoreCase("Set-Cookie"))) {
                Iterator<String> it = map.get(str).iterator();
                while (it.hasNext()) {
                    a(host, it.next());
                }
            }
        }
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public Map<String, List<String>> get(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            return null;
        }
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.get() " + map.toString());
        String string = uri.toString();
        HashMap map2 = new HashMap();
        String strA = a(string);
        if (!TextUtils.isEmpty(strA)) {
            map2.put("Cookie", Collections.singletonList(strA));
        }
        return map2;
    }

    public void a(t tVar, List<l> list) {
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.saveFromResponse() " + list.toString());
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        Iterator<l> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        map.put("Set-Cookie", arrayList);
        put(tVar.a(), map);
    }

    @Override // c.m
    public List<l> a(t tVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<List<String>> it = get(tVar.a(), new HashMap()).values().iterator();
        while (it.hasNext()) {
            Iterator<String> it2 = it.next().iterator();
            while (it2.hasNext()) {
                for (String str : it2.next().split(";")) {
                    l lVarA = l.a(tVar, str);
                    if (lVarA != null) {
                        arrayList.add(lVarA);
                    }
                }
            }
        }
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.loadForRequest() " + arrayList.toString());
        return arrayList;
    }

    public void b(String str, String str2) {
        com.roblox.platform.e.a("rbx.platform").a().d("WebViewCookieHandler.removeSecurityCookie() url:" + str2 + " domain:" + str);
        StringBuilder sb = new StringBuilder();
        sb.append(".ROBLOSECURITY=;expires=Wed, 10 May 2000 23:59:59 GMT;path=/;domain=");
        sb.append(str);
        a(str2, sb.toString());
    }

    public String a(String str) {
        return this.f7724b.getCookie(str);
    }

    public void a(String str, String str2) {
        this.f7724b.setCookie(str, str2);
    }
}
