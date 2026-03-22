package c.a.c;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum g {
    SPDY_SYN_STREAM,
    SPDY_REPLY,
    SPDY_HEADERS,
    HTTP_20_HEADERS;

    public boolean a() {
        return this == SPDY_REPLY || this == SPDY_HEADERS;
    }

    public boolean b() {
        return this == SPDY_SYN_STREAM;
    }

    public boolean c() {
        return this == SPDY_HEADERS;
    }

    public boolean d() {
        return this == SPDY_REPLY;
    }
}
