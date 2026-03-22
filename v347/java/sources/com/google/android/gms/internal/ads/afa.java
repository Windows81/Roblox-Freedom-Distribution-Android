package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class afa extends IOException {
    public afa(String str) {
        super(str);
    }

    static afa a() {
        return new afa("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static afa b() {
        return new afa("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static afa c() {
        return new afa("CodedInputStream encountered a malformed varint.");
    }
}
