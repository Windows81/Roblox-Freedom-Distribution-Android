.class public Lcom/roblox/client/http/post/SignUpRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/http/post/GsonCompatibleRequestBody;


# instance fields
.field private birthday:Ljava/lang/String;

.field private captchaProvider:Ljava/lang/String;

.field private captchaToken:Ljava/lang/String;

.field private deviceHandle:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->username:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->password:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->gender:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->birthday:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->email:Ljava/lang/String;

    .line 25
    iput-object p6, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->captchaToken:Ljava/lang/String;

    .line 26
    iput-object p7, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->captchaProvider:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setDeviceHandle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/roblox/client/http/post/SignUpRequestBody;->deviceHandle:Ljava/lang/String;

    return-void
.end method
