.class public Lcom/roblox/abtesting/models/AddEmailToSignupForNewUsers;
.super Lcom/roblox/abtesting/models/ABTest;
.source "SourceFile"


# static fields
.field public static final TEST_NAME:Ljava/lang/String; = "NewUsers.SignUpPage.AddEmailToSignup"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    sget-object v0, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    const-string v1, "NewUsers.SignUpPage.AddEmailToSignup"

    invoke-direct {p0, v1, v0}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    return-void
.end method
