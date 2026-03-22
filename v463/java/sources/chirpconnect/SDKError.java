package chirpconnect;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class SDKError implements Seq.Proxy {
    private final int refnum;

    static {
        Chirpconnect.touch();
    }

    public SDKError() {
        int i__New = __New();
        this.refnum = i__New;
        Seq.trackGoRef(i__New, this);
    }

    SDKError(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SDKError)) {
            return false;
        }
        return true;
    }

    public native String error();

    public native short errorCode();

    public int hashCode() {
        return Arrays.hashCode(new Object[0]);
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public String toString() {
        return "SDKError{}";
    }
}
