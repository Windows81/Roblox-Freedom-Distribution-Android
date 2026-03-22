package chirpconnect;

import go.Seq;
import java.util.Arrays;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class SDKPackage implements Seq.Proxy {
    private final int refnum;

    static {
        Chirpconnect.touch();
    }

    public SDKPackage() {
        int i__New = __New();
        this.refnum = i__New;
        Seq.trackGoRef(i__New, this);
    }

    SDKPackage(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof SDKPackage)) {
            return false;
        }
        SDKPackage sDKPackage = (SDKPackage) obj;
        String name = getName();
        String name2 = sDKPackage.getName();
        if (name == null) {
            if (name2 != null) {
                return false;
            }
        } else if (!name.equals(name2)) {
            return false;
        }
        String version = getVersion();
        String version2 = sDKPackage.getVersion();
        if (version == null) {
            if (version2 != null) {
                return false;
            }
        } else if (!version.equals(version2)) {
            return false;
        }
        String build = getBuild();
        String build2 = sDKPackage.getBuild();
        return build == null ? build2 == null : build.equals(build2);
    }

    public final native String getBuild();

    public final native String getName();

    public native String getString();

    public final native String getVersion();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getName(), getVersion(), getBuild()});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public final native void setBuild(String str);

    public final native void setName(String str);

    public final native void setVersion(String str);

    public String toString() {
        return "SDKPackage{Name:" + getName() + ",Version:" + getVersion() + ",Build:" + getBuild() + ",}";
    }
}
