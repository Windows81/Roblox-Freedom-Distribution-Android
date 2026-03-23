.class public Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private actionType:Ljava/lang/String;

.field private ticket:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;->username:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;->ticket:Ljava/lang/String;

    .line 11
    iput-object p3, p0, Lcom/roblox/client/http/post/AuthTwoStepVerificationResendCodeRequestBody;->actionType:Ljava/lang/String;

    return-void
.end method
