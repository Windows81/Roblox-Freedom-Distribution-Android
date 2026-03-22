package microsoft.aspnet.signalr.client;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class Version {
    int[] mParts;

    public Version(String str) {
        try {
            String[] strArrSplit = str.split("\\.");
            this.mParts = new int[strArrSplit.length];
            for (int i = 0; i < strArrSplit.length; i++) {
                this.mParts[i] = Integer.parseInt(strArrSplit[i]);
            }
        } catch (Exception e) {
            throw new IllegalArgumentException(str);
        }
    }

    public int getPart(int i) {
        return this.mParts[i];
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        if (version.mParts.length != this.mParts.length) {
            return false;
        }
        for (int i = 0; i < this.mParts.length; i++) {
            if (this.mParts[i] != version.mParts[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mParts.length; i++) {
            if (i != 0) {
                sb.append(".");
            }
            sb.append(this.mParts[i]);
        }
        return sb.toString().hashCode();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.mParts.length; i++) {
            if (i != 0) {
                sb.append(".");
            }
            sb.append(this.mParts[i]);
        }
        return sb.toString();
    }
}
