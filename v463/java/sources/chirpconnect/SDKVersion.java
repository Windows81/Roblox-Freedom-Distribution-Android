package chirpconnect;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class SDKVersion implements Seq.Proxy {
    private final int refnum;

    static {
        Chirpconnect.touch();
    }

    public SDKVersion() {
        int i__New = __New();
        this.refnum = i__New;
        Seq.trackGoRef(i__New, this);
    }

    SDKVersion(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SDKVersion)) {
            return false;
        }
        SDKVersion sDKVersion = (SDKVersion) obj;
        SDKPackage connect = getConnect();
        SDKPackage connect2 = sDKVersion.getConnect();
        if (connect == null) {
            if (connect2 != null) {
                return false;
            }
        } else if (!connect.equals(connect2)) {
            return false;
        }
        SDKPackage core = getCore();
        SDKPackage core2 = sDKVersion.getCore();
        if (core == null) {
            if (core2 != null) {
                return false;
            }
        } else if (!core.equals(core2)) {
            return false;
        }
        SDKPackage crypto = getCrypto();
        SDKPackage crypto2 = sDKVersion.getCrypto();
        return crypto == null ? crypto2 == null : crypto.equals(crypto2);
    }

    public final native SDKPackage getConnect();

    public final native SDKPackage getCore();

    public final native SDKPackage getCrypto();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getConnect(), getCore(), getCrypto()});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public final native void setConnect(SDKPackage sDKPackage);

    public final native void setCore(SDKPackage sDKPackage);

    public final native void setCrypto(SDKPackage sDKPackage);

    public String toString() {
        return "SDKVersion{Connect:" + getConnect() + ",Core:" + getCore() + ",Crypto:" + getCrypto() + ",}";
    }
}
