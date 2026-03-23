.class public Lcom/roblox/client/http/post/TwoStepVerificationResendCodeRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private tl:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/roblox/client/http/post/TwoStepVerificationResendCodeRequestBody;->username:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/roblox/client/http/post/TwoStepVerificationResendCodeRequestBody;->tl:Ljava/lang/String;

    return-void
.end method
