.class public Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private actionType:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private rememberDevice:Z

.field private ticket:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;->username:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;->ticket:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;->code:Ljava/lang/String;

    .line 14
    iput-boolean p4, p0, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;->rememberDevice:Z

    .line 15
    iput-object p5, p0, Lcom/roblox/client/http/post/AuthTwoStepVerifyCodeRequestBody;->actionType:Ljava/lang/String;

    return-void
.end method
