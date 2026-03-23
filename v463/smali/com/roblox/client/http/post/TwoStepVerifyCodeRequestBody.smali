.class public Lcom/roblox/client/http/post/TwoStepVerifyCodeRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private identificationCode:Ljava/lang/String;

.field private rememberDevice:Z

.field private tl:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/roblox/client/http/post/TwoStepVerifyCodeRequestBody;->username:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/roblox/client/http/post/TwoStepVerifyCodeRequestBody;->tl:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/roblox/client/http/post/TwoStepVerifyCodeRequestBody;->identificationCode:Ljava/lang/String;

    .line 18
    iput-boolean p4, p0, Lcom/roblox/client/http/post/TwoStepVerifyCodeRequestBody;->rememberDevice:Z

    return-void
.end method
