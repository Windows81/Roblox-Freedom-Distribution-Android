package com.google.ads.interactivemedia.v3.impl.data;

import com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
final class h extends TestingConfiguration {
    private final boolean disableExperiments;
    private final boolean enableMonitorAppLifecycle;
    private final Map<String, Object> extraParams;
    private final List<Long> forceExperimentIds;
    private final boolean forceTvMode;
    private final boolean ignoreStrictModeFalsePositives;
    private final boolean useTestStreamManager;
    private final boolean useVideoElementMock;
    private final float videoElementMockDuration;

    private h(boolean z, boolean z2, float f, boolean z3, boolean z4, List<Long> list, boolean z5, boolean z6, Map<String, Object> map) {
        this.disableExperiments = z;
        this.useVideoElementMock = z2;
        this.videoElementMockDuration = f;
        this.useTestStreamManager = z3;
        this.enableMonitorAppLifecycle = z4;
        this.forceExperimentIds = list;
        this.forceTvMode = z5;
        this.ignoreStrictModeFalsePositives = z6;
        this.extraParams = map;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean disableExperiments() {
        return this.disableExperiments;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean useVideoElementMock() {
        return this.useVideoElementMock;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public float videoElementMockDuration() {
        return this.videoElementMockDuration;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean useTestStreamManager() {
        return this.useTestStreamManager;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean enableMonitorAppLifecycle() {
        return this.enableMonitorAppLifecycle;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public List<Long> forceExperimentIds() {
        return this.forceExperimentIds;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean forceTvMode() {
        return this.forceTvMode;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public boolean ignoreStrictModeFalsePositives() {
        return this.ignoreStrictModeFalsePositives;
    }

    @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration
    public Map<String, Object> extraParams() {
        return this.extraParams;
    }

    public String toString() {
        boolean z = this.disableExperiments;
        boolean z2 = this.useVideoElementMock;
        float f = this.videoElementMockDuration;
        boolean z3 = this.useTestStreamManager;
        boolean z4 = this.enableMonitorAppLifecycle;
        String strValueOf = String.valueOf(this.forceExperimentIds);
        boolean z5 = this.forceTvMode;
        boolean z6 = this.ignoreStrictModeFalsePositives;
        String strValueOf2 = String.valueOf(this.extraParams);
        return new StringBuilder(String.valueOf(strValueOf).length() + 268 + String.valueOf(strValueOf2).length()).append("TestingConfiguration{disableExperiments=").append(z).append(", useVideoElementMock=").append(z2).append(", videoElementMockDuration=").append(f).append(", useTestStreamManager=").append(z3).append(", enableMonitorAppLifecycle=").append(z4).append(", forceExperimentIds=").append(strValueOf).append(", forceTvMode=").append(z5).append(", ignoreStrictModeFalsePositives=").append(z6).append(", extraParams=").append(strValueOf2).append("}").toString();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof TestingConfiguration)) {
            return false;
        }
        TestingConfiguration testingConfiguration = (TestingConfiguration) obj;
        if (this.disableExperiments == testingConfiguration.disableExperiments() && this.useVideoElementMock == testingConfiguration.useVideoElementMock() && Float.floatToIntBits(this.videoElementMockDuration) == Float.floatToIntBits(testingConfiguration.videoElementMockDuration()) && this.useTestStreamManager == testingConfiguration.useTestStreamManager() && this.enableMonitorAppLifecycle == testingConfiguration.enableMonitorAppLifecycle() && (this.forceExperimentIds != null ? this.forceExperimentIds.equals(testingConfiguration.forceExperimentIds()) : testingConfiguration.forceExperimentIds() == null) && this.forceTvMode == testingConfiguration.forceTvMode() && this.ignoreStrictModeFalsePositives == testingConfiguration.ignoreStrictModeFalsePositives()) {
            if (this.extraParams == null) {
                if (testingConfiguration.extraParams() == null) {
                    return true;
                }
            } else if (this.extraParams.equals(testingConfiguration.extraParams())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return (((((this.forceTvMode ? 1231 : 1237) ^ (((this.forceExperimentIds == null ? 0 : this.forceExperimentIds.hashCode()) ^ (((this.enableMonitorAppLifecycle ? 1231 : 1237) ^ (((this.useTestStreamManager ? 1231 : 1237) ^ (((((this.useVideoElementMock ? 1231 : 1237) ^ (((this.disableExperiments ? 1231 : 1237) ^ 1000003) * 1000003)) * 1000003) ^ Float.floatToIntBits(this.videoElementMockDuration)) * 1000003)) * 1000003)) * 1000003)) * 1000003)) * 1000003) ^ (this.ignoreStrictModeFalsePositives ? 1231 : 1237)) * 1000003) ^ (this.extraParams != null ? this.extraParams.hashCode() : 0);
    }

    static final class a implements TestingConfiguration.Builder {
        private Boolean disableExperiments;
        private Boolean enableMonitorAppLifecycle;
        private Map<String, Object> extraParams;
        private List<Long> forceExperimentIds;
        private Boolean forceTvMode;
        private Boolean ignoreStrictModeFalsePositives;
        private Boolean useTestStreamManager;
        private Boolean useVideoElementMock;
        private Float videoElementMockDuration;

        a() {
        }

        a(TestingConfiguration testingConfiguration) {
            this.disableExperiments = Boolean.valueOf(testingConfiguration.disableExperiments());
            this.useVideoElementMock = Boolean.valueOf(testingConfiguration.useVideoElementMock());
            this.videoElementMockDuration = Float.valueOf(testingConfiguration.videoElementMockDuration());
            this.useTestStreamManager = Boolean.valueOf(testingConfiguration.useTestStreamManager());
            this.enableMonitorAppLifecycle = Boolean.valueOf(testingConfiguration.enableMonitorAppLifecycle());
            this.forceExperimentIds = testingConfiguration.forceExperimentIds();
            this.forceTvMode = Boolean.valueOf(testingConfiguration.forceTvMode());
            this.ignoreStrictModeFalsePositives = Boolean.valueOf(testingConfiguration.ignoreStrictModeFalsePositives());
            this.extraParams = testingConfiguration.extraParams();
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder disableExperiments(boolean z) {
            this.disableExperiments = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder useVideoElementMock(boolean z) {
            this.useVideoElementMock = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder videoElementMockDuration(float f) {
            this.videoElementMockDuration = Float.valueOf(f);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder useTestStreamManager(boolean z) {
            this.useTestStreamManager = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder enableMonitorAppLifecycle(boolean z) {
            this.enableMonitorAppLifecycle = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder forceExperimentIds(List<Long> list) {
            this.forceExperimentIds = list;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder forceTvMode(boolean z) {
            this.forceTvMode = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder ignoreStrictModeFalsePositives(boolean z) {
            this.ignoreStrictModeFalsePositives = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration.Builder extraParams(Map<String, Object> map) {
            this.extraParams = map;
            return this;
        }

        @Override // com.google.ads.interactivemedia.v3.impl.data.TestingConfiguration.Builder
        public TestingConfiguration build() {
            String strConcat = "";
            if (this.disableExperiments == null) {
                strConcat = String.valueOf("").concat(" disableExperiments");
            }
            if (this.useVideoElementMock == null) {
                strConcat = String.valueOf(strConcat).concat(" useVideoElementMock");
            }
            if (this.videoElementMockDuration == null) {
                strConcat = String.valueOf(strConcat).concat(" videoElementMockDuration");
            }
            if (this.useTestStreamManager == null) {
                strConcat = String.valueOf(strConcat).concat(" useTestStreamManager");
            }
            if (this.enableMonitorAppLifecycle == null) {
                strConcat = String.valueOf(strConcat).concat(" enableMonitorAppLifecycle");
            }
            if (this.forceTvMode == null) {
                strConcat = String.valueOf(strConcat).concat(" forceTvMode");
            }
            if (this.ignoreStrictModeFalsePositives == null) {
                strConcat = String.valueOf(strConcat).concat(" ignoreStrictModeFalsePositives");
            }
            if (!strConcat.isEmpty()) {
                String strValueOf = String.valueOf(strConcat);
                throw new IllegalStateException(strValueOf.length() != 0 ? "Missing required properties:".concat(strValueOf) : new String("Missing required properties:"));
            }
            return new h(this.disableExperiments.booleanValue(), this.useVideoElementMock.booleanValue(), this.videoElementMockDuration.floatValue(), this.useTestStreamManager.booleanValue(), this.enableMonitorAppLifecycle.booleanValue(), this.forceExperimentIds, this.forceTvMode.booleanValue(), this.ignoreStrictModeFalsePositives.booleanValue(), this.extraParams);
        }
    }
}
