package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.api.ImaSdkSettings;
import com.google.ads.interactivemedia.v3.impl.data.i;
import com.google.ads.interactivemedia.v3.impl.g;
import com.google.ads.interactivemedia.v3.impl.l;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class g extends i {
    private final Map<String, String> adTagParameters;
    private final String adTagUrl;
    private final String adsResponse;
    private final String apiKey;
    private final String assetKey;
    private final Boolean attemptPreroll;
    private final Map<String, String> companionSlots;
    private final String contentSourceId;
    private final String env;
    private final Map<String, String> extraParameters;
    private final Boolean isTv;
    private final g.b marketAppInfo;
    private final String msParameter;
    private final String network;
    private final ImaSdkSettings settings;
    private final String videoId;
    private final l.a videoPlayActivation;

    private g(String str, String str2, String str3, String str4, String str5, String str6, Boolean bool, Map<String, String> map, String str7, String str8, l.a aVar, Map<String, String> map2, Map<String, String> map3, ImaSdkSettings imaSdkSettings, g.b bVar, Boolean bool2, String str9) {
        this.adsResponse = str;
        this.adTagUrl = str2;
        this.assetKey = str3;
        this.contentSourceId = str4;
        this.videoId = str5;
        this.apiKey = str6;
        this.attemptPreroll = bool;
        this.adTagParameters = map;
        this.env = str7;
        this.network = str8;
        this.videoPlayActivation = aVar;
        this.companionSlots = map2;
        this.extraParameters = map3;
        this.settings = imaSdkSettings;
        this.marketAppInfo = bVar;
        this.isTv = bool2;
        this.msParameter = str9;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String adsResponse() {
        return this.adsResponse;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String adTagUrl() {
        return this.adTagUrl;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String assetKey() {
        return this.assetKey;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String contentSourceId() {
        return this.contentSourceId;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String videoId() {
        return this.videoId;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String apiKey() {
        return this.apiKey;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public Boolean attemptPreroll() {
        return this.attemptPreroll;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public Map<String, String> adTagParameters() {
        return this.adTagParameters;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String env() {
        return this.env;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String network() {
        return this.network;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public l.a videoPlayActivation() {
        return this.videoPlayActivation;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public Map<String, String> companionSlots() {
        return this.companionSlots;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public Map<String, String> extraParameters() {
        return this.extraParameters;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public ImaSdkSettings settings() {
        return this.settings;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public g.b marketAppInfo() {
        return this.marketAppInfo;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public Boolean isTv() {
        return this.isTv;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.i
    public String msParameter() {
        return this.msParameter;
    }

    public String toString() {
        String str = this.adsResponse;
        String str2 = this.adTagUrl;
        String str3 = this.assetKey;
        String str4 = this.contentSourceId;
        String str5 = this.videoId;
        String str6 = this.apiKey;
        String strValueOf = String.valueOf(this.attemptPreroll);
        String strValueOf2 = String.valueOf(this.adTagParameters);
        String str7 = this.env;
        String str8 = this.network;
        String strValueOf3 = String.valueOf(this.videoPlayActivation);
        String strValueOf4 = String.valueOf(this.companionSlots);
        String strValueOf5 = String.valueOf(this.extraParameters);
        String strValueOf6 = String.valueOf(this.settings);
        String strValueOf7 = String.valueOf(this.marketAppInfo);
        String strValueOf8 = String.valueOf(this.isTv);
        String str9 = this.msParameter;
        return new StringBuilder(String.valueOf(str).length() + 243 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + String.valueOf(str6).length() + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length() + String.valueOf(str7).length() + String.valueOf(str8).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length() + String.valueOf(strValueOf6).length() + String.valueOf(strValueOf7).length() + String.valueOf(strValueOf8).length() + String.valueOf(str9).length()).append("GsonAdsRequest{adsResponse=").append(str).append(", adTagUrl=").append(str2).append(", assetKey=").append(str3).append(", contentSourceId=").append(str4).append(", videoId=").append(str5).append(", apiKey=").append(str6).append(", attemptPreroll=").append(strValueOf).append(", adTagParameters=").append(strValueOf2).append(", env=").append(str7).append(", network=").append(str8).append(", videoPlayActivation=").append(strValueOf3).append(", companionSlots=").append(strValueOf4).append(", extraParameters=").append(strValueOf5).append(", settings=").append(strValueOf6).append(", marketAppInfo=").append(strValueOf7).append(", isTv=").append(strValueOf8).append(", msParameter=").append(str9).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.adsResponse != null ? this.adsResponse.equals(iVar.adsResponse()) : iVar.adsResponse() == null) {
            if (this.adTagUrl != null ? this.adTagUrl.equals(iVar.adTagUrl()) : iVar.adTagUrl() == null) {
                if (this.assetKey != null ? this.assetKey.equals(iVar.assetKey()) : iVar.assetKey() == null) {
                    if (this.contentSourceId != null ? this.contentSourceId.equals(iVar.contentSourceId()) : iVar.contentSourceId() == null) {
                        if (this.videoId != null ? this.videoId.equals(iVar.videoId()) : iVar.videoId() == null) {
                            if (this.apiKey != null ? this.apiKey.equals(iVar.apiKey()) : iVar.apiKey() == null) {
                                if (this.attemptPreroll != null ? this.attemptPreroll.equals(iVar.attemptPreroll()) : iVar.attemptPreroll() == null) {
                                    if (this.adTagParameters != null ? this.adTagParameters.equals(iVar.adTagParameters()) : iVar.adTagParameters() == null) {
                                        if (this.env != null ? this.env.equals(iVar.env()) : iVar.env() == null) {
                                            if (this.network != null ? this.network.equals(iVar.network()) : iVar.network() == null) {
                                                if (this.videoPlayActivation != null ? this.videoPlayActivation.equals(iVar.videoPlayActivation()) : iVar.videoPlayActivation() == null) {
                                                    if (this.companionSlots != null ? this.companionSlots.equals(iVar.companionSlots()) : iVar.companionSlots() == null) {
                                                        if (this.extraParameters != null ? this.extraParameters.equals(iVar.extraParameters()) : iVar.extraParameters() == null) {
                                                            if (this.settings != null ? this.settings.equals(iVar.settings()) : iVar.settings() == null) {
                                                                if (this.marketAppInfo != null ? this.marketAppInfo.equals(iVar.marketAppInfo()) : iVar.marketAppInfo() == null) {
                                                                    if (this.isTv != null ? this.isTv.equals(iVar.isTv()) : iVar.isTv() == null) {
                                                                        if (this.msParameter == null) {
                                                                            if (iVar.msParameter() == null) {
                                                                                return true;
                                                                            }
                                                                        } else if (this.msParameter.equals(iVar.msParameter())) {
                                                                            return true;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        return (((this.isTv == null ? 0 : this.isTv.hashCode()) ^ (((this.marketAppInfo == null ? 0 : this.marketAppInfo.hashCode()) ^ (((this.settings == null ? 0 : this.settings.hashCode()) ^ (((this.extraParameters == null ? 0 : this.extraParameters.hashCode()) ^ (((this.companionSlots == null ? 0 : this.companionSlots.hashCode()) ^ (((this.videoPlayActivation == null ? 0 : this.videoPlayActivation.hashCode()) ^ (((this.network == null ? 0 : this.network.hashCode()) ^ (((this.env == null ? 0 : this.env.hashCode()) ^ (((this.adTagParameters == null ? 0 : this.adTagParameters.hashCode()) ^ (((this.attemptPreroll == null ? 0 : this.attemptPreroll.hashCode()) ^ (((this.apiKey == null ? 0 : this.apiKey.hashCode()) ^ (((this.videoId == null ? 0 : this.videoId.hashCode()) ^ (((this.contentSourceId == null ? 0 : this.contentSourceId.hashCode()) ^ (((this.assetKey == null ? 0 : this.assetKey.hashCode()) ^ (((this.adTagUrl == null ? 0 : this.adTagUrl.hashCode()) ^ (((this.adsResponse == null ? 0 : this.adsResponse.hashCode()) ^ 1000003) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003) ^ (this.msParameter != null ? this.msParameter.hashCode() : 0);
    }

    static final class a implements i.a {
        private Map<String, String> adTagParameters;
        private String adTagUrl;
        private String adsResponse;
        private String apiKey;
        private String assetKey;
        private Boolean attemptPreroll;
        private Map<String, String> companionSlots;
        private String contentSourceId;
        private String env;
        private Map<String, String> extraParameters;
        private Boolean isTv;
        private g.b marketAppInfo;
        private String msParameter;
        private String network;
        private ImaSdkSettings settings;
        private String videoId;
        private l.a videoPlayActivation;

        a() {
        }

        a(i iVar) {
            this.adsResponse = iVar.adsResponse();
            this.adTagUrl = iVar.adTagUrl();
            this.assetKey = iVar.assetKey();
            this.contentSourceId = iVar.contentSourceId();
            this.videoId = iVar.videoId();
            this.apiKey = iVar.apiKey();
            this.attemptPreroll = iVar.attemptPreroll();
            this.adTagParameters = iVar.adTagParameters();
            this.env = iVar.env();
            this.network = iVar.network();
            this.videoPlayActivation = iVar.videoPlayActivation();
            this.companionSlots = iVar.companionSlots();
            this.extraParameters = iVar.extraParameters();
            this.settings = iVar.settings();
            this.marketAppInfo = iVar.marketAppInfo();
            this.isTv = iVar.isTv();
            this.msParameter = iVar.msParameter();
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a adsResponse(String str) {
            this.adsResponse = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a adTagUrl(String str) {
            this.adTagUrl = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a assetKey(String str) {
            this.assetKey = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a contentSourceId(String str) {
            this.contentSourceId = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a videoId(String str) {
            this.videoId = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a apiKey(String str) {
            this.apiKey = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a attemptPreroll(Boolean bool) {
            this.attemptPreroll = bool;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a adTagParameters(Map<String, String> map) {
            this.adTagParameters = map;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a env(String str) {
            this.env = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a network(String str) {
            this.network = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a videoPlayActivation(l.a aVar) {
            this.videoPlayActivation = aVar;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a companionSlots(Map<String, String> map) {
            this.companionSlots = map;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a extraParameters(Map<String, String> map) {
            this.extraParameters = map;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a settings(ImaSdkSettings imaSdkSettings) {
            this.settings = imaSdkSettings;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a marketAppInfo(g.b bVar) {
            this.marketAppInfo = bVar;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a isTv(Boolean bool) {
            this.isTv = bool;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i.a msParameter(String str) {
            this.msParameter = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.i.a
        public i build() {
            return new g(this.adsResponse, this.adTagUrl, this.assetKey, this.contentSourceId, this.videoId, this.apiKey, this.attemptPreroll, this.adTagParameters, this.env, this.network, this.videoPlayActivation, this.companionSlots, this.extraParameters, this.settings, this.marketAppInfo, this.isTv, this.msParameter);
        }
    }
}
