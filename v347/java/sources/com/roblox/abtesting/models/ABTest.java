package com.roblox.abtesting.models;

import com.roblox.client.b.c;
import com.roblox.client.util.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class ABTest {
    public static final int A_VARIANT = 1;
    private static final int BROWSER_TRACKER_ID_SUBJECT_TYPE = 2;
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

    private int getInternalSubjectType() {
        return this.mSubjectType == SubjectTypes.BROWSER_TRACKER_ID ? 2 : 1;
    }

    public Integer getVariation() {
        return this.mVariation;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ExperimentName", this.mExperimentName);
            jSONObject.put("SubjectType", String.valueOf(getInternalSubjectType()));
            jSONObject.put("SubjectTargetId", String.valueOf(this.mSubjectTargetId));
        } catch (JSONException e) {
            c.a("ABTest.toJson: Exception creating JSONObject.");
        }
        return jSONObject;
    }

    public static ABTest fromJson(JSONObject jSONObject) {
        try {
            ABTest aBTest = new ABTest(jSONObject.getString("ExperimentName"), jSONObject.getInt("SubjectType") == 1 ? SubjectTypes.USER_ID : SubjectTypes.BROWSER_TRACKER_ID);
            aBTest.setSubjectTargetId(jSONObject.getLong("SubjectTargetId"));
            if (jSONObject.opt("Variation") != null) {
                String string = jSONObject.getString("Variation");
                aBTest.mVariation = string.equals("null") ? null : Integer.valueOf(string);
            }
            String strOptString = jSONObject.optString("Status");
            if (!strOptString.isEmpty()) {
                aBTest.mStatus = strOptString;
                return aBTest;
            }
            if (aBTest.mVariation != null) {
                aBTest.mStatus = ENROLLMENT_STATUS_ENROLLED;
                return aBTest;
            }
            return aBTest;
        } catch (NumberFormatException e) {
            g.e("ABTestManager", "Exception parsing the Variation field.");
            c.a("ABTest.fromJson: Exception parsing the Variation field.");
            return null;
        } catch (JSONException e2) {
            g.e("ABTestManager", "Error parsing jsonObject.");
            c.a("ABTest.fromJson: Exception parsing jsonObject.");
            return null;
        }
    }
}
