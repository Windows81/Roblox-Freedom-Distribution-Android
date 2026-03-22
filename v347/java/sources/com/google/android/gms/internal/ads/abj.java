package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class abj extends IOException {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ack f3758a;

    public abj(String str) {
        super(str);
        this.f3758a = null;
    }

    static abj a() {
        return new abj("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static abj b() {
        return new abj("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static abj c() {
        return new abj("CodedInputStream encountered a malformed varint.");
    }

    static abj d() {
        return new abj("Protocol message contained an invalid tag (zero).");
    }

    static abj e() {
        return new abj("Protocol message end-group tag did not match expected tag.");
    }

    static abk f() {
        return new abk("Protocol message tag had invalid wire type.");
    }

    static abj g() {
        return new abj("Failed to parse the message.");
    }

    static abj h() {
        return new abj("Protocol message had invalid UTF-8.");
    }

    public final abj a(ack ackVar) {
        this.f3758a = ackVar;
        return this;
    }
}
