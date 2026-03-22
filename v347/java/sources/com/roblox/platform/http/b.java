package com.roblox.platform.http;

import b.l;
import b.m;
import b.s;
import com.roblox.platform.d;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class b extends CookieManager implements m {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f8047b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private android.webkit.CookieManager f8048c;

    public b(CookiePolicy cookiePolicy) {
        super(null, cookiePolicy);
        this.f8047b = "rbx.platform";
        this.f8048c = android.webkit.CookieManager.getInstance();
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public void put(URI uri, Map<String, List<String>> map) {
        if (uri != null && map != null) {
            d.a("rbx.platform").a().b("WebViewCookieHandler.put() " + map.toString());
            String host = uri.getHost();
            for (String str : map.keySet()) {
                if (str != null && (str.equalsIgnoreCase("Set-Cookie2") || str.equalsIgnoreCase("Set-Cookie"))) {
                    Iterator<String> it = map.get(str).iterator();
                    while (it.hasNext()) {
                        this.f8048c.setCookie(host, it.next());
                    }
                }
            }
        }
    }

    @Override // java.net.CookieManager, java.net.CookieHandler
    public Map<String, List<String>> get(URI uri, Map<String, List<String>> map) {
        if (uri == null || map == null) {
            return null;
        }
        d.a("rbx.platform").a().b("WebViewCookieHandler.get() " + map.toString());
        String string = uri.toString();
        HashMap map2 = new HashMap();
        String cookie = this.f8048c.getCookie(string);
        if (cookie != null) {
            map2.put("Cookie", Arrays.asList(cookie));
            return map2;
        }
        return map2;
    }

    @Override // b.m
    public void a(s sVar, List<l> list) {
        d.a("rbx.platform").a().b("WebViewCookieHandler.saveFromResponse() " + list.toString());
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        Iterator<l> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().toString());
        }
        map.put("Set-Cookie", arrayList);
        put(sVar.a(), map);
    }

    @Override // b.m
    public List<l> a(s sVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<List<String>> it = get(sVar.a(), new HashMap()).values().iterator();
        while (it.hasNext()) {
            Iterator<String> it2 = it.next().iterator();
            while (it2.hasNext()) {
                for (String str : it2.next().split(";")) {
                    arrayList.add(l.a(sVar, str));
                }
            }
        }
        d.a("rbx.platform").a().b("WebViewCookieHandler.loadForRequest() " + arrayList.toString());
        return arrayList;
    }

    public void a(String str, String str2) {
        d.a("rbx.platform").a().d("WebViewCookieHandler.removeSecurityCookie() url:" + str2 + " domain:" + str);
        this.f8048c.setCookie(str2, ".ROBLOSECURITY=;expires=Wed, 10 May 2000 23:59:59 GMT;path=/;domain=" + str);
    }

    public String a(String str) {
        return this.f8048c.getCookie(str);
    }
}
