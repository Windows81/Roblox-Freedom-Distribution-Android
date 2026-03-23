.class public Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/platform/http/postbody/PostBody;


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final accessTokenExpiry:I

.field private final openId:Ljava/lang/String;

.field private final refreshToken:Ljava/lang/String;

.field private final refreshTokenExpiry:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;->openId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;->accessToken:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;->refreshToken:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;->accessTokenExpiry:I

    .line 17
    iput p5, p0, Lcom/roblox/platform/http/postbody/wechat/AuthenticateTokenPostBody;->refreshTokenExpiry:I

    return-void
.end method
