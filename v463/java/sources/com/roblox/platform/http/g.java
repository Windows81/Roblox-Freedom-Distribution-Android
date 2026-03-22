package com.roblox.platform.http;

import com.roblox.platform.g;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f7716e = new Object();
    private static g f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.roblox.platform.d f7717a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f7718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set<a> f7719c = new LinkedHashSet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f7720d = new Runnable() { // from class: com.roblox.platform.http.g.1
        @Override // java.lang.Runnable
        public void run() {
            Iterator it = g.this.f7719c.iterator();
            while (it.hasNext()) {
                ((a) it.next()).j();
            }
        }
    };

    public interface a {
        void j();
    }

    public static g a() {
        g gVar;
        synchronized (f7716e) {
            if (f == null) {
                f = new g(new com.roblox.platform.g(new d(Executors.newSingleThreadScheduledExecutor(), 200), new g.a()));
            }
            gVar = f;
        }
        return gVar;
    }

    g(com.roblox.platform.d dVar) {
        this.f7717a = dVar;
    }

    public void a(final String str) {
        if (this.f7719c.size() == 0) {
            return;
        }
        this.f7717a.a().execute(new Runnable() { // from class: com.roblox.platform.http.g.2
            @Override // java.lang.Runnable
            public void run() {
                com.roblox.platform.e.a("rbx.platform").a().b("Verifying cookies.");
                String strB = g.this.b(h.b().a(str));
                if (strB == null || strB.equals(g.this.f7718b)) {
                    return;
                }
                com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.verifyCookies(): Cookie changed, notifying observers.");
                g.this.f7718b = strB;
                g.this.f7717a.b().execute(g.this.f7720d);
            }
        });
    }

    public void a(a aVar) {
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.registerCookieObserver().");
        this.f7719c.add(aVar);
    }

    public void b(a aVar) {
        com.roblox.platform.e.a("rbx.platform").a().b("WebViewCookieHandler.unregisterCookieObserver().");
        this.f7719c.remove(aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        int iIndexOf;
        if (str == null || (iIndexOf = str.indexOf(".ROBLOSECURITY")) == -1) {
            return null;
        }
        String strSubstring = str.substring(iIndexOf);
        int iIndexOf2 = strSubstring.indexOf(59);
        if (iIndexOf2 == -1) {
            iIndexOf2 = strSubstring.length();
        }
        return strSubstring.substring(0, iIndexOf2);
    }
}
