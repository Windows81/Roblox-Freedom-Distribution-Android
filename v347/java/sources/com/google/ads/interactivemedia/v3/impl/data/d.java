package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.data.a;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class d extends com.google.ads.interactivemedia.v3.impl.data.a {
    private final String appState;
    private final String eventId;
    private final long nativeTime;
    private final a.AbstractC0060a nativeViewBounds;
    private final boolean nativeViewHidden;
    private final a.AbstractC0060a nativeViewVisibleBounds;
    private final double nativeVolume;
    private final String queryId;
    private final String vastEvent;

    private d(String str, String str2, String str3, String str4, long j, double d2, boolean z, a.AbstractC0060a abstractC0060a, a.AbstractC0060a abstractC0060a2) {
        this.queryId = str;
        this.eventId = str2;
        this.vastEvent = str3;
        this.appState = str4;
        this.nativeTime = j;
        this.nativeVolume = d2;
        this.nativeViewHidden = z;
        this.nativeViewBounds = abstractC0060a;
        this.nativeViewVisibleBounds = abstractC0060a2;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public String queryId() {
        return this.queryId;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public String eventId() {
        return this.eventId;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public String vastEvent() {
        return this.vastEvent;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public String appState() {
        return this.appState;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public long nativeTime() {
        return this.nativeTime;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public double nativeVolume() {
        return this.nativeVolume;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public boolean nativeViewHidden() {
        return this.nativeViewHidden;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public a.AbstractC0060a nativeViewBounds() {
        return this.nativeViewBounds;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.a
    public a.AbstractC0060a nativeViewVisibleBounds() {
        return this.nativeViewVisibleBounds;
    }

    public String toString() {
        String str = this.queryId;
        String str2 = this.eventId;
        String str3 = this.vastEvent;
        String str4 = this.appState;
        long j = this.nativeTime;
        double d2 = this.nativeVolume;
        boolean z = this.nativeViewHidden;
        String strValueOf = String.valueOf(this.nativeViewBounds);
        String strValueOf2 = String.valueOf(this.nativeViewVisibleBounds);
        return new StringBuilder(String.valueOf(str).length() + 203 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length()).append("ActivityMonitorData{queryId=").append(str).append(", eventId=").append(str2).append(", vastEvent=").append(str3).append(", appState=").append(str4).append(", nativeTime=").append(j).append(", nativeVolume=").append(d2).append(", nativeViewHidden=").append(z).append(", nativeViewBounds=").append(strValueOf).append(", nativeViewVisibleBounds=").append(strValueOf2).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof com.google.ads.interactivemedia.v3.impl.data.a)) {
            return false;
        }
        com.google.ads.interactivemedia.v3.impl.data.a aVar = (com.google.ads.interactivemedia.v3.impl.data.a) obj;
        return this.queryId.equals(aVar.queryId()) && this.eventId.equals(aVar.eventId()) && this.vastEvent.equals(aVar.vastEvent()) && this.appState.equals(aVar.appState()) && this.nativeTime == aVar.nativeTime() && Double.doubleToLongBits(this.nativeVolume) == Double.doubleToLongBits(aVar.nativeVolume()) && this.nativeViewHidden == aVar.nativeViewHidden() && this.nativeViewBounds.equals(aVar.nativeViewBounds()) && this.nativeViewVisibleBounds.equals(aVar.nativeViewVisibleBounds());
    }

    public int hashCode() {
        return (((((this.nativeViewHidden ? 1231 : 1237) ^ (((int) (((long) (((int) (((long) ((((((((this.queryId.hashCode() ^ 1000003) * 1000003) ^ this.eventId.hashCode()) * 1000003) ^ this.vastEvent.hashCode()) * 1000003) ^ this.appState.hashCode()) * 1000003)) ^ ((this.nativeTime >>> 32) ^ this.nativeTime))) * 1000003)) ^ ((Double.doubleToLongBits(this.nativeVolume) >>> 32) ^ Double.doubleToLongBits(this.nativeVolume)))) * 1000003)) * 1000003) ^ this.nativeViewBounds.hashCode()) * 1000003) ^ this.nativeViewVisibleBounds.hashCode();
    }

    static final class a implements a.b {
        private String appState;
        private String eventId;
        private Long nativeTime;
        private a.AbstractC0060a nativeViewBounds;
        private Boolean nativeViewHidden;
        private a.AbstractC0060a nativeViewVisibleBounds;
        private Double nativeVolume;
        private String queryId;
        private String vastEvent;

        a() {
        }

        a(com.google.ads.interactivemedia.v3.impl.data.a aVar) {
            this.queryId = aVar.queryId();
            this.eventId = aVar.eventId();
            this.vastEvent = aVar.vastEvent();
            this.appState = aVar.appState();
            this.nativeTime = Long.valueOf(aVar.nativeTime());
            this.nativeVolume = Double.valueOf(aVar.nativeVolume());
            this.nativeViewHidden = Boolean.valueOf(aVar.nativeViewHidden());
            this.nativeViewBounds = aVar.nativeViewBounds();
            this.nativeViewVisibleBounds = aVar.nativeViewVisibleBounds();
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b queryId(String str) {
            this.queryId = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b eventId(String str) {
            this.eventId = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b vastEvent(String str) {
            this.vastEvent = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b appState(String str) {
            this.appState = str;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b nativeTime(long j) {
            this.nativeTime = Long.valueOf(j);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b nativeVolume(double d2) {
            this.nativeVolume = Double.valueOf(d2);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b nativeViewHidden(boolean z) {
            this.nativeViewHidden = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b nativeViewBounds(a.AbstractC0060a abstractC0060a) {
            this.nativeViewBounds = abstractC0060a;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public a.b nativeViewVisibleBounds(a.AbstractC0060a abstractC0060a) {
            this.nativeViewVisibleBounds = abstractC0060a;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.a.b
        public com.google.ads.interactivemedia.v3.impl.data.a build() {
            String strConcat = "";
            if (this.queryId == null) {
                strConcat = String.valueOf("").concat(" queryId");
            }
            if (this.eventId == null) {
                strConcat = String.valueOf(strConcat).concat(" eventId");
            }
            if (this.vastEvent == null) {
                strConcat = String.valueOf(strConcat).concat(" vastEvent");
            }
            if (this.appState == null) {
                strConcat = String.valueOf(strConcat).concat(" appState");
            }
            if (this.nativeTime == null) {
                strConcat = String.valueOf(strConcat).concat(" nativeTime");
            }
            if (this.nativeVolume == null) {
                strConcat = String.valueOf(strConcat).concat(" nativeVolume");
            }
            if (this.nativeViewHidden == null) {
                strConcat = String.valueOf(strConcat).concat(" nativeViewHidden");
            }
            if (this.nativeViewBounds == null) {
                strConcat = String.valueOf(strConcat).concat(" nativeViewBounds");
            }
            if (this.nativeViewVisibleBounds == null) {
                strConcat = String.valueOf(strConcat).concat(" nativeViewVisibleBounds");
            }
            if (!strConcat.isEmpty()) {
                String strValueOf = String.valueOf(strConcat);
                throw new IllegalStateException(strValueOf.length() != 0 ? "Missing required properties:".concat(strValueOf) : new String("Missing required properties:"));
            }
            return new d(this.queryId, this.eventId, this.vastEvent, this.appState, this.nativeTime.longValue(), this.nativeVolume.doubleValue(), this.nativeViewHidden.booleanValue(), this.nativeViewBounds, this.nativeViewVisibleBounds);
        }
    }
}
