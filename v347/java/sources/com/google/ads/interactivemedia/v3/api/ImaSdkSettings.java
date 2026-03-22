package com.google.ads.interactivemedia.v3.api;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class ImaSdkSettings {
    public static final int DEFAULT_MAX_REDIRECTS = 4;
    private String playerType;
    private String playerVersion;
    private String ppid;
    private transient boolean restrictToCustomPlayer;
    private int numRedirects = 4;
    private boolean onScreenDetection = true;
    private boolean autoPlayAdBreaks = true;
    private transient String language = "en";

    public String getPpid() {
        return this.ppid;
    }

    public void setPpid(String str) {
        this.ppid = str;
    }

    public int getMaxRedirects() {
        return this.numRedirects;
    }

    public void setMaxRedirects(int i) {
        this.numRedirects = i;
    }

    public String getLanguage() {
        return this.language;
    }

    public void setLanguage(String str) {
        this.language = str;
    }

    public boolean doesRestrictToCustomPlayer() {
        return this.restrictToCustomPlayer;
    }

    public void setRestrictToCustomPlayer(boolean z) {
        this.restrictToCustomPlayer = z;
    }

    public String getPlayerType() {
        return this.playerType;
    }

    public void setPlayerType(String str) {
        this.playerType = str;
    }

    public String getPlayerVersion() {
        return this.playerVersion;
    }

    public void setPlayerVersion(String str) {
        this.playerVersion = str;
    }

    public boolean getAutoPlayAdBreaks() {
        return this.autoPlayAdBreaks;
    }

    public void setAutoPlayAdBreaks(boolean z) {
        this.autoPlayAdBreaks = z;
    }

    public String toString() {
        String str = this.ppid;
        int i = this.numRedirects;
        String str2 = this.playerType;
        String str3 = this.playerVersion;
        boolean z = this.onScreenDetection;
        String str4 = this.language;
        boolean z2 = this.restrictToCustomPlayer;
        return new StringBuilder(String.valueOf(str).length() + 161 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length()).append("ImaSdkSettings [ppid=").append(str).append(", numRedirects=").append(i).append(", playerType=").append(str2).append(", playerVersion=").append(str3).append(", onScreenDetection=").append(z).append(", language=").append(str4).append(", restrictToCustom=").append(z2).append(", autoPlayAdBreaks=").append(this.autoPlayAdBreaks).append("]").toString();
    }
}
