package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.api.internal.f;
import com.google.android.gms.common.internal.aa;
import com.google.android.gms.internal.measurement.fc;
import com.google.android.gms.internal.measurement.gv;
import com.google.android.gms.internal.measurement.iq;
import com.google.android.gms.internal.measurement.zzjx;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@Deprecated
public class AppMeasurement {
    public static final String CRASH_ORIGIN = "crash";
    public static final String FCM_ORIGIN = "fcm";
    private final fc zzacw;

    public static class ConditionalUserProperty {
        public boolean mActive;
        public String mAppId;
        public long mCreationTimestamp;
        public String mExpiredEventName;
        public Bundle mExpiredEventParams;
        public String mName;
        public String mOrigin;
        public long mTimeToLive;
        public String mTimedOutEventName;
        public Bundle mTimedOutEventParams;
        public String mTriggerEventName;
        public long mTriggerTimeout;
        public String mTriggeredEventName;
        public Bundle mTriggeredEventParams;
        public long mTriggeredTimestamp;
        public Object mValue;

        public ConditionalUserProperty() {
        }

        public ConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
            aa.a(conditionalUserProperty);
            this.mAppId = conditionalUserProperty.mAppId;
            this.mOrigin = conditionalUserProperty.mOrigin;
            this.mCreationTimestamp = conditionalUserProperty.mCreationTimestamp;
            this.mName = conditionalUserProperty.mName;
            Object obj = conditionalUserProperty.mValue;
            if (obj != null) {
                Object objB = iq.b(obj);
                this.mValue = objB;
                if (objB == null) {
                    this.mValue = conditionalUserProperty.mValue;
                }
            }
            this.mActive = conditionalUserProperty.mActive;
            this.mTriggerEventName = conditionalUserProperty.mTriggerEventName;
            this.mTriggerTimeout = conditionalUserProperty.mTriggerTimeout;
            this.mTimedOutEventName = conditionalUserProperty.mTimedOutEventName;
            if (conditionalUserProperty.mTimedOutEventParams != null) {
                this.mTimedOutEventParams = new Bundle(conditionalUserProperty.mTimedOutEventParams);
            }
            this.mTriggeredEventName = conditionalUserProperty.mTriggeredEventName;
            if (conditionalUserProperty.mTriggeredEventParams != null) {
                this.mTriggeredEventParams = new Bundle(conditionalUserProperty.mTriggeredEventParams);
            }
            this.mTriggeredTimestamp = conditionalUserProperty.mTriggeredTimestamp;
            this.mTimeToLive = conditionalUserProperty.mTimeToLive;
            this.mExpiredEventName = conditionalUserProperty.mExpiredEventName;
            if (conditionalUserProperty.mExpiredEventParams != null) {
                this.mExpiredEventParams = new Bundle(conditionalUserProperty.mExpiredEventParams);
            }
        }
    }

    public static final class a extends FirebaseAnalytics.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f4733a = {"app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "ad_reward", "screen_view", "ga_extra_parameter"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f4734b = {"_cd", "_ae", "_ui", "_ug", "_in", "_au", "_cmp", "_err", "_f", "_v", "_iap", "_nd", "_nf", "_no", "_nr", "_ou", "_s", "_e", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "_ar", "_vs", "_ep"};

        public static String a(String str) {
            return iq.a(str, f4733a, f4734b);
        }
    }

    public interface b {
        void a(String str, String str2, Bundle bundle, long j);
    }

    public interface c {
        void a(String str, String str2, Bundle bundle, long j);
    }

    public static final class d extends FirebaseAnalytics.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f4735a = {"firebase_conversion", "engagement_time_msec", "exposure_time", "ad_event_id", "ad_unit_id", "firebase_error", "firebase_error_value", "firebase_error_length", "firebase_event_origin", "firebase_screen", "firebase_screen_class", "firebase_screen_id", "firebase_previous_screen", "firebase_previous_class", "firebase_previous_id", "message_device_time", "message_id", "message_name", "message_time", "previous_app_version", "previous_os_version", "topic", "update_with_analytics", "previous_first_open_count", "system_app", "system_app_update", "previous_install_count", "ga_event_id", "ga_extra_params_ct", "ga_group_name", "ga_list_length", "ga_index", "ga_event_name", "campaign_info_source", "deferred_analytics_collection"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f4736b = {"_c", "_et", "_xt", "_aeid", "_ai", "_err", "_ev", "_el", "_o", "_sn", "_sc", "_si", "_pn", "_pc", "_pi", "_ndt", "_nmid", "_nmn", "_nmt", "_pv", "_po", "_nt", "_uwa", "_pfo", "_sys", "_sysu", "_pin", "_eid", "_epc", "_gn", "_ll", "_i", "_en", "_cis", "_dac"};

        public static String a(String str) {
            return iq.a(str, f4735a, f4736b);
        }
    }

    public static final class e extends FirebaseAnalytics.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String[] f4737a = {"firebase_last_notification", "first_open_time", "first_visit_time", "last_deep_link_referrer", "user_id", "first_open_after_install", "lifetime_user_engagement"};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String[] f4738b = {"_ln", "_fot", "_fvt", "_ldl", "_id", "_fi", "_lte"};

        public static String a(String str) {
            return iq.a(str, f4737a, f4738b);
        }
    }

    public AppMeasurement(fc fcVar) {
        aa.a(fcVar);
        this.zzacw = fcVar;
    }

    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        return fc.a(context).i();
    }

    public void beginAdUnitExposure(String str) {
        this.zzacw.v().a(str);
    }

    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.zzacw.h().c(str, str2, bundle);
    }

    protected void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        this.zzacw.h().a(str, str2, str3, bundle);
    }

    public void endAdUnitExposure(String str) {
        this.zzacw.v().b(str);
    }

    public long generateEventId() {
        return this.zzacw.m().v();
    }

    public String getAppInstanceId() {
        return this.zzacw.h().B();
    }

    public Boolean getBoolean() {
        return this.zzacw.h().v();
    }

    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        return this.zzacw.h().a(str, str2);
    }

    protected List<ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        return this.zzacw.h().a(str, str2, str3);
    }

    public String getCurrentScreenClass() {
        gv gvVarW = this.zzacw.r().w();
        if (gvVarW != null) {
            return gvVarW.f4438b;
        }
        return null;
    }

    public String getCurrentScreenName() {
        gv gvVarW = this.zzacw.r().w();
        if (gvVarW != null) {
            return gvVarW.f4437a;
        }
        return null;
    }

    public Double getDouble() {
        return this.zzacw.h().z();
    }

    public String getGmpAppId() {
        try {
            return f.a();
        } catch (IllegalStateException e2) {
            this.zzacw.q().v().a("getGoogleAppId failed with exception", e2);
            return null;
        }
    }

    public Integer getInteger() {
        return this.zzacw.h().y();
    }

    public Long getLong() {
        return this.zzacw.h().x();
    }

    public int getMaxUserProperties(String str) {
        this.zzacw.h();
        aa.a(str);
        return 25;
    }

    public String getString() {
        return this.zzacw.h().w();
    }

    protected Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.zzacw.h().a(str, str2, z);
    }

    public Map<String, Object> getUserProperties(boolean z) {
        List<zzjx> listB = this.zzacw.h().b(z);
        androidx.c.a aVar = new androidx.c.a(listB.size());
        for (zzjx zzjxVar : listB) {
            aVar.put(zzjxVar.f4728a, zzjxVar.a());
        }
        return aVar;
    }

    protected Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        return this.zzacw.h().a(str, str2, str3, z);
    }

    public final void logEvent(String str, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzacw.h().a("app", str, bundle, true);
    }

    public void logEventInternal(String str, String str2, Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzacw.h().a(str, str2, bundle);
    }

    public void logEventInternalNoInterceptor(String str, String str2, Bundle bundle, long j) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        this.zzacw.h().a(str, str2, bundle, j);
    }

    public void registerOnMeasurementEventListener(c cVar) {
        this.zzacw.h().a(cVar);
    }

    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        this.zzacw.h().a(conditionalUserProperty);
    }

    protected void setConditionalUserPropertyAs(ConditionalUserProperty conditionalUserProperty) {
        this.zzacw.h().b(conditionalUserProperty);
    }

    public void setEventInterceptor(b bVar) {
        this.zzacw.h().a(bVar);
    }

    @Deprecated
    public void setMeasurementEnabled(boolean z) {
        this.zzacw.h().a(z);
    }

    public final void setMinimumSessionDuration(long j) {
        this.zzacw.h().a(j);
    }

    public final void setSessionTimeoutDuration(long j) {
        this.zzacw.h().b(j);
    }

    public final void setUserProperty(String str, String str2) {
        int iC = this.zzacw.m().c(str);
        if (iC == 0) {
            setUserPropertyInternal("app", str, str2);
        } else {
            this.zzacw.m();
            this.zzacw.m().a(iC, "_ev", iq.a(str, 24, true), str != null ? str.length() : 0);
        }
    }

    public void setUserPropertyInternal(String str, String str2, Object obj) {
        this.zzacw.h().a(str, str2, obj);
    }

    public void unregisterOnMeasurementEventListener(c cVar) {
        this.zzacw.h().b(cVar);
    }
}
