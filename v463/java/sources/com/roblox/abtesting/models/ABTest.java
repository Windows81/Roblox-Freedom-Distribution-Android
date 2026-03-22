package com.roblox.abtesting.models;

import com.roblox.client.ae.k;
import com.roblox.client.analytics.d;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ABTest {
    public static final int A_VARIANT = 1;
    private static final int BROWSER_TRACKER_ID_SUBJECT_TYPE = 2;
    private static final String BROWSER_TRACKER_ID_SUBJECT_TYPE_STR = "BrowserTracker";
    public static final int B_VARIANT = 2;
    public static final int C_VARIANT = 3;
    public static final int D_VARIANT = 4;
    public static final String ENROLLMENT_STATUS_DECLINED = "Declined";
    public static final String ENROLLMENT_STATUS_ENROLLED = "Enrolled";
    public static final String ENROLLMENT_STATUS_INACTIVE = "Inactive";
    public static final String ENROLLMENT_STATUS_LOCKED_ON = "LockedOn";
    public static final String ENROLLMENT_STATUS_NO_EXPERIMENT = "NoExperiment";
    public static final int E_VARIANT = 5;
    private static final int USER_ID_SUBJECT_TYPE = 1;
    private static final String USER_ID_SUBJECT_TYPE_STR = "User";
    private String mExperimentName;
    private SubjectTypes mSubjectType;
    private long mSubjectTargetId = -1;
    protected String mStatus = ENROLLMENT_STATUS_NO_EXPERIMENT;
    protected Integer mVariation = null;

    public enum SubjectTypes {
        USER_ID,
        BROWSER_TRACKER_ID
    }

    public ABTest(String str, SubjectTypes subjectTypes) {
        this.mExperimentName = str;
        this.mSubjectType = subjectTypes;
    }

    public void setSubjectTargetId(long j) {
        this.mSubjectTargetId = j;
    }

    public String getTestName() {
        return this.mExperimentName;
    }

    public SubjectTypes getSubjectType() {
        return this.mSubjectType;
    }

    private String getInternalSubjectTypeV1() {
        return this.mSubjectType == SubjectTypes.BROWSER_TRACKER_ID ? BROWSER_TRACKER_ID_SUBJECT_TYPE_STR : USER_ID_SUBJECT_TYPE_STR;
    }

    public Integer getVariation() {
        return this.mVariation;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public JSONObject toJsonV1() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ExperimentName", this.mExperimentName);
            jSONObject.put("SubjectType", getInternalSubjectTypeV1());
            jSONObject.put("SubjectTargetId", this.mSubjectTargetId);
        } catch (JSONException unused) {
            d.a("ABTest.toJson: Exception creating JSONObject.");
        }
        return jSONObject;
    }

    public static ABTest fromJsonV1(JSONObject jSONObject) {
        try {
            ABTest aBTest = new ABTest(jSONObject.getString("ExperimentName"), jSONObject.getString("SubjectType").equals(USER_ID_SUBJECT_TYPE_STR) ? SubjectTypes.USER_ID : SubjectTypes.BROWSER_TRACKER_ID);
            aBTest.setSubjectTargetId(jSONObject.getLong("SubjectTargetId"));
            if (jSONObject.opt("Variation") != null) {
                String string = jSONObject.getString("Variation");
                aBTest.mVariation = string.equals("null") ? null : Integer.valueOf(string);
            }
            String strOptString = jSONObject.optString("Status");
            if (!strOptString.isEmpty()) {
                aBTest.mStatus = strOptString;
            } else if (aBTest.mVariation != null) {
                aBTest.mStatus = ENROLLMENT_STATUS_ENROLLED;
            }
            k.c("ABTestManager", "Test created: Name: " + aBTest.getTestName() + ". Status: " + aBTest.getStatus() + ". Variation: " + aBTest.getVariation() + ".");
            return aBTest;
        } catch (NumberFormatException unused) {
            k.e("ABTestManager", "Exception parsing the Variation field.");
            d.a("ABTest.fromJson: Exception parsing the Variation field.");
            return null;
        } catch (JSONException e2) {
            k.e("ABTestManager", "Error parsing jsonObject. " + e2.getMessage());
            d.a("ABTest.fromJson: Exception parsing jsonObject.");
            return null;
        }
    }
}
