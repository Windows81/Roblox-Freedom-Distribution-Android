package com.google.ads.interactivemedia.v3.api;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class AdError extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AdErrorCode f2775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdErrorType f2776b;

    public enum AdErrorType {
        LOAD,
        PLAY
    }

    public enum AdErrorCode {
        INTERNAL_ERROR(-1),
        VAST_MALFORMED_RESPONSE(100),
        UNKNOWN_AD_RESPONSE(1010),
        VAST_LOAD_TIMEOUT(301),
        VAST_TOO_MANY_REDIRECTS(302),
        VIDEO_PLAY_ERROR(400),
        VAST_MEDIA_LOAD_TIMEOUT(402),
        VAST_LINEAR_ASSET_MISMATCH(403),
        OVERLAY_AD_PLAYING_FAILED(500),
        OVERLAY_AD_LOADING_FAILED(502),
        VAST_NONLINEAR_ASSET_MISMATCH(503),
        COMPANION_AD_LOADING_FAILED(603),
        UNKNOWN_ERROR(900),
        VAST_EMPTY_RESPONSE(1009),
        FAILED_TO_REQUEST_ADS(1005),
        VAST_ASSET_NOT_FOUND(1007),
        ADS_REQUEST_NETWORK_ERROR(1012),
        INVALID_ARGUMENTS(1101),
        PLAYLIST_NO_CONTENT_TRACKING(1205);


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2778a;

        AdErrorCode(int i) {
            this.f2778a = i;
        }

        public int getErrorNumber() {
            return this.f2778a;
        }

        static AdErrorCode a(int i) {
            for (AdErrorCode adErrorCode : values()) {
                if (adErrorCode.getErrorNumber() == i) {
                    return adErrorCode;
                }
            }
            if (1204 == i) {
                return INTERNAL_ERROR;
            }
            return UNKNOWN_ERROR;
        }

        public boolean equals(int i) {
            return this.f2778a == i;
        }

        @Override // java.lang.Enum
        public String toString() {
            String strValueOf = String.valueOf(name());
            return new StringBuilder(String.valueOf(strValueOf).length() + 41).append("AdErrorCode [name: ").append(strValueOf).append(", number: ").append(this.f2778a).append("]").toString();
        }
    }

    public AdError(AdErrorType adErrorType, int i, String str) {
        this(adErrorType, AdErrorCode.a(i), str);
    }

    public AdError(AdErrorType adErrorType, AdErrorCode adErrorCode, String str) {
        super(str);
        this.f2776b = adErrorType;
        this.f2775a = adErrorCode;
    }

    public AdErrorType getErrorType() {
        return this.f2776b;
    }

    public AdErrorCode getErrorCode() {
        return this.f2775a;
    }

    public int getErrorCodeNumber() {
        return this.f2775a.getErrorNumber();
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return super.getMessage();
    }

    @Override // java.lang.Throwable
    public String toString() {
        String strValueOf = String.valueOf(this.f2776b);
        String strValueOf2 = String.valueOf(this.f2775a);
        String strValueOf3 = String.valueOf(getMessage());
        return new StringBuilder(String.valueOf(strValueOf).length() + 45 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length()).append("AdError [errorType: ").append(strValueOf).append(", errorCode: ").append(strValueOf2).append(", message: ").append(strValueOf3).append("]").toString();
    }
}
