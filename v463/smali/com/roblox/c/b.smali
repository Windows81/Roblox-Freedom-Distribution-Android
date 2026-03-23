.class public Lcom/roblox/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .line 496
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .line 10
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->AppRestart_SettingsChanged_Action_RestartApp:I

    const-string v2, "AppRestart_SettingsChanged_Action_RestartApp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->AppRestart_SettingsChanged_Message_OutOfSync:I

    const-string v2, "AppRestart_SettingsChanged_Message_OutOfSync"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Action_RatingNegativeButton:I

    const-string v2, "Application_AppRating_Action_RatingNegativeButton"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Action_RatingRemindMeLater:I

    const-string v2, "Application_AppRating_Action_RatingRemindMeLater"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Label_AppRatingDialogCloseButtonText:I

    const-string v2, "Application_AppRating_Label_AppRatingDialogCloseButtonText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Label_PleaseRate:I

    const-string v2, "Application_AppRating_Label_PleaseRate"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Label_RatingMessage:I

    const-string v2, "Application_AppRating_Label_RatingMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Label_RatingYes:I

    const-string v2, "Application_AppRating_Label_RatingYes"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_AppRating_Response_CouldNotLaunchPlayStore:I

    const-string v2, "Application_AppRating_Response_CouldNotLaunchPlayStore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Leave_Action_LeaveApp:I

    const-string v2, "Application_Leave_Action_LeaveApp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Leave_Response_LeaveAppConfirmation:I

    const-string v2, "Application_Leave_Response_LeaveAppConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Logout_Action_Logout:I

    const-string v2, "Application_Logout_Action_Logout"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Logout_Response_LogoutConfirmation:I

    const-string v2, "Application_Logout_Response_LogoutConfirmation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Logout_Response_SorryLoggedOut:I

    const-string v2, "Application_Logout_Response_SorryLoggedOut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Upgrade_Action_NotNow:I

    const-string v2, "Application_Upgrade_Action_NotNow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Upgrade_Action_Upgrade:I

    const-string v2, "Application_Upgrade_Action_Upgrade"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Upgrade_Response_Title:I

    const-string v2, "Application_Upgrade_Response_Title"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Application_Upgrade_Response_UpgradeBodyString:I

    const-string v2, "Application_Upgrade_Response_UpgradeBodyString"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Action_ResendCode:I

    const-string v2, "Authentication_2SV_Action_ResendCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Action_Verify:I

    const-string v2, "Authentication_2SV_Action_Verify"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_EnterCode:I

    const-string v2, "Authentication_2SV_Label_EnterCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_EnterEmailCode:I

    const-string v2, "Authentication_2SV_Label_EnterEmailCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_EnterTextCode:I

    const-string v2, "Authentication_2SV_Label_EnterTextCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_NeedHelp:I

    const-string v2, "Authentication_2SV_Label_NeedHelp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 34
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_TrustThisDevice:I

    const-string v2, "Authentication_2SV_Label_TrustThisDevice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Label_TwoStepVerification:I

    const-string v2, "Authentication_2SV_Label_TwoStepVerification"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 36
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_AccountIssueErrorTryAgain:I

    const-string v2, "Authentication_2SV_Response_AccountIssueErrorTryAgain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_CodeSent:I

    const-string v2, "Authentication_2SV_Response_CodeSent"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_FeatureNotAvailable:I

    const-string v2, "Authentication_2SV_Response_FeatureNotAvailable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 39
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_InvalidCode:I

    const-string v2, "Authentication_2SV_Response_InvalidCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_SystemErrorReturnToLogin:I

    const-string v2, "Authentication_2SV_Response_SystemErrorReturnToLogin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_TooManyAttempts:I

    const-string v2, "Authentication_2SV_Response_TooManyAttempts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_TwoStepEmptyCode:I

    const-string v2, "Authentication_2SV_Response_TwoStepEmptyCode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_UserNotFound:I

    const-string v2, "Authentication_2SV_Response_UserNotFound"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_TwoStepVerification_Response_VerificationDisabled:I

    const-string v2, "Authentication_2SV_Response_VerificationDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Action_Reload:I

    const-string v2, "Authentication_Captcha_Action_Reload"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Action_Submit:I

    const-string v2, "Authentication_Captcha_Action_Submit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Description_CaptchaHint:I

    const-string v2, "Authentication_Captcha_Description_CaptchaHint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Heading_CaptchaTitle:I

    const-string v2, "Authentication_Captcha_Heading_CaptchaTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Label_VerifyHuman:I

    const-string v2, "Authentication_Captcha_Label_VerifyHuman"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Response_CaptchaFailed:I

    const-string v2, "Authentication_Captcha_Response_CaptchaFailed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Captcha_Response_CaptchaFailedToLoad:I

    const-string v2, "Authentication_Captcha_Response_CaptchaFailedToLoad"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_Cancel:I

    const-string v2, "Authentication_Login_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_ForgotPassword:I

    const-string v2, "Authentication_Login_Action_ForgotPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_ForgotPasswordOrUsernameQuestion:I

    const-string v2, "Authentication_Login_Action_ForgotPasswordOrUsernameQuestion"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_LogInCapitalized:I

    const-string v2, "Authentication_Login_Action_LogInCapitalized"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_Login:I

    const-string v2, "Authentication_Login_Action_Login"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Action_SignUp:I

    const-string v2, "Authentication_Login_Action_SignUp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Description_CancelButtonContentDesc:I

    const-string v2, "Authentication_Login_Description_CancelButtonContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Description_LoginButtonContentDesc:I

    const-string v2, "Authentication_Login_Description_LoginButtonContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Description_PasswordContentDescription:I

    const-string v2, "Authentication_Login_Description_PasswordContentDescription"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Description_UsernameContentDescription:I

    const-string v2, "Authentication_Login_Description_UsernameContentDescription"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_DontHaveAnAccount:I

    const-string v2, "Authentication_Login_Label_DontHaveAnAccount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_Login_Uppercase:I

    const-string v2, "Authentication_Login_Label_Login_Uppercase"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_NotAMember:I

    const-string v2, "Authentication_Login_Label_NotAMember"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_Password:I

    const-string v2, "Authentication_Login_Label_Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_Username:I

    const-string v2, "Authentication_Login_Label_Username"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_UsernameEmail:I

    const-string v2, "Authentication_Login_Label_UsernameEmail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_UsernameEmailPhone:I

    const-string v2, "Authentication_Login_Label_UsernameEmailPhone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Label_UsernamePhone:I

    const-string v2, "Authentication_Login_Label_UsernamePhone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_AccountIssueErrorContactSupport:I

    const-string v2, "Authentication_Login_Response_AccountIssueErrorContactSupport"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_ErrorLoginWithUsername:I

    const-string v2, "Authentication_Login_Response_ErrorLoginWithUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectCredentialsForgotPasswordMessage:I

    const-string v2, "Authentication_Login_Response_IncorrectCredentialsForgotPasswordMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectEmailOrPasswordMessage:I

    const-string v2, "Authentication_Login_Response_IncorrectEmailOrPasswordMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectEmailPassword:I

    const-string v2, "Authentication_Login_Response_IncorrectEmailPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectPhoneOrPasswordMessage:I

    const-string v2, "Authentication_Login_Response_IncorrectPhoneOrPasswordMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectPhonePassword:I

    const-string v2, "Authentication_Login_Response_IncorrectPhonePassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectUsernameOrPasswordMessage:I

    const-string v2, "Authentication_Login_Response_IncorrectUsernameOrPasswordMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_IncorrectUsernamePassword:I

    const-string v2, "Authentication_Login_Response_IncorrectUsernamePassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_LoginIssueErrorContactSupport:I

    const-string v2, "Authentication_Login_Response_LoginIssueErrorContactSupport"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_MissingUsernamePasswordError:I

    const-string v2, "Authentication_Login_Response_MissingUsernamePasswordError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_MultipleAccountEmailLoginWithUsername:I

    const-string v2, "Authentication_Login_Response_MultipleAccountEmailLoginWithUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_PleaseEnterPassword:I

    const-string v2, "Authentication_Login_Response_PleaseEnterPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_PleaseEnterUsername:I

    const-string v2, "Authentication_Login_Response_PleaseEnterUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_PleaseTryAgain:I

    const-string v2, "Authentication_Login_Response_PleaseTryAgain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_SessionExpiredLoginAgain:I

    const-string v2, "Authentication_Login_Response_SessionExpiredLoginAgain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_SystemErrorTryLaterContactSupport:I

    const-string v2, "Authentication_Login_Response_SystemErrorTryLaterContactSupport"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_TooManyAttemptsMessage:I

    const-string v2, "Authentication_Login_Response_TooManyAttemptsMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_TooManyAttemptsMessageForEmail:I

    const-string v2, "Authentication_Login_Response_TooManyAttemptsMessageForEmail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_TooManyAttemptsMessageForPhone:I

    const-string v2, "Authentication_Login_Response_TooManyAttemptsMessageForPhone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_TooManyAttemptsMessageForUsername:I

    const-string v2, "Authentication_Login_Response_TooManyAttemptsMessageForUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_UnableToLogIn:I

    const-string v2, "Authentication_Login_Response_UnableToLogIn"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_UnverifiedEmailLoginWithUsername:I

    const-string v2, "Authentication_Login_Response_UnverifiedEmailLoginWithUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Login_Response_UnverifiedEmailPhoneWithUsername:I

    const-string v2, "Authentication_Login_Response_UnverifiedEmailPhoneWithUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Logout_Label_LoggingOut:I

    const-string v2, "Authentication_Logout_Label_LoggingOut"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_Logout_Label_LoggingOutOfAccount:I

    const-string v2, "Authentication_Logout_Label_LoggingOutOfAccount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Action_Cancel:I

    const-string v2, "Authentication_ResetPassword_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Action_Reset:I

    const-string v2, "Authentication_ResetPassword_Action_Reset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Label_ResetPassword:I

    const-string v2, "Authentication_ResetPassword_Label_ResetPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Label_ResetPasswordMessage:I

    const-string v2, "Authentication_ResetPassword_Label_ResetPasswordMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Label_Username:I

    const-string v2, "Authentication_ResetPassword_Label_Username"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_CheckEmailToResetPassword:I

    const-string v2, "Authentication_ResetPassword_Response_CheckEmailToResetPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_CheckYourEmail:I

    const-string v2, "Authentication_ResetPassword_Response_CheckYourEmail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_EmptyUsername:I

    const-string v2, "Authentication_ResetPassword_Response_EmptyUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_InvalidUsername:I

    const-string v2, "Authentication_ResetPassword_Response_InvalidUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_ResetPasswordStarted:I

    const-string v2, "Authentication_ResetPassword_Response_ResetPasswordStarted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_SystemError:I

    const-string v2, "Authentication_ResetPassword_Response_SystemError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_ResetPassword_Response_TooManyAttempts:I

    const-string v2, "Authentication_ResetPassword_Response_TooManyAttempts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Action_Cancel:I

    const-string v2, "Authentication_SignUp_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Action_LoginWord:I

    const-string v2, "Authentication_SignUp_Action_LoginWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Action_SignUp:I

    const-string v2, "Authentication_SignUp_Action_SignUp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_BirthdayDaySpinnerContentDesc:I

    const-string v2, "Authentication_SignUp_Description_BirthdayDaySpinnerContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 112
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_BirthdayMonthSpinnerContentDesc:I

    const-string v2, "Authentication_SignUp_Description_BirthdayMonthSpinnerContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 113
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_BirthdayYearSpinnerContentDesc:I

    const-string v2, "Authentication_SignUp_Description_BirthdayYearSpinnerContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 114
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_CancelButtonContentDesc:I

    const-string v2, "Authentication_SignUp_Description_CancelButtonContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_GenderPickerFemaleContentDesc:I

    const-string v2, "Authentication_SignUp_Description_GenderPickerFemaleContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_GenderPickerMaleContentDesc:I

    const-string v2, "Authentication_SignUp_Description_GenderPickerMaleContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_PasswordHintTextLong:I

    const-string v2, "Authentication_SignUp_Description_PasswordHintTextLong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_PasswordMinLength:I

    const-string v2, "Authentication_SignUp_Description_PasswordMinLength"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_SignUpPasswordConfirmContentDesc:I

    const-string v2, "Authentication_SignUp_Description_SignUpPasswordConfirmContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_SignUpPasswordContentDesc:I

    const-string v2, "Authentication_SignUp_Description_SignUpPasswordContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_SignUpUsernameContentDesc:I

    const-string v2, "Authentication_SignUp_Description_SignUpUsernameContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_SubmitButtonContentDesc:I

    const-string v2, "Authentication_SignUp_Description_SubmitButtonContentDesc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_Username:I

    const-string v2, "Authentication_SignUp_Description_Username"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 124
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_UsernameHint:I

    const-string v2, "Authentication_SignUp_Description_UsernameHint"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Description_UsernameHintTextLong:I

    const-string v2, "Authentication_SignUp_Description_UsernameHintTextLong"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Birthday:I

    const-string v2, "Authentication_SignUp_Label_Birthday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 127
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselAvatarText:I

    const-string v2, "Authentication_SignUp_Label_CarouselAvatarText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselAvatarTitle:I

    const-string v2, "Authentication_SignUp_Label_CarouselAvatarTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselChatText:I

    const-string v2, "Authentication_SignUp_Label_CarouselChatText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 130
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselChatTitle:I

    const-string v2, "Authentication_SignUp_Label_CarouselChatTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselGamesText:I

    const-string v2, "Authentication_SignUp_Label_CarouselGamesText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 132
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CarouselGamesTitle:I

    const-string v2, "Authentication_SignUp_Label_CarouselGamesTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_ConfirmPassword:I

    const-string v2, "Authentication_SignUp_Label_ConfirmPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 134
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date1:I

    const-string v2, "Authentication_SignUp_Label_Date1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date10:I

    const-string v2, "Authentication_SignUp_Label_Date10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date11:I

    const-string v2, "Authentication_SignUp_Label_Date11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date12:I

    const-string v2, "Authentication_SignUp_Label_Date12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date13:I

    const-string v2, "Authentication_SignUp_Label_Date13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 139
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date14:I

    const-string v2, "Authentication_SignUp_Label_Date14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 140
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date15:I

    const-string v2, "Authentication_SignUp_Label_Date15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date16:I

    const-string v2, "Authentication_SignUp_Label_Date16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date17:I

    const-string v2, "Authentication_SignUp_Label_Date17"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date18:I

    const-string v2, "Authentication_SignUp_Label_Date18"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 144
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date19:I

    const-string v2, "Authentication_SignUp_Label_Date19"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date2:I

    const-string v2, "Authentication_SignUp_Label_Date2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date20:I

    const-string v2, "Authentication_SignUp_Label_Date20"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date21:I

    const-string v2, "Authentication_SignUp_Label_Date21"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date22:I

    const-string v2, "Authentication_SignUp_Label_Date22"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date23:I

    const-string v2, "Authentication_SignUp_Label_Date23"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date24:I

    const-string v2, "Authentication_SignUp_Label_Date24"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date25:I

    const-string v2, "Authentication_SignUp_Label_Date25"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date26:I

    const-string v2, "Authentication_SignUp_Label_Date26"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date27:I

    const-string v2, "Authentication_SignUp_Label_Date27"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date28:I

    const-string v2, "Authentication_SignUp_Label_Date28"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date29:I

    const-string v2, "Authentication_SignUp_Label_Date29"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date3:I

    const-string v2, "Authentication_SignUp_Label_Date3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date30:I

    const-string v2, "Authentication_SignUp_Label_Date30"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date31:I

    const-string v2, "Authentication_SignUp_Label_Date31"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date4:I

    const-string v2, "Authentication_SignUp_Label_Date4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 160
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date5:I

    const-string v2, "Authentication_SignUp_Label_Date5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date6:I

    const-string v2, "Authentication_SignUp_Label_Date6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 162
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date7:I

    const-string v2, "Authentication_SignUp_Label_Date7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date8:I

    const-string v2, "Authentication_SignUp_Label_Date8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Date9:I

    const-string v2, "Authentication_SignUp_Label_Date9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Email:I

    const-string v2, "Authentication_SignUp_Label_Email"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_EmailRequirementsUnder13:I

    const-string v2, "Authentication_SignUp_Label_EmailRequirementsUnder13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 167
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Female:I

    const-string v2, "Authentication_SignUp_Label_Female"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_GenderRequired:I

    const-string v2, "Authentication_SignUp_Label_GenderRequired"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Male:I

    const-string v2, "Authentication_SignUp_Label_Male"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthApril:I

    const-string v2, "Authentication_SignUp_Label_MonthApril"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 171
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthAugust:I

    const-string v2, "Authentication_SignUp_Label_MonthAugust"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthDecember:I

    const-string v2, "Authentication_SignUp_Label_MonthDecember"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 173
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthFebruary:I

    const-string v2, "Authentication_SignUp_Label_MonthFebruary"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthJanuary:I

    const-string v2, "Authentication_SignUp_Label_MonthJanuary"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 175
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthJuly:I

    const-string v2, "Authentication_SignUp_Label_MonthJuly"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthJune:I

    const-string v2, "Authentication_SignUp_Label_MonthJune"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthMarch:I

    const-string v2, "Authentication_SignUp_Label_MonthMarch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthMay:I

    const-string v2, "Authentication_SignUp_Label_MonthMay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 179
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthNovember:I

    const-string v2, "Authentication_SignUp_Label_MonthNovember"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthOctober:I

    const-string v2, "Authentication_SignUp_Label_MonthOctober"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_MonthSeptember:I

    const-string v2, "Authentication_SignUp_Label_MonthSeptember"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_PleaseAgreeToTerms:I

    const-string v2, "Authentication_SignUp_Label_PleaseAgreeToTerms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_SignUp:I

    const-string v2, "Authentication_SignUp_Label_SignUp"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_SignUpWord:I

    const-string v2, "Authentication_SignUp_Label_SignUpWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_TOSAndPrivacy:I

    const-string v2, "Authentication_SignUp_Label_TOSAndPrivacy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_CreateAccount:I

    const-string v2, "Authentication_SignUp_Label_CreateAccount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_Next:I

    const-string v2, "Authentication_SignUp_Label_Next"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_PickUsername:I

    const-string v2, "Authentication_SignUp_Label_PickUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_ChoosePassword:I

    const-string v2, "Authentication_SignUp_Label_ChoosePassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 190
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_HaveAnAccountAlready:I

    const-string v2, "Authentication_SignUp_Label_HaveAnAccountAlready"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 191
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_LogInText:I

    const-string v2, "Authentication_SignUp_Label_LogInText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 192
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Label_WhensYourBirthday:I

    const-string v2, "Authentication_SignUp_Label_WhensYourBirthday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 193
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_BadServerResponseError:I

    const-string v2, "Authentication_SignUp_Response_BadServerResponseError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_BirthdayMustBeSetFirst:I

    const-string v2, "Authentication_SignUp_Response_BirthdayMustBeSetFirst"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_Error:I

    const-string v2, "Authentication_SignUp_Response_Error"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_ErrorTryAgain:I

    const-string v2, "Authentication_SignUp_Response_ErrorTryAgain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_InvalidBirthday:I

    const-string v2, "Authentication_SignUp_Response_InvalidBirthday"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 198
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_InvalidEmail:I

    const-string v2, "Authentication_SignUp_Response_InvalidEmail"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_LooksGreat:I

    const-string v2, "Authentication_SignUp_Response_LooksGreat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 200
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordComplexity:I

    const-string v2, "Authentication_SignUp_Response_PasswordComplexity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordForbidden:I

    const-string v2, "Authentication_SignUp_Response_PasswordForbidden"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordInvalidCharacters:I

    const-string v2, "Authentication_SignUp_Response_PasswordInvalidCharacters"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordMatchesUsername:I

    const-string v2, "Authentication_SignUp_Response_PasswordMatchesUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 204
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordMismatch:I

    const-string v2, "Authentication_SignUp_Response_PasswordMismatch"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordRequirements:I

    const-string v2, "Authentication_SignUp_Response_PasswordRequirements"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PasswordUnknownError:I

    const-string v2, "Authentication_SignUp_Response_PasswordUnknownError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PleaseEnterPassword:I

    const-string v2, "Authentication_SignUp_Response_PleaseEnterPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_PleaseEnterUsername:I

    const-string v2, "Authentication_SignUp_Response_PleaseEnterUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 209
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_RegisteringWord:I

    const-string v2, "Authentication_SignUp_Response_RegisteringWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_ServerError:I

    const-string v2, "Authentication_SignUp_Response_ServerError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_SignUpErrorGeneratingUsername:I

    const-string v2, "Authentication_SignUp_Response_SignUpErrorGeneratingUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_SignUpPasswordTooShortError:I

    const-string v2, "Authentication_SignUp_Response_SignUpPasswordTooShortError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater:I

    const-string v2, "Authentication_SignUp_Response_TooManyAccountsCreatedTryAgainLater"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UnexpectedErrorText:I

    const-string v2, "Authentication_SignUp_Response_UnexpectedErrorText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameAlreadyInUse:I

    const-string v2, "Authentication_SignUp_Response_UsernameAlreadyInUse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameCannotContainSpaces:I

    const-string v2, "Authentication_SignUp_Response_UsernameCannotContainSpaces"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameContainsInvalidCharacters:I

    const-string v2, "Authentication_SignUp_Response_UsernameContainsInvalidCharacters"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameExplicit:I

    const-string v2, "Authentication_SignUp_Response_UsernameExplicit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameInvalid:I

    const-string v2, "Authentication_SignUp_Response_UsernameInvalid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameInvalidCharacters:I

    const-string v2, "Authentication_SignUp_Response_UsernameInvalidCharacters"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter:I

    const-string v2, "Authentication_SignUp_Response_UsernameInvalidFirstOrLastCharacter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameInvalidLength:I

    const-string v2, "Authentication_SignUp_Response_UsernameInvalidLength"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernamePrivateInfo:I

    const-string v2, "Authentication_SignUp_Response_UsernamePrivateInfo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameTooManyUnderscores:I

    const-string v2, "Authentication_SignUp_Response_UsernameTooManyUnderscores"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_UsernameUnknownError:I

    const-string v2, "Authentication_SignUp_Response_UsernameUnknownError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Authentication_SignUp_Response_VerifyPassword:I

    const-string v2, "Authentication_SignUp_Response_VerifyPassword"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_ConnectionError:I

    const-string v2, "CommonUI_Features_Label_ConnectionError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_LoadingDot:I

    const-string v2, "CommonUI_Features_Label_LoadingDot"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 229
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Action_Done:I

    const-string v2, "CommonUI_Features_Action_Done"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Action_Go:I

    const-string v2, "CommonUI_Features_Action_Go"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Action_Ok:I

    const-string v2, "CommonUI_Features_Action_Ok"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 232
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Action_GetNow:I

    const-string v2, "CommonUI_Features_Action_GetNow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Description_Url:I

    const-string v2, "CommonUI_Features_Description_Url"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_GameDetails:I

    const-string v2, "CommonUI_Features_Heading_GameDetails"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 235
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_ReportAbuse:I

    const-string v2, "CommonUI_Features_Heading_ReportAbuse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 236
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_Roblox_NormalCase:I

    const-string v2, "CommonUI_Features_Heading_Roblox_NormalCase"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_VRWord:I

    const-string v2, "CommonUI_Features_Heading_VRWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 238
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_VisibleAgeOver13:I

    const-string v2, "CommonUI_Features_Heading_VisibleAgeOver13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 239
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Heading_VisibleAgeUnder13:I

    const-string v2, "CommonUI_Features_Heading_VisibleAgeUnder13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 240
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_About:I

    const-string v2, "CommonUI_Features_Label_About"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_AboutUs:I

    const-string v2, "CommonUI_Features_Label_AboutUs"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_AmazonAppStore:I

    const-string v2, "CommonUI_Features_Label_AmazonAppStore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Avatar:I

    const-string v2, "CommonUI_Features_Label_Avatar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Blog:I

    const-string v2, "CommonUI_Features_Label_Blog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_BuildersClub:I

    const-string v2, "CommonUI_Features_Label_BuildersClub"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Careers:I

    const-string v2, "CommonUI_Features_Label_Careers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Catalog:I

    const-string v2, "CommonUI_Features_Label_Catalog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Character:I

    const-string v2, "CommonUI_Features_Label_Character"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Chat:I

    const-string v2, "CommonUI_Features_Label_Chat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_CreateGames:I

    const-string v2, "CommonUI_Features_Label_CreateGames"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Events:I

    const-string v2, "CommonUI_Features_Label_Events"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Forum:I

    const-string v2, "CommonUI_Features_Label_Forum"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Friends:I

    const-string v2, "CommonUI_Features_Label_Friends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Game:I

    const-string v2, "CommonUI_Features_Label_Game"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_GooglePlayStore:I

    const-string v2, "CommonUI_Features_Label_GooglePlayStore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 256
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Groups:I

    const-string v2, "CommonUI_Features_Label_Groups"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Help:I

    const-string v2, "CommonUI_Features_Label_Help"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Home:I

    const-string v2, "CommonUI_Features_Label_Home"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Inventory:I

    const-string v2, "CommonUI_Features_Label_Inventory"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_SettingLanguage:I

    const-string v2, "CommonUI_Features_Label_SettingLanguage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_LegalText:I

    const-string v2, "CommonUI_Features_Label_LegalText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Messages:I

    const-string v2, "CommonUI_Features_Label_Messages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_More:I

    const-string v2, "CommonUI_Features_Label_More"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_MyFeed:I

    const-string v2, "CommonUI_Features_Label_MyFeed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_New:I

    const-string v2, "CommonUI_Features_Label_New"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Notifications:I

    const-string v2, "CommonUI_Features_Label_Notifications"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Parents:I

    const-string v2, "CommonUI_Features_Label_Parents"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 268
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Privacy:I

    const-string v2, "CommonUI_Features_Label_Privacy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_PrivacyPolicy:I

    const-string v2, "CommonUI_Features_Label_PrivacyPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 270
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Profile:I

    const-string v2, "CommonUI_Features_Label_Profile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_SearchGames:I

    const-string v2, "CommonUI_Features_Label_SearchGames"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 272
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Settings:I

    const-string v2, "CommonUI_Features_Label_Settings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 273
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Terms:I

    const-string v2, "CommonUI_Features_Label_Terms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 274
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_TermsOfUse:I

    const-string v2, "CommonUI_Features_Label_TermsOfUse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 275
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Trade:I

    const-string v2, "CommonUI_Features_Label_Trade"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_VRMode:I

    const-string v2, "CommonUI_Features_Label_VRMode"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_Version:I

    const-string v2, "CommonUI_Features_Label_Version"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Features_Label_ViewDetails:I

    const-string v2, "CommonUI_Features_Label_ViewDetails"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 279
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Action_Close:I

    const-string v2, "CommonUI_Messages_Action_Close"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 280
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Action_Validating:I

    const-string v2, "CommonUI_Messages_Action_Validating"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Label_Loading:I

    const-string v2, "CommonUI_Messages_Label_Loading"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Label_Password:I

    const-string v2, "CommonUI_Messages_Label_Password"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 283
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Label_Roblox:I

    const-string v2, "CommonUI_Messages_Label_Roblox"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 284
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Label_Working:I

    const-string v2, "CommonUI_Messages_Label_Working"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 285
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Label_Working_InProgress:I

    const-string v2, "CommonUI_Messages_Label_Working_InProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 286
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_99_Plus:I

    const-string v2, "CommonUI_Messages_Response_99_Plus"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 287
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_CheckingMessage:I

    const-string v2, "CommonUI_Messages_Response_CheckingMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 288
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_ClearAppAndRestart:I

    const-string v2, "CommonUI_Messages_Response_ClearAppAndRestart"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 289
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_ConnectionError:I

    const-string v2, "CommonUI_Messages_Response_ConnectionError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 290
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_InstallEmailClient:I

    const-string v2, "CommonUI_Messages_Response_InstallEmailClient"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 291
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_NoOpenLinkAppInstalled:I

    const-string v2, "CommonUI_Messages_Response_NoOpenLinkAppInstalled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_RequiresNEONInstructions:I

    const-string v2, "CommonUI_Messages_Response_RequiresNEONInstructions"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 293
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_RestartRequiredTitle:I

    const-string v2, "CommonUI_Messages_Response_RestartRequiredTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_RobloxSupport:I

    const-string v2, "CommonUI_Messages_Response_RobloxSupport"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_ServiceNotAvailable:I

    const-string v2, "CommonUI_Messages_Response_ServiceNotAvailable"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_SettingsSavedTitle:I

    const-string v2, "CommonUI_Messages_Response_SettingsSavedTitle"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_SystemErrorTryLater:I

    const-string v2, "CommonUI_Messages_Response_SystemErrorTryLater"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_TooManyAttemptsText:I

    const-string v2, "CommonUI_Messages_Response_TooManyAttemptsText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_UnexpectedErrorFormatted:I

    const-string v2, "CommonUI_Messages_Response_UnexpectedErrorFormatted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Messages_Response_UnsupportedDevice:I

    const-string v2, "CommonUI_Messages_Response_UnsupportedDevice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Controls_Action_Cancel:I

    const-string v2, "CommonUI_Controls_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 302
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Controls_Action_Retry:I

    const-string v2, "CommonUI_Controls_Action_Retry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 303
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->CommonUI_Controls_Action_Submit:I

    const-string v2, "CommonUI_Controls_Action_Submit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 304
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Deprecation_Notice_Message:I

    const-string v2, "Deprecation_Notice_Message"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Deprecation_Notice_Message_With_Date:I

    const-string v2, "Deprecation_Notice_Message_With_Date"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 306
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Deprecation_Notice_Ok:I

    const-string v2, "Deprecation_Notice_Ok"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 307
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Deprecation_Notice_Title:I

    const-string v2, "Deprecation_Notice_Title"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_ContactUpsell_PhoneNumber_Missing:I

    const-string v2, "Feature_ContactUpsell_PhoneNumber_Missing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Favorites_Label_Favorite:I

    const-string v2, "Feature_Favorites_Label_Favorite"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 310
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Favorites_Label_Favorited:I

    const-string v2, "Feature_Favorites_Label_Favorited"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 311
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameDetails_Label_Favorites:I

    const-string v2, "Feature_GameDetails_Label_Favorites"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 312
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_ActionCancel:I

    const-string v2, "Feature_GameFollows_ActionCancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 313
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_ActionLogin:I

    const-string v2, "Feature_GameFollows_ActionLogin"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_DescriptionLoginRequired:I

    const-string v2, "Feature_GameFollows_DescriptionLoginRequired"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_LabelFollow:I

    const-string v2, "Feature_GameFollows_LabelFollow"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_LabelFollowing:I

    const-string v2, "Feature_GameFollows_LabelFollowing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 317
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_LabelLoginRequired:I

    const-string v2, "Feature_GameFollows_LabelLoginRequired"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 318
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_TooltipFollowGame:I

    const-string v2, "Feature_GameFollows_TooltipFollowGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_TooltipFollowLimitReached:I

    const-string v2, "Feature_GameFollows_TooltipFollowLimitReached"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_GameFollows_TooltipUnfollowGame:I

    const-string v2, "Feature_GameFollows_TooltipUnfollowGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_SocialShare_Action_Share:I

    const-string v2, "Feature_SocialShare_Action_Share"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_Add:I

    const-string v2, "Features_FriendFinder_Action_Add"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 323
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_Add_Contacts:I

    const-string v2, "Features_FriendFinder_Action_Add_Contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_AppSettings:I

    const-string v2, "Features_FriendFinder_Action_AppSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_Continue:I

    const-string v2, "Features_FriendFinder_Action_Continue"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_Invite:I

    const-string v2, "Features_FriendFinder_Action_Invite"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 327
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Action_NeedContactsAccess:I

    const-string v2, "Features_FriendFinder_Action_NeedContactsAccess"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_Added:I

    const-string v2, "Features_FriendFinder_Label_Added"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_ContactsAlsoOnRoblox:I

    const-string v2, "Features_FriendFinder_Label_ContactsAlsoOnRoblox"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_EmptyContactsBook:I

    const-string v2, "Features_FriendFinder_Label_EmptyContactsBook"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_FetchingContacts:I

    const-string v2, "Features_FriendFinder_Label_FetchingContacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_Friends:I

    const-string v2, "Features_FriendFinder_Label_Friends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_Invited:I

    const-string v2, "Features_FriendFinder_Label_Invited"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_MutualFriends:I

    const-string v2, "Features_FriendFinder_Label_MutualFriends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_OtherContacts:I

    const-string v2, "Features_FriendFinder_Label_OtherContacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 336
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_Over13Feature:I

    const-string v2, "Features_FriendFinder_Label_Over13Feature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 337
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_Pending:I

    const-string v2, "Features_FriendFinder_Label_Pending"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 338
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_PermissionsFinePrintLink:I

    const-string v2, "Features_FriendFinder_Label_PermissionsFinePrintLink"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 339
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Label_SearchContacts:I

    const-string v2, "Features_FriendFinder_Label_SearchContacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Response_ContactPermissionNeeded:I

    const-string v2, "Features_FriendFinder_Response_ContactPermissionNeeded"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_FriendFinder_Response_NetworkError:I

    const-string v2, "Features_FriendFinder_Response_NetworkError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Action_NeedRecordAudioAccess:I

    const-string v2, "Features_Nearby_Action_NeedRecordAudioAccess"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Action_Retry:I

    const-string v2, "Features_Nearby_Action_Retry"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_Accept:I

    const-string v2, "Features_Nearby_Label_Accept"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_Empty:I

    const-string v2, "Features_Nearby_Label_Empty"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_Friend:I

    const-string v2, "Features_Nearby_Label_Friend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_FriendRequestsFailedFormatted:I

    const-string v2, "Features_Nearby_Label_FriendRequestsFailedFormatted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_FriendRequestsFloodChecked:I

    const-string v2, "Features_Nearby_Label_FriendRequestsFloodChecked"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_LooksLikeNoOneIsAround:I

    const-string v2, "Features_Nearby_Label_LooksLikeNoOneIsAround"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_NearbyInfoText:I

    const-string v2, "Features_Nearby_Label_NearbyInfoText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_Pending:I

    const-string v2, "Features_Nearby_Label_Pending"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 352
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_PleaseTryAgain:I

    const-string v2, "Features_Nearby_Label_PleaseTryAgain"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_PleaseTurnUpTheVolume:I

    const-string v2, "Features_Nearby_Label_PleaseTurnUpTheVolume"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_ViewProfile:I

    const-string v2, "Features_Nearby_Label_ViewProfile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_IntroText:I

    const-string v2, "Features_Nearby_Label_IntroText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_LearnMore:I

    const-string v2, "Features_Nearby_Label_LearnMore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_Nearby_Label_Start:I

    const-string v2, "Features_Nearby_Label_Start"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Action_SearchByUsername:I

    const-string v2, "Features_UniversalFriender_Action_SearchByUsername"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 359
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Action_SearchFriends:I

    const-string v2, "Features_UniversalFriender_Action_SearchFriends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Label_AddFriends:I

    const-string v2, "Features_UniversalFriender_Label_AddFriends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Label_Contacts:I

    const-string v2, "Features_UniversalFriender_Label_Contacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Label_Nearby:I

    const-string v2, "Features_UniversalFriender_Label_Nearby"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_UniversalFriender_Label_Requests:I

    const-string v2, "Features_UniversalFriender_Label_Requests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Description_ShareGame:I

    const-string v2, "Game_Launch_Description_ShareGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Label_EndingGame:I

    const-string v2, "Game_Launch_Label_EndingGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Label_LaunchGame:I

    const-string v2, "Game_Launch_Label_LaunchGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Label_RelaunchGame:I

    const-string v2, "Game_Launch_Label_RelaunchGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_ErrorJoiningGame:I

    const-string v2, "Game_Launch_Response_ErrorJoiningGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureDisabled:I

    const-string v2, "Game_Launch_Response_GameStartFailureDisabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureError:I

    const-string v2, "Game_Launch_Response_GameStartFailureError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureGameEnded:I

    const-string v2, "Game_Launch_Response_GameStartFailureGameEnded"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureGameFull:I

    const-string v2, "Game_Launch_Response_GameStartFailureGameFull"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureGameInProgress:I

    const-string v2, "Game_Launch_Response_GameStartFailureGameInProgress"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureJoinScript:I

    const-string v2, "Game_Launch_Response_GameStartFailureJoinScript"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureRestricted:I

    const-string v2, "Game_Launch_Response_GameStartFailureRestricted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureUnknown:I

    const-string v2, "Game_Launch_Response_GameStartFailureUnknown"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_GameStartFailureUserLeft:I

    const-string v2, "Game_Launch_Response_GameStartFailureUserLeft"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_NoOpenLinkAppInstalled:I

    const-string v2, "Game_Launch_Response_NoOpenLinkAppInstalled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_NoSharingAppInstalled:I

    const-string v2, "Game_Launch_Response_NoSharingAppInstalled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Game_Launch_Response_ShareGameError:I

    const-string v2, "Game_Launch_Response_ShareGameError"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Action_Cancel:I

    const-string v2, "Notifications_NotificationStream_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Action_ReportAbuse:I

    const-string v2, "Notifications_NotificationStream_Action_ReportAbuse"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Action_Undo:I

    const-string v2, "Notifications_NotificationStream_Action_Undo"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Action_UnfollowGame:I

    const-string v2, "Notifications_NotificationStream_Action_UnfollowGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Heading_BackToAllNotifications:I

    const-string v2, "Notifications_NotificationStream_Heading_BackToAllNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Heading_NotificationStreamWord:I

    const-string v2, "Notifications_NotificationStream_Heading_NotificationStreamWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 387
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Label_NotificationStreamCount:I

    const-string v2, "Notifications_NotificationStream_Label_NotificationStreamCount"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Message_AggregatedGameUpdateDouble:I

    const-string v2, "Notifications_NotificationStream_Message_AggregatedGameUpdateDouble"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Message_GameNotPlayableOnDevice:I

    const-string v2, "Notifications_NotificationStream_Message_GameNotPlayableOnDevice"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_NotificationStream_Message_UnfollowedGame:I

    const-string v2, "Notifications_NotificationStream_Message_UnfollowedGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 391
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Action_Accept:I

    const-string v2, "Notifications_PushNotifications_Action_Accept"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Action_Ignore:I

    const-string v2, "Notifications_PushNotifications_Action_Ignore"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Action_Reply:I

    const-string v2, "Notifications_PushNotifications_Action_Reply"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_DirectChatReplyMessageNotDelivered:I

    const-string v2, "Notifications_PushNotifications_Label_DirectChatReplyMessageNotDelivered"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 395
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_DirectChatReplyMsgModerated:I

    const-string v2, "Notifications_PushNotifications_Label_DirectChatReplyMsgModerated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 396
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_DirectChatReplySendingFailed:I

    const-string v2, "Notifications_PushNotifications_Label_DirectChatReplySendingFailed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 397
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_FriendRequestIgnored:I

    const-string v2, "Notifications_PushNotifications_Label_FriendRequestIgnored"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 398
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_MoreThanThreeFriendsAcceptedRequests:I

    const-string v2, "Notifications_PushNotifications_Label_MoreThanThreeFriendsAcceptedRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_MoreThanThreeFriendsSentRequests:I

    const-string v2, "Notifications_PushNotifications_Label_MoreThanThreeFriendsSentRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_NewPrivateMessages:I

    const-string v2, "Notifications_PushNotifications_Label_NewPrivateMessages"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 401
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_SentPrivateMessage:I

    const-string v2, "Notifications_PushNotifications_Label_SentPrivateMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_SingleFriendAcceptedRequest:I

    const-string v2, "Notifications_PushNotifications_Label_SingleFriendAcceptedRequest"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_ThreeFriendsAcceptedRequests:I

    const-string v2, "Notifications_PushNotifications_Label_ThreeFriendsAcceptedRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 404
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_ThreeFriendsSentRequests:I

    const-string v2, "Notifications_PushNotifications_Label_ThreeFriendsSentRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 405
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_TwoFriendsAcceptedRequests:I

    const-string v2, "Notifications_PushNotifications_Label_TwoFriendsAcceptedRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 406
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Label_TwoFriendsSentRequests:I

    const-string v2, "Notifications_PushNotifications_Label_TwoFriendsSentRequests"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Messages_SingleFriendSentRequest:I

    const-string v2, "Notifications_PushNotifications_Messages_SingleFriendSentRequest"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Response_UnableToRegisterForPushNotifications:I

    const-string v2, "Notifications_PushNotifications_Response_UnableToRegisterForPushNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 409
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Notifications_PushNotifications_Settings_ChannelNameGeneral:I

    const-string v2, "Notifications_PushNotifications_Settings_ChannelNameGeneral"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Label_Robux:I

    const-string v2, "Purchasing_RobloxProducts_Label_Robux"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Label_RobuxBalance:I

    const-string v2, "Purchasing_RobloxProducts_Label_RobuxBalance"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 412
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_BillingUnavailableTryLater:I

    const-string v2, "Purchasing_RobloxProducts_Response_BillingUnavailableTryLater"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 413
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PendingPurchaseWithUser:I

    const-string v2, "Purchasing_RobloxProducts_Response_PendingPurchaseWithUser"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseCancelled:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseCancelled"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 415
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseCancelledV2:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseCancelledV2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 416
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseInProcess:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseInProcess"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 417
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseIsEmulator:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseIsEmulator"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 418
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseIsEmulatorV2:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseIsEmulatorV2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 419
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseNotCompleted:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseNotCompleted"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 420
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseSetupGooglePlay"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 421
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseSuccessfulAndroid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 422
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseUpdateAndroidVersion:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseUpdateAndroidVersion"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 423
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseValidateLimit:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseValidateLimit"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchaseValidateLimitV2:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchaseValidateLimitV2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchasingLimitUnder13:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchasingLimitUnder13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Purchasing_RobloxProducts_Response_PurchasingInvalidPurchase:I

    const-string v2, "Purchasing_RobloxProducts_Response_PurchasingInvalidPurchase"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 427
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Search_GlobalSearch_Example_SearchCatalog:I

    const-string v2, "Search_GlobalSearch_Example_SearchCatalog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Search_GlobalSearch_Example_SearchGames:I

    const-string v2, "Search_GlobalSearch_Example_SearchGames"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Search_GlobalSearch_Example_SearchGroups:I

    const-string v2, "Search_GlobalSearch_Example_SearchGroups"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Search_GlobalSearch_Example_SearchPlayers:I

    const-string v2, "Search_GlobalSearch_Example_SearchPlayers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Search_GlobalSearch_Label_SearchWord:I

    const-string v2, "Search_GlobalSearch_Label_SearchWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Action_Add:I

    const-string v2, "Feature_Chat_Action_Add"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 433
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Action_Cancel:I

    const-string v2, "Feature_Chat_Action_Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Action_Leave:I

    const-string v2, "Feature_Chat_Action_Leave"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 435
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Action_Remove:I

    const-string v2, "Feature_Chat_Action_Remove"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 436
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Action_Report:I

    const-string v2, "Feature_Chat_Action_Report"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Description_NameGroupChat:I

    const-string v2, "Feature_Chat_Description_NameGroupChat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Description_SearchWordSmall:I

    const-string v2, "Feature_Chat_Description_SearchWordSmall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Description_SendMessageSmall:I

    const-string v2, "Feature_Chat_Description_SendMessageSmall"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_AddFriends:I

    const-string v2, "Feature_Chat_Heading_AddFriends"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_Conversation:I

    const-string v2, "Feature_Chat_Heading_Conversation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_CreateGroup:I

    const-string v2, "Feature_Chat_Heading_CreateGroup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_LeaveGroup:I

    const-string v2, "Feature_Chat_Heading_LeaveGroup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_RenameChatGroup:I

    const-string v2, "Feature_Chat_Heading_RenameChatGroup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_ViewParticipants:I

    const-string v2, "Feature_Chat_Heading_ViewParticipants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Heading_ViewProfile:I

    const-string v2, "Feature_Chat_Heading_ViewProfile"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_ConnectingBannerText:I

    const-string v2, "Feature_Chat_Label_ConnectingBannerText"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Create:I

    const-string v2, "Feature_Chat_Label_Create"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_CreateChatGroup:I

    const-string v2, "Feature_Chat_Label_CreateChatGroup"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_GroupChatParticipants:I

    const-string v2, "Feature_Chat_Label_GroupChatParticipants"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_InGame:I

    const-string v2, "Feature_Chat_Label_InGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_InStudio:I

    const-string v2, "Feature_Chat_Label_InStudio"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_JoinGame:I

    const-string v2, "Feature_Chat_Label_JoinGame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_MakeFriendsChat:I

    const-string v2, "Feature_Chat_Label_MakeFriendsChat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Message:I

    const-string v2, "Feature_Chat_Label_Message"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_NewChats:I

    const-string v2, "Feature_Chat_Label_NewChats"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Offline:I

    const-string v2, "Feature_Chat_Label_Offline"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Online:I

    const-string v2, "Feature_Chat_Label_Online"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Playing:I

    const-string v2, "Feature_Chat_Label_Playing"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_PrivacySettings:I

    const-string v2, "Feature_Chat_Label_PrivacySettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_SearchWord:I

    const-string v2, "Feature_Chat_Label_SearchWord"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_Send:I

    const-string v2, "Feature_Chat_Label_Send"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Label_TurnOnChatInSettings:I

    const-string v2, "Feature_Chat_Label_TurnOnChatInSettings"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatMsgContentModerated:I

    const-string v2, "Feature_Chat_Response_ChatMsgContentModerated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatMsgSendFailed:I

    const-string v2, "Feature_Chat_Response_ChatMsgSendFailed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatNameFullyModerated:I

    const-string v2, "Feature_Chat_Response_ChatNameFullyModerated"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatNameUpdateFailed:I

    const-string v2, "Feature_Chat_Response_ChatNameUpdateFailed"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatSysMsgTitleChanged:I

    const-string v2, "Feature_Chat_Response_ChatSysMsgTitleChanged"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ChatSysMsgTitleChangedNoUser:I

    const-string v2, "Feature_Chat_Response_ChatSysMsgTitleChangedNoUser"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ConversationFriendLimitReached:I

    const-string v2, "Feature_Chat_Response_ConversationFriendLimitReached"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ConversationNotFound:I

    const-string v2, "Feature_Chat_Response_ConversationNotFound"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_CopiedToClipboard:I

    const-string v2, "Feature_Chat_Response_CopiedToClipboard"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_FriendAlreadyInConversation:I

    const-string v2, "Feature_Chat_Response_FriendAlreadyInConversation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_LeaveConversation:I

    const-string v2, "Feature_Chat_Response_LeaveConversation"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_NoLongerParticipatingInChat:I

    const-string v2, "Feature_Chat_Response_NoLongerParticipatingInChat"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_NotEveryoneCanSeeMessage:I

    const-string v2, "Feature_Chat_Response_NotEveryoneCanSeeMessage"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_RemoveUser:I

    const-string v2, "Feature_Chat_Response_RemoveUser"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_ReportUser:I

    const-string v2, "Feature_Chat_Response_ReportUser"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_SelectContact:I

    const-string v2, "Feature_Chat_Response_SelectContact"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_Sending:I

    const-string v2, "Feature_Chat_Response_Sending"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_TypeMessageToSend:I

    const-string v2, "Feature_Chat_Response_TypeMessageToSend"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Feature_Chat_Response_WaitingForConnection:I

    const-string v2, "Feature_Chat_Response_WaitingForConnection"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_WhatsNext:I

    const-string v2, "Features_ChooseAdv_Label_WhatsNext"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_ImNearSomeone:I

    const-string v2, "Features_ChooseAdv_Label_ImNearSomeone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_FindNearbyUsers:I

    const-string v2, "Features_ChooseAdv_Label_FindNearbyUsers"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_RequiresMicrophone:I

    const-string v2, "Features_ChooseAdv_Label_RequiresMicrophone"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_KnowSomeoneOnRoblox:I

    const-string v2, "Features_ChooseAdv_Label_KnowSomeoneOnRoblox"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_LookThroughYourContacts:I

    const-string v2, "Features_ChooseAdv_Label_LookThroughYourContacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_RequiresContacts:I

    const-string v2, "Features_ChooseAdv_Label_RequiresContacts"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_CustomizeAvatar:I

    const-string v2, "Features_ChooseAdv_Label_CustomizeAvatar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 491
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_AwesomeAvatar:I

    const-string v2, "Features_ChooseAdv_Label_AwesomeAvatar"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 492
    sget-object v0, Lcom/roblox/c/b;->a:Landroid/util/SparseArray;

    sget v1, Lcom/roblox/c/a$a;->Features_ChooseAdv_Label_ShowMeTheGames:I

    const-string v2, "Features_ChooseAdv_Label_ShowMeTheGames"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
