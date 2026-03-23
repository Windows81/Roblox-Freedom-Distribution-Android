.class public Lcom/roblox/abtesting/models/AddEmailToSignupForNewUsers;
.super Lcom/roblox/abtesting/models/ABTest;
.source "SourceFile"


# static fields
.field public static final TEST_NAME:Ljava/lang/String; = "NewUsers.SignUpPage.AddEmailToSignup"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "NewUsers.SignUpPage.AddEmailToSignup"

    sget-object v1, Lcom/roblox/abtesting/models/ABTest$SubjectTypes;->BROWSER_TRACKER_ID:Lcom/roblox/abtesting/models/ABTest$SubjectTypes;

    invoke-direct {p0, v0, v1}, Lcom/roblox/abtesting/models/ABTest;-><init>(Ljava/lang/String;Lcom/roblox/abtesting/models/ABTest$SubjectTypes;)V

    .line 13
    return-void
.end method
