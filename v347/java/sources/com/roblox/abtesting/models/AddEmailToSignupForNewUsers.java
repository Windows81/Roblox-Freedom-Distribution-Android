package com.roblox.abtesting.models;

import com.roblox.abtesting.models.ABTest;

/* JADX INFO: loaded from: classes.dex */
public class AddEmailToSignupForNewUsers extends ABTest {
    public static final String TEST_NAME = "NewUsers.SignUpPage.AddEmailToSignup";

    public AddEmailToSignupForNewUsers() {
        super(TEST_NAME, ABTest.SubjectTypes.BROWSER_TRACKER_ID);
    }
}
